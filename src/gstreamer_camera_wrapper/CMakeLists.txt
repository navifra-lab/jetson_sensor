cmake_minimum_required(VERSION 3.0.2)
project(gstreamer_camera_wrapper)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  sensor_msgs
)

find_package(yaml-cpp REQUIRED)

find_package(PkgConfig REQUIRED)
pkg_check_modules(GST REQUIRED gstreamer-1.0)
pkg_check_modules(GSTAPP REQUIRED gstreamer-app-1.0)

catkin_package(
  CATKIN_DEPENDS roscpp sensor_msgs
)

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
  ${GST_INCLUDE_DIRS}
  ${GSTAPP_INCLUDE_DIRS}
)

add_executable(gstreamer_camera_wrapper_h264_cpp
  scripts/gstreamer_camera_wrapper_h264.cpp
)

target_link_libraries(gstreamer_camera_wrapper_h264_cpp
  ${catkin_LIBRARIES}
  yaml-cpp
  ${GST_LIBRARIES}
  ${GSTAPP_LIBRARIES}
)

add_definitions(${GST_CFLAGS_OTHER} ${GSTAPP_CFLAGS_OTHER})

# (선택) 설치 규칙: devel 뿐 아니라 install 공간에서도 찾게 하려면 권장
install(TARGETS gstreamer_camera_wrapper_h264_cpp
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

