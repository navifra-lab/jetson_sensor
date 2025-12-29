#!/bin/bash

for d in /dev/video0 /dev/video1 /dev/video2 /dev/video3; do
    echo "Configuring $d"
    v4l2-ctl -d $d --set-ctrl=white_balance_automatic=1
    v4l2-ctl -d $d --set-ctrl=exposure_auto=1
    v4l2-ctl -d $d --set-ctrl=exposure_time_absolute=400
    v4l2-ctl -d $d --set-ctrl=gain=3
    v4l2-ctl -d $d --set-ctrl=gamma=250
    v4l2-ctl -d $d --set-ctrl=frame_sync=1
done

