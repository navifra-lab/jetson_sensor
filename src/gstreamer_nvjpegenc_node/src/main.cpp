#include <rclcpp/rclcpp.hpp>
#include "nvjpeg_ros_node.hpp"

int main(int argc, char* argv[]) {
    rclcpp::init(argc, argv);

    std::vector<std::string> pipelines;
    for (int i = 0; i < 4; ++i) {
        std::string pipe =
            "udpsrc port=" + std::to_string(7777 + i) +
            " caps=application/x-rtp,encoding-name=H264,payload=96 ! "
            "rtph264depay ! h264parse ! nvv4l2decoder enable-max-performance=1 ! "
            "nvvidconv ! video/x-raw(memory:NVMM),format=NV12,width=1920,height=1200 ! "
            "nvjpegenc ! appsink name=sink sync=false";

        pipelines.push_back(pipe);
    }

    auto node = std::make_shared<NvJpegCameraNode>(pipelines);

    rclcpp::executors::MultiThreadedExecutor exec;
    exec.add_node(node);
    exec.spin();

    rclcpp::shutdown();
    return 0;
}

