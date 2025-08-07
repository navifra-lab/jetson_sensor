#pragma once

#include <rclcpp/rclcpp.hpp>
#include <sensor_msgs/msg/compressed_image.hpp>
#include <thread>
#include <vector>
#include <string>

struct CameraStream {
    std::string pipeline;
    rclcpp::Publisher<sensor_msgs::msg::CompressedImage>::SharedPtr comp_pub;
};

class NvJpegCameraNode : public rclcpp::Node {
public:
    NvJpegCameraNode(const std::vector<std::string>& pipelines);
    ~NvJpegCameraNode();

private:
    void camera_loop(size_t index);

    std::vector<CameraStream> cameras_;
    std::vector<std::thread> threads_;
};

