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
#include <filesystem> // 파일 확인용
#include <chrono>     // 시간 대기용

namespace fs = std::filesystem;

static sensor_msgs::CameraInfo loadCameraInfo(const std::string& yaml_file) {
  // (기존 코드 유지)
  // 임시로 빈값 리턴 (실제 사용시 YAML 로드 코드 복구)
  sensor_msgs::CameraInfo ci;
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
      cam_info_(cam_info)
  {
    img_pub_ = nh.advertise<sensor_msgs::CompressedImage>(
      "/camera_" + std::to_string(index_) + "/image_raw/h264", 1);

    info_pub_ = nh.advertise<sensor_msgs::CameraInfo>(
      "/camera_" + std::to_string(index_) + "/camera_info", 1);
  }

  ~ShmWorker() { stop(); }

  // [수정] 소켓 파일이 생성될 때까지 대기하는 함수
  bool waitForSocket(int timeout_sec = 30) {
    ROS_INFO("[cam%d] Waiting for socket file: %s ...", index_, socket_path_.c_str());
    int waited = 0;
    while (waited < timeout_sec * 10 && ros::ok()) { // 0.1초 단위 확인
      if (fs::exists(socket_path_)) {
        // 파일이 생겨도 쓰기 권한 등이 안정화될 때까지 아주 살짝 대기
        std::this_thread::sleep_for(std::chrono::milliseconds(200)); 
        return true;
      }
      std::this_thread::sleep_for(std::chrono::milliseconds(100));
      waited++;
    }
    ROS_ERROR("[cam%d] Timeout waiting for socket file!", index_);
    return false;
  }

  bool start() {
    if (running_) return true;

    // [핵심] Python이 소켓을 만들 때까지 기다림 (순서 문제 해결)
    if (!waitForSocket()) return false;

    const std::string pipeline =
      "shmsrc socket-path=" + socket_path_ + " is-live=true do-timestamp=true ! "
      "h264parse ! "
      "video/x-h264,stream-format=byte-stream,alignment=au ! "
      "appsink name=appsink emit-signals=false sync=false max-buffers=1 drop=true";

    GError* err = nullptr;
    pipeline_ = gst_parse_launch(pipeline.c_str(), &err);
    if (!pipeline_) {
      ROS_ERROR("[cam%d] gst_parse_launch failed: %s", index_, err ? err->message : "unknown");
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
      ROS_ERROR("[cam%d] failed to set pipeline PLAYING", index_);
      cleanup();
      return false;
    }

    running_ = true;
    th_ = std::thread(&ShmWorker::loop, this);
    ROS_INFO("[cam%d] SHM Link Established!", index_);
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

      ros::Time stamp = ros::Time::now();

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
};

int main(int argc, char** argv) {
  ros::init(argc, argv, "gst_shm_wrapper_pro");
  ros::NodeHandle nh("~");

  gst_init(&argc, &argv);

  int num_cams = 6; // 기본값 6으로 변경 (Launch 파일과 일치 권장)
  nh.param("num_cams", num_cams, num_cams);

  std::vector<std::unique_ptr<ShmWorker>> workers;
  workers.reserve(num_cams);

  // [수정] 스피너를 먼저 시작해서 콜백 큐를 활성화 (선택 사항이지만 안전함)
  ros::AsyncSpinner spinner(6); // 카메라 개수만큼 스레드 확보
  spinner.start();

  for (int i = 0; i < num_cams; ++i) {
    sensor_msgs::CameraInfo ci; 
    ci.width = 1920; ci.height = 1200;

    std::string socket_path = "/tmp/cam" + std::to_string(i);
    
    // 워커 생성
    workers.emplace_back(new ShmWorker(i, socket_path, ci, nh));
    
    // 비동기 시작 (start 내부에서 대기하므로 순차적으로 실행해도 됨)
    // 여기서 start를 호출하면 해당 소켓이 생길 때까지 Block 될 수 있으니 주의.
    // 하지만 AsyncSpinner가 돌고 있으므로 ROS 통신은 안 막힘.
    // 여기서는 Thread를 하나 더 쓰거나, 그냥 순차적으로 기다리게 함.
    // Python이 1초 간격으로 켜므로 C++도 따라가게 둠.
    workers.back()->start(); 
  }

  ROS_INFO("All SHM Workers Started and Waiting...");
  
  ros::waitForShutdown();

  for (auto& w : workers) w->stop();
  return 0;
}
