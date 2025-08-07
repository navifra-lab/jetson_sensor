#!/bin/bash

pids=$(ps -eo pid,cmd | grep '[rtp]\.py' | awk '{print $1}')

#if [ -z "$pids" ]; then
#	echo "not notnot"
#	exit 0
#fi

echo "kill rtp.py"
echo "$pids"
for pid in $pids; do
	kill -9 "$pid" && echo "PID $pid killed"
done

ones=$(ps -eo pid,cmd | grep '[one]\.launch' | awk '{print $1}')
echo "kill one.launch"
echo "$ones"
for pid in $ones; do
	kill -9 "$pid" && echo "PID $pid killed"
done

os_drivers=$(ps -eo pid,cmd | grep os_driver | awk '{print $1}')
echo "kill os_driver"
echo "$os_drivers"
for pid in $os_drivers; do
	kill -9 "$pid" && echo "PID $pid killed"
done

microstrain_inertial_driver_nodes=$(ps -eo pid,cmd | grep microstrain_inertial_driver_nodes | awk '{print $1}')
echo "kill microstrain_inertial_driver_nodes"
echo "$microstrain_inertial_driver_nodes"
for pid in $microstrain_inertial_driver_nodes; do
	kill -9 "$pid" && echo "PID $pid killed"
done

gstreamer_opencv_multis=$(ps -eo pid,cmd | grep '[gstreamer_opencv_multi]\.py' | awk '{print $1}')
echo "kill gstreamer_opencv_multi"
echo "$gstreamer_opencv_multis"
for pid in $gstreamer_opencv_multis; do
	kill -9 "$pid" && echo "PID $pid killed"
done
# 2. docker-compose down (주석 해제하여 Docker 종료)
#docker compose down

# 실행을 유지하려면 아래 주석 해제
# exec bash

