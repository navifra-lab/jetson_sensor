cmake_minimum_required(VERSION 3.22)
project(gstreamer_nvjpegenc_node)

# C++ 표준 설정
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# 패키지 의존성
find_package(ament_cmake REQUIRED)
find_package(rclcpp REQUIRED)
find_package(sensor_msgs REQUIRED)
find_package(std_msgs REQUIRED)
find_package(yaml-cpp REQUIRED)
find_package(OpenCV REQUIRED)

# GStreamer 설정
find_package(PkgConfig REQUIRED)
pkg_check_modules(GST REQUIRED gstreamer-1.0)
pkg_check_modules(GST_APP REQUIRED gstreamer-app-1.0)

# 헤더 포함 경로 설정
include_directories(
  ${GST_INCLUDE_DIRS}
  ${GST_APP_INCLUDE_DIRS}
  ${OpenCV_INCLUDE_DIRS}
  include
)

add_executable(nvjpeg_ros_node
  src/nvjpeg_ros_node.cpp
  src/main.cpp
)

target_include_directories(nvjpeg_ros_node PUBLIC
  $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
)


# 의존성 연결
ament_target_dependencies(nvjpeg_ros_node
  rclcpp
  sensor_msgs
  std_msgs
  yaml-cpp
)

target_link_libraries(nvjpeg_ros_node
  ${GST_LIBRARIES}
  ${GST_APP_LIBRARIES}
  ${OpenCV_LIBRARIES}
  yaml-cpp
)

# 설치 설정
install(TARGETS
  nvjpeg_ros_node
  DESTINATION lib/${PROJECT_NAME}
)

install(DIRECTORY include/
  DESTINATION include/
)

ament_package()

