#!/bin/bash

# ========================================================
# 0. 인자(폴더명) 확인 및 폴더 생성
# ========================================================
if [ -z "$1" ]; then
    echo "[Error] 사용법: ./ros_run.sh <저장할_폴더_경로_또는_이름>"
    echo "예시: ./ros_run.sh /data/0213_test"
    exit 1
fi

SAVE_DIR=$1

# 저장 폴더가 없으면 생성
mkdir -p "$SAVE_DIR"
echo "[Shell] 저장 폴더 세팅 완료: $SAVE_DIR"

# 1. 환경 설정
source /ros_noetic/mapping_ws/devel/setup.bash

# ========================================================
# 2. 종료(Ctrl+C) 시그널 처리 함수 (안전장치)
# ========================================================
cleanup() {
    echo ""
    echo "[Shell] 종료 신호(Ctrl+C) 감지! 모든 기록을 안전하게 종료합니다..."
    
    # 1. ROS Bag 종료
    if [ -n "$BAG_PID" ]; then
        echo "[Shell] rosbag 레코딩을 종료합니다..."
        kill -SIGINT "$BAG_PID"
    fi

    # 2. 카메라 프로세스 종료
    if [ -n "$CAM_PID" ]; then
        echo "[Shell] 카메라 녹화(test.py)를 종료합니다..."
        kill -SIGINT "$CAM_PID"
    fi
    
    # 3. ROS Launch 종료
    if [ -n "$LAUNCH_PID" ]; then
        echo "[Shell] ROS 센서 드라이버를 종료합니다..."
        kill -SIGINT "$LAUNCH_PID"
    fi

    # 모든 백그라운드 프로세스가 파일 저장을 완료하고 꺼질 때까지 대기
    wait "$BAG_PID" "$CAM_PID" "$LAUNCH_PID" 2>/dev/null
    
    echo "[Shell] 모든 센서 데이터가 $SAVE_DIR 에 안전하게 저장되었습니다."
    exit 0
}

# Ctrl+C(SIGINT)가 들어오면 위 cleanup 함수를 실행
trap cleanup SIGINT

# ========================================================
# 3. 프로세스 실행
# ========================================================

# 3-1. ROS Launch 실행 (백그라운드)
echo "[Shell] ROS 센서 드라이버를 시작합니다..."
roslaunch /ros_noetic/mapping_ws/launch/sensor.launch &
LAUNCH_PID=$!

# 센서 노드들이 켜질 시간을 잠시 부여 (3초)
sleep 3

# 3-2. 카메라 녹화 스크립트 실행 (백그라운드)
echo "[Shell] 카메라 녹화(test.py)를 시작합니다..."
# 파이썬 스크립트에 SAVE_DIR 변수를 인자로 전달
python3 test.py "$SAVE_DIR" &
CAM_PID=$!

# 3-3. ROS Bag (Lidar, IMU) 기록 실행 (백그라운드)
echo "[Shell] ROS Bag (Lidar, IMU) 기록을 시작합니다..."
# -O 옵션을 사용하여 지정한 폴더 안에 sensor_data.bag 라는 이름으로 저장
rosbag record -O "$SAVE_DIR/sensor_data.bag" /hrz/points /imu/data &
BAG_PID=$!

echo "======================================================="
echo " [녹화 중] 데이터가 '$SAVE_DIR' 에 저장되고 있습니다."
echo " 종료하려면 Ctrl+C 를 누르세요."
echo "======================================================="

# 스크립트가 종료되지 않고 계속 대기하도록 설정
wait
