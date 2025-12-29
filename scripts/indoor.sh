#!/bin/bash
set -e  # 오류 발생 시 즉시 종료


./cam_setting_indoor.sh

sleep 0.5

#python3 /home/mapping/workspaces/mapping_robot/scripts/rtp.py &
python3 /ros_noetic/mapping_ws/scripts/rtp.py &
RTP_PID=$!
echo $RTP_PID > /tmp/rtp_pid.txt
echo "rtp.py started with PID $RTP_PID"


# ROS 환경 설정
#source /opt/ros/noetic/setup.bash
source /ros_noetic/mapping_ws/devel/setup.bash

# ROS 패키지 실행 예시 (원하는 명령으로 바꾸세요)
roslaunch /ros_noetic/mapping_ws/launch/sensor.launch

# 개발용으로 bash 유지
#exec bash

