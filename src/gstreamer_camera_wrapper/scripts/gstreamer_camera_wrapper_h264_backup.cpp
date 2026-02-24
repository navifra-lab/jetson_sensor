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

static sensor_msgs::CameraInfo loadCameraInfo(const std::string& yaml_file) {
  YAML::Node calib = YAML::LoadFile(yaml_file);

  sensor_msgs::CameraInfo ci;
  ci.width  = calib["image_width"].as<int>();
  ci.height = calib["image_height"].as<int>();
  ci.distortion_model = calib["distortion_model"].as<std::string>();

  auto K = calib["camera_matrix"]["data"];
  auto D = calib["distortion_coefficients"]["data"];
  auto R = calib["rectification_matrix"]["data"];
  auto P = calib["projection_matrix"]["data"];

  // ROS1 CameraInfo: K/R/P are boost::array (fixed size), no resize()
  for (int i = 0; i < 9; ++i)  ci.K[i] = K[i].as<double>();
  ci.D.resize(D.size());
  for (size_t i = 0; i < D.size(); ++i) ci.D[i] = D[i].as<double>();
  for (int i = 0; i < 9; ++i)  ci.R[i] = R[i].as<double>();
  for (int i = 0; i < 12; ++i) ci.P[i] = P[i].as<double>();

  return ci;
}

class H264Worker {
public:
  H264Worker(int index,
             int port,
             int latency_ms,
             const sensor_msgs::CameraInfo& cam_info,
             ros::NodeHandle& nh)
    : index_(index),
      port_(port),
      latency_ms_(latency_ms),
      running_(false),
      cam_info_(cam_info),
      first_pts_ns_(-1),
      first_ros_ns_(0)
  {
    img_pub_ = nh.advertise<sensor_msgs::CompressedImage>(
      "/camera_" + std::to_string(index_) + "/image_raw/h264", 1);

    info_pub_ = nh.advertise<sensor_msgs::CameraInfo>(
      "/camera_" + std::to_string(index_) + "/camera_info", 1);
  }

  ~H264Worker() { stop(); }

  bool start() {
    if (running_) return true;

    const std::string pipeline =
      "udpsrc port=" + std::to_string(port_) + " buffer-size=20971520 "
      "caps=application/x-rtp,media=video,encoding-name=H264,payload=96 ! "
      "rtpjitterbuffer latency=0 drop-on-late=true mode=0 ! "
      "rtph264depay ! "
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
      ROS_ERROR("[cam%d] appsink not found in pipeline", index_);
      gst_object_unref(GST_OBJECT(pipeline_));
      pipeline_ = nullptr;
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
    th_ = std::thread(&H264Worker::loop, this);
    ROS_INFO("[cam%d] started (port=%d, latency_ms=%d)", index_, port_, latency_ms_);
    return true;
  }

  void stop() {
    if (!running_) return;
    running_ = false;
    if (th_.joinable()) th_.join();
    cleanup();
  }

private:
  ros::Time stampFromPts(GstClockTime pts) {
    if (pts == GST_CLOCK_TIME_NONE) {
      // pts가 없으면 차선책(권장하진 않음)
      return ros::Time::now();
    }

    const int64_t pts_ns = static_cast<int64_t>(pts);

    if (first_pts_ns_ < 0) {
      first_pts_ns_ = pts_ns;
      first_ros_ns_ = ros::Time::now().toNSec();
    }

    const int64_t delta_ns = pts_ns - first_pts_ns_;
    const uint64_t ros_ns  = static_cast<uint64_t>(
      static_cast<int64_t>(first_ros_ns_) + delta_ns
    );

    ros::Time t;
    t.fromNSec(ros_ns);
    return t;
  }

  void loop() {
    const guint64 timeout_ns = 200000000ULL; // 200ms

    while (running_ && ros::ok()) {
      GstSample* sample = gst_app_sink_try_pull_sample(appsink_, timeout_ns);
      if (!sample) continue;

      GstBuffer* buffer = gst_sample_get_buffer(sample);
      if (!buffer) {
        gst_sample_unref(sample);
        continue;
      }

      const ros::Time stamp = stampFromPts(GST_BUFFER_PTS(buffer));

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
    if (pipeline_) {
      gst_element_set_state(pipeline_, GST_STATE_NULL);
    }
    if (appsink_) {
      gst_object_unref(GST_OBJECT(appsink_));
      appsink_ = nullptr;
    }
    if (pipeline_) {
      gst_object_unref(GST_OBJECT(pipeline_));
      pipeline_ = nullptr;
    }
  }

private:
  int index_;
  int port_;
  int latency_ms_;

  std::atomic<bool> running_;
  std::thread th_;

  ros::Publisher img_pub_;
  ros::Publisher info_pub_;
  sensor_msgs::CameraInfo cam_info_;

  GstElement* pipeline_{nullptr};
  GstAppSink* appsink_{nullptr};

  int64_t first_pts_ns_;
  uint64_t first_ros_ns_;
};

int main(int argc, char** argv) {
  ros::init(argc, argv, "gstreamer_camera_wrapper_h264_cpp");
  ros::NodeHandle nh("~");

  gst_init(&argc, &argv);

  int base_port  = 7777;
  int num_cams   = 6;
  int latency_ms = 10;  // 실시간성 우선 기본값

  nh.param("base_port", base_port, base_port);
  nh.param("num_cams", num_cams, num_cams);
  nh.param("latency_ms", latency_ms, latency_ms);

  std::string calib_dir = "/ros_noetic/mapping_ws/src/gstreamer_camera_wrapper/configs";
  nh.param("calib_dir", calib_dir, calib_dir);

  std::vector<std::unique_ptr<H264Worker>> workers;
  workers.reserve(num_cams);

  for (int i = 0; i < num_cams; ++i) {
    const std::string yaml_file = calib_dir + "/calibration_" + std::to_string(i) + ".yaml";
    sensor_msgs::CameraInfo ci = loadCameraInfo(yaml_file);

    const int port = base_port + i;
    workers.emplace_back(new H264Worker(i, port, latency_ms, ci, nh));

    if (!workers.back()->start()) {
      ROS_ERROR("Failed to start cam %d (port=%d)", i, port);
    }
  }

  ros::spin();

  for (auto& w : workers) w->stop();
  return 0;
}

