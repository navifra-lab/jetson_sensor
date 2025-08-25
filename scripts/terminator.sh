#!/bin/bash

# 1. rtp.py 종료
if [ -f /tmp/rtp_pid.txt ]; then
    RTP_PID=$(cat /tmp/rtp_pid.txt)
    if ps -p $RTP_PID > /dev/null; then
        kill $RTP_PID
        echo "rtp.py (PID $RTP_PID) terminated."
    else
        echo "rtp.py already stopped."
    fi
    rm /tmp/rtp_pid.txt
else
    echo "PID file not found. rtp.py may not be running."
fi

# 2. docker-compose down
#docker compose down
