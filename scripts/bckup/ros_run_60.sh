#!/bin/bash
set -e  # 오류 발생 시 즉시 종료

echo "Configuring Cameras for 30Hz Sync..."

# 0, 1, 2, 3번 카메라 순회
for cam_id in 0 1 2 3
do
    if [ -e "/dev/video$cam_id" ]; then
        # 1. Frame Sync 켜기 (1 = 30Hz)
        v4l2-ctl -d /dev/video$cam_id --set-ctrl=frame_sync=1
        echo "Set sync for /dev/video$cam_id"
    fi
done

# [중요] 하드웨어 설정이 먹힐 때까지 1초 대기 (안정성 확보)
sleep 1

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

