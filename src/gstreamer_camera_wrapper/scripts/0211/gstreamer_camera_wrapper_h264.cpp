#include <ros/ros.h>
#include <sensor_msgs/CompressedImage.h>
#include <sensor_msgs/CameraInfo.h>
#include <yaml-cpp/yaml.h>
#include <gst/gst.h>
#include <gst/app/gstappsink.h>
#include <thread>
#include <atomic>
#include <vector>
#include <string>
#include <cstring>
#include <memory>
#include <filesystem>
#include <chrono>

namespace fs = std::filesystem;

static sensor_msgs::CameraInfo loadCameraInfo(const std::string& yaml_file) {
    sensor_msgs::CameraInfo ci;
    // (YAML 파싱 로직 필요시 추가)
    return ci;
}

class ShmWorker {
public:
    ShmWorker(int index,
              const std::string& socket_path,
              const sensor_msgs::CameraInfo& cam_info,
              ros::NodeHandle& nh)
        : index_(index),
          socket_path_(socket_path),
          running_(false),
          cam_info_(cam_info),
          time_synced_(false),
          base_gst_pts_(0)
    {
        img_pub_ = nh.advertise<sensor_msgs::CompressedImage>(
            "/camera_" + std::to_string(index_) + "/image_raw/h264", 1);

        info_pub_ = nh.advertise<sensor_msgs::CameraInfo>(
            "/camera_" + std::to_string(index_) + "/camera_info", 1);
    }

    ~ShmWorker() { stop(); }

    bool start() {
        if (running_) return true;

        // 소켓 대기
        ros::Rate wait_rate(5);
        int wait_count = 0;
        while (ros::ok() && !fs::exists(socket_path_) && wait_count < 100) {
            wait_rate.sleep();
            wait_count++;
            if (wait_count % 10 == 0) ROS_WARN("[cam%d] Waiting for socket...", index_);
        }

        if (!fs::exists(socket_path_)) {
            ROS_ERROR("[cam%d] Timeout! Socket not found.", index_);
            return false;
        }

        // [파이프라인]
        const std::string pipeline =
            "shmsrc socket-path=" + socket_path_ + " is-live=true ! "
            "h264parse ! "
            "video/x-h264,stream-format=byte-stream,alignment=au ! "
            "appsink name=appsink emit-signals=false sync=false max-buffers=1 drop=true";

        GError* err = nullptr;
        pipeline_ = gst_parse_launch(pipeline.c_str(), &err);
        if (!pipeline_) {
            ROS_ERROR("[cam%d] Gst Error: %s", index_, err->message);
            return false;
        }

        GstElement* sink = gst_bin_get_by_name(GST_BIN(pipeline_), "appsink");
        appsink_ = GST_APP_SINK(sink);

        gst_app_sink_set_max_buffers(appsink_, 1);
        gst_app_sink_set_drop(appsink_, TRUE);
        gst_app_sink_set_emit_signals(appsink_, FALSE);

        gst_element_set_state(pipeline_, GST_STATE_PLAYING);

        running_ = true;
        th_ = std::thread(&ShmWorker::loop, this);
        ROS_INFO("[cam%d] SHM Started (Hardware Sync Mode)", index_);
        return true;
    }

    void stop() {
        if (!running_) return;
        running_ = false;
        if (th_.joinable()) th_.join();
        if (pipeline_) gst_element_set_state(pipeline_, GST_STATE_NULL);
        if (appsink_) gst_object_unref(GST_OBJECT(appsink_));
        if (pipeline_) gst_object_unref(GST_OBJECT(pipeline_));
    }

private:
    void loop() {
        const guint64 timeout_ns = 100000000ULL; 

        while (running_ && ros::ok()) {
            GstSample* sample = gst_app_sink_try_pull_sample(appsink_, timeout_ns);
            if (!sample) continue;

            GstBuffer* buffer = gst_sample_get_buffer(sample);
            if (!buffer) { gst_sample_unref(sample); continue; }

            // [정석 타임스탬프 동기화: Base + Diff]
            // 하드웨어 싱크 덕분에 PTS 간격이 정확히 33ms로 들어옵니다.
            guint64 current_pts = GST_BUFFER_PTS(buffer);
            ros::Time stamp;

            if (GST_CLOCK_TIME_IS_VALID(current_pts)) {
                if (!time_synced_) {
                    base_ros_time_ = ros::Time::now();
                    base_gst_pts_ = current_pts;
                    time_synced_ = true;
                    stamp = base_ros_time_;
                } else {
                    // 기준점으로부터 흐른 시간(Diff)을 그대로 적용
                    guint64 diff_ns = current_pts - base_gst_pts_;
                    stamp = base_ros_time_ + ros::Duration(diff_ns / 1e9);
                }
            } else {
                stamp = ros::Time::now();
            }

            GstMapInfo map;
            gst_buffer_map(buffer, &map, GST_MAP_READ);

            sensor_msgs::CompressedImage msg;
            msg.header.stamp = stamp;
            msg.header.frame_id = "camera_" + std::to_string(index_) + "_frame";
            msg.format = "h264";
            msg.data.resize(map.size);
            std::memcpy(msg.data.data(), map.data, map.size);

            gst_buffer_unmap(buffer, &map);
            gst_sample_unref(sample);

            img_pub_.publish(msg);

            sensor_msgs::CameraInfo ci = cam_info_;
            ci.header.stamp = stamp;
            ci.header.frame_id = msg.header.frame_id;
            info_pub_.publish(ci);
        }
    }

private:
    int index_;
    std::string socket_path_;
    std::atomic<bool> running_;
    std::thread th_;
    ros::Publisher img_pub_;
    ros::Publisher info_pub_;
    sensor_msgs::CameraInfo cam_info_;
    GstElement* pipeline_{nullptr};
    GstAppSink* appsink_{nullptr};
    bool time_synced_;
    ros::Time base_ros_time_;
    guint64 base_gst_pts_;
};

int main(int argc, char** argv) {
    ros::init(argc, argv, "gst_shm_wrapper_final");
    ros::NodeHandle nh("~");
    gst_init(&argc, &argv);

    int num_cams = 6;
    nh.param("num_cams", num_cams, num_cams);

    std::vector<std::unique_ptr<ShmWorker>> workers;
    workers.reserve(num_cams);

    ROS_INFO("=== Final Wrapper Started (Hardware 30Hz) ===");

    for (int i = 0; i < num_cams; ++i) {
        sensor_msgs::CameraInfo ci; 
        ci.width = 1920; ci.height = 1200;
        std::string socket_path = "/tmp/cam" + std::to_string(i);
        
        workers.emplace_back(new ShmWorker(i, socket_path, ci, nh));
        workers.back()->start();
    }

    ros::AsyncSpinner spinner(6); 
    spinner.start();
    ros::waitForShutdown();

    for (auto& w : workers) w->stop();
    return 0;
}
