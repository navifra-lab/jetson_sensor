#include "nvjpeg_ros_node.hpp"
#include <gst/gst.h>
#include <gst/app/gstappsink.h>

NvJpegCameraNode::NvJpegCameraNode(const std::vector<std::string>& pipelines)
    : Node("nvjpeg_camera_node")
{
    gst_init(nullptr, nullptr);

    for (size_t i = 0; i < pipelines.size(); ++i) {
        std::string topic = "/camera_" + std::to_string(i) + "/image_raw/compressed";
        auto pub = this->create_publisher<sensor_msgs::msg::CompressedImage>(
            topic, rclcpp::SensorDataQoS());

        CameraStream cam;
        cam.pipeline = pipelines[i];
        cam.comp_pub = pub;
        cameras_.emplace_back(cam);
    }

    for (size_t i = 0; i < cameras_.size(); ++i) {
        threads_.emplace_back(&NvJpegCameraNode::camera_loop, this, i);
    }
}

NvJpegCameraNode::~NvJpegCameraNode() {
    for (auto& t : threads_) {
        if (t.joinable()) t.join();
    }
}

void NvJpegCameraNode::camera_loop(size_t index) {
    auto& cam = cameras_[index];
    std::string frame_id = "camera_" + std::to_string(index) + "_frame";

    GError* error = nullptr;
    GstElement* pipeline = gst_parse_launch(cam.pipeline.c_str(), &error);
    if (!pipeline) {
        RCLCPP_ERROR(this->get_logger(), "Failed to launch pipeline: %s", error->message);
        g_error_free(error);
        return;
    }

    GstElement* sink = gst_bin_get_by_name(GST_BIN(pipeline), "sink");
    gst_element_set_state(pipeline, GST_STATE_PLAYING);

    while (rclcpp::ok()) {
        GstSample* sample = gst_app_sink_pull_sample(GST_APP_SINK(sink));
        if (!sample) continue;

        GstBuffer* buffer = gst_sample_get_buffer(sample);
        GstMapInfo map;
        if (!gst_buffer_map(buffer, &map, GST_MAP_READ)) {
            gst_sample_unref(sample);
            continue;
        }

        auto now = this->get_clock()->now();

        sensor_msgs::msg::CompressedImage msg;
        msg.header.stamp = now;
        msg.header.frame_id = frame_id;
        msg.format = "jpeg";
        msg.data.assign(map.data, map.data + map.size);

        gst_buffer_unmap(buffer, &map);
        gst_sample_unref(sample);

        cam.comp_pub->publish(msg);
    }

    gst_element_set_state(pipeline, GST_STATE_NULL);
    gst_object_unref(pipeline);
}

