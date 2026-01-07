cmake_minimum_required(VERSION 3.0.2)
project(gstreamer_camera_wrapper)

## 컴파일 옵션 설정
set(CMAKE_CXX_STANDARD 14)

## 패키지 종속성 추가
find_package(catkin REQUIRED COMPONENTS
  rospy
  sensor_msgs
  cv_bridge
  image_transport
  camera_info_manager
)

## catkin 패키지 설정
catkin_package(
  CATKIN_DEPENDS rospy sensor_msgs cv_bridge image_transport camera_info_manager
)

## include 디렉토리 추가
include_directories(
  ${catkin_INCLUDE_DIRS}
)

## Python 노드 설치
catkin_install_python(PROGRAMS
  scripts/gstreamer_opencv_multi.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
