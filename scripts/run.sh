#!/bin/bash
# 1. rtp.py 실행 (백그라운드 실행, PID 저장)
python3 /ros_noetic/mapping_ws/scripts/rtp.py &
RTP_PID=$!
echo $RTP_PID > /tmp/rtp_pid.txt
echo "rtp.py started with PID $RTP_PID"
# 2. docker-compose up -d (백그라운드 실행)
#docker-compose up -d
