#!/bin/bash

for d in /dev/video0 /dev/video1 /dev/video2 /dev/video3; do
    echo "Configuring $d"
    v4l2-ctl -d $d --set-ctrl=white_balance_automatic=0
    v4l2-ctl -d $d --set-ctrl=exposure_auto=1
done

