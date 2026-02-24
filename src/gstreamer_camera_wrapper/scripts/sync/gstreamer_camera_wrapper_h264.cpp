#include <ros/ros.h>
#include <sensor_msgs/CompressedImage.h>
#include <sensor_msgs/CameraInfo.h>
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

class ShmWorker {
public:
    ShmWorker(int index,
              const std::string& socket_path,
              ros::NodeHandle& nh)
        : index_(index),
          socket_path_(socket_path),
          running_(false),
          time_synced_(false),
          base_gst_pts_(0)
    {
        img_pub_ = nh.advertise<sensor_msgs::CompressedImage>(
            "/camera_" + std::to_string(index_) + "/image_raw/h264", 1);
        info_pub_ = nh.advertise<sensor_msgs::CameraInfo>(
            "/camera_" + std::to_string(index_) + "/camera_info", 1);
        
        // Camera Info 임시 설정
        cam_info_.width = 1920;
        cam_info_.height = 1200;
    }

    ~ShmWorker() { stop(); }

    bool start() {
        if (running_) return true;

        ros::Rate wait_rate(5);
        int wait_count = 0;
        int max_wait = 100; 

        ROS_INFO("[cam%d] Waiting for socket file: %s ...", index_, socket_path_.c_str());

        // 소켓 파일 생성 대기
        while (ros::ok() && !fs::exists(socket_path_) && wait_count < max_wait) {
            wait_rate.sleep();
            wait_count++;
            if (wait_count % 10 == 0) ROS_WARN("[cam%d] Still waiting...", index_);
        }

        if (!fs::exists(socket_path_)) {
            ROS_ERROR("[cam%d] Timeout! Socket not found.", index_);
            return false;
        }

        // [수정된 파이프라인]
        // 1. Caps: video/x-h264, stream-format=byte-stream 만 명시 (alignment 제거)
        // 2. h264parse 추가: appsink로 넘어가기 전 데이터를 정리해줌 (안전장치)
        const std::string pipeline =
            "shmsrc socket-path=" + socket_path_ + " is-live=true do-timestamp=true ! "
            "video/x-h264,stream-format=byte-stream ! "
            "h264parse ! "
            "appsink name=appsink emit-signals=false sync=false max-buffers=1 drop=true";

        GError* err = nullptr;
        pipeline_ = gst_parse_launch(pipeline.c_str(), &err);
        if (!pipeline_) {
            ROS_ERROR("[cam%d] Pipeline creation failed: %s", index_, err ? err->message : "unknown");
            if (err) g_error_free(err);
            return false;
        }

        GstElement* sink = gst_bin_get_by_name(GST_BIN(pipeline_), "appsink");
        if (!sink) {
            ROS_ERROR("[cam%d] appsink not found", index_);
            return false;
        }
        appsink_ = GST_APP_SINK(sink);

        gst_app_sink_set_max_buffers(appsink_, 1);
        gst_app_sink_set_drop(appsink_, TRUE);
        gst_app_sink_set_emit_signals(appsink_, FALSE);

        GstStateChangeReturn ret = gst_element_set_state(pipeline_, GST_STATE_PLAYING);
        if (ret == GST_STATE_CHANGE_FAILURE) {
            ROS_ERROR("[cam%d] Pipeline failed to play (Check socket permissions or Caps)", index_);
            cleanup();
            return false;
        }

        running_ = true;
        th_ = std::thread(&ShmWorker::loop, this);
        ROS_INFO("[cam%d] SHM Started (Robust Link)", index_);
        return true;
    }

    void stop() {
        if (!running_) return;
        running_ = false;
        if (th_.joinable()) th_.join();
        cleanup();
    }

private:
    void loop() {
        const guint64 timeout_ns = 100000000ULL; 

        while (running_ && ros::ok()) {
            GstSample* sample = gst_app_sink_try_pull_sample(appsink_, timeout_ns);
            if (!sample) continue;

            GstBuffer* buffer = gst_sample_get_buffer(sample);
            if (!buffer) {
                gst_sample_unref(sample);
                continue;
            }

            guint64 current_pts = GST_BUFFER_PTS(buffer);
            ros::Time stamp;

            if (GST_CLOCK_TIME_IS_VALID(current_pts)) {
                if (!time_synced_) {
                    base_ros_time_ = ros::Time::now();
                    base_gst_pts_ = current_pts;
                    time_synced_ = true;
                    stamp = base_ros_time_;
                } else {
                    guint64 diff_ns = current_pts - base_gst_pts_;
                    stamp = base_ros_time_ + ros::Duration(diff_ns / 1e9);
                }
            } else {
                stamp = ros::Time::now();
            }

            GstMapInfo map;
            if (!gst_buffer_map(buffer, &map, GST_MAP_READ)) {
                gst_sample_unref(sample);
                continue;
            }

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

    void cleanup() {
        if (pipeline_) gst_element_set_state(pipeline_, GST_STATE_NULL);
        if (appsink_) gst_object_unref(GST_OBJECT(appsink_));
        if (pipeline_) gst_object_unref(GST_OBJECT(pipeline_));
        pipeline_ = nullptr;
        appsink_ = nullptr;
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
    ros::init(argc, argv, "gst_shm_wrapper_pro");
    ros::NodeHandle nh("~");
    gst_init(&argc, &argv);

    int num_cams = 6;
    nh.param("num_cams", num_cams, num_cams);

    std::vector<std::unique_ptr<ShmWorker>> workers;
    workers.reserve(num_cams);

    ROS_INFO("Node Started (SHM Mode).");

    for (int i = 0; i < num_cams; ++i) {
        std::string socket_path = "/tmp/cam" + std::to_string(i);
        workers.emplace_back(new ShmWorker(i, socket_path, nh));
        
        // 스레드 시작 (소켓 파일 대기)
        if (!workers.back()->start()) {
            ROS_ERROR("Failed to start cam %d", i);
        }
        
        // 순차적 초기화를 위해 C++ 측에서도 약간의 딜레이
        std::this_thread::sleep_for(std::chrono::milliseconds(200));
    }

    ros::AsyncSpinner spinner(6); 
    spinner.start();
    ros::waitForShutdown();

    for (auto& w : workers) w->stop();
    return 0;
}
