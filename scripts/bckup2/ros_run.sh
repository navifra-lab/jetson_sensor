#!/bin/bash
set -e

echo "Configuring Cameras for 1920x1200 @ 30Hz Sync Mode..."

# 0, 1, 2, 3번 카메라 순회
for cam_id in 0 1 2 3
do
    if [ -e "/dev/video$cam_id" ]; then
        echo "Setting up /dev/video$cam_id"
        
        # 1. 해상도/포맷 강제 설정 (드라이버가 인식하는 표준 모드인 60fps로 진입됨)
        v4l2-ctl -d /dev/video$cam_id --set-fmt-video=width=1920,height=1200,pixelformat=UYVY
        
        # 2. [핵심] 하드웨어 동기화 모드를 30Hz로 설정
        # (드라이버 상으로는 60fps라고 뜨더라도, 실제 카메라는 30번만 셔터를 엽니다)
        v4l2-ctl -d /dev/video$cam_id --set-ctrl=frame_sync=1
        
        # 3. 노출 모드 설정 (선택사항, 필요시 주석 해제)
        # v4l2-ctl -d /dev/video$cam_id --set-ctrl=exposure_auto=0
        
        echo "Done /dev/video$cam_id"
    fi
done

# 설정 안정화를 위해 2초 대기
sleep 2

# RTP 스트리밍 실행
python3 /ros_noetic/mapping_ws/scripts/rtp.py &
RTP_PID=$!
echo $RTP_PID > /tmp/rtp_pid.txt
echo "rtp.py started with PID $RTP_PID"

# ROS 실행
source /ros_noetic/mapping_ws/devel/setup.bash
roslaunch /ros_noetic/mapping_ws/launch/sensor.launch
