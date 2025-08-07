#!/bin/bash
set -e  # 오류 발생 시 즉시 종료

# rtp.py 실행 (백그라운드)
python3 /home/mapping/catkin_ws/scripts/rtp.py &
RTP_PID=$!
echo $RTP_PID > /tmp/rtp_pid.txt
echo "rtp.py started with PID $RTP_PID"

# ROS 2 환경 설정
source /opt/ros/humble/setup.bash
source /home/mapping/catkin_ws/install/setup.bash

# ROS 2 launch 실행 (예: 패키지명은 my_robot_launch_pkg라고 가정)
ros2 launch /home/mapping/catkin_ws/launch/one.launch.py

# 실행 끝나면 자동 종료되므로, 유지 원할 시 아래 주석 해제
# exec bash

