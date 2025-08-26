#!/usr/bin/env python3
import cv2, threading, ctypes, rospy, yaml, numpy as np
from sensor_msgs.msg import CompressedImage, CameraInfo

# XInitThreads
ctypes.CDLL("libX11.so").XInitThreads()
cv2.setNumThreads(1)

# GPU 디코드 + NV 컨버전 (OpenCV 호환)
pipelines = [
    'udpsrc port=7777 buffer-size=4194304 '
    'caps="application/x-rtp,media=video,encoding-name=H264,payload=96,clock-rate=90000,packetization-mode=1" ! '
    'rtpjitterbuffer latency=120 drop-on-late=true ! '
    'rtph264depay ! '
    'h264parse config-interval=-1 ! '
    'video/x-h264,stream-format=byte-stream,alignment=au ! '
    'nvv4l2decoder disable-dpb=true ! '
    'nvvidconv ! video/x-raw,format=BGRx ! '
    'videoconvert ! video/x-raw,format=BGR ! '
    'appsink emit-signals=true sync=false max-buffers=2 drop=true',

    'udpsrc port=7778 buffer-size=4194304 '
    'caps="application/x-rtp,media=video,encoding-name=H264,payload=96,clock-rate=90000,packetization-mode=1" ! '
    'rtpjitterbuffer latency=120 drop-on-late=true ! '
    'rtph264depay ! '
    'h264parse config-interval=-1 ! '
    'video/x-h264,stream-format=byte-stream,alignment=au ! '
    'nvv4l2decoder disable-dpb=true ! '
    'nvvidconv ! video/x-raw,format=BGRx ! '
    'videoconvert ! video/x-raw,format=BGR ! '
    'appsink emit-signals=true sync=false max-buffers=2 drop=true',

    'udpsrc port=7779 buffer-size=4194304 '
    'caps="application/x-rtp,media=video,encoding-name=H264,payload=96,clock-rate=90000,packetization-mode=1" ! '
    'rtpjitterbuffer latency=120 drop-on-late=true ! '
    'rtph264depay ! '
    'h264parse config-interval=-1 ! '
    'video/x-h264,stream-format=byte-stream,alignment=au ! '
    'nvv4l2decoder disable-dpb=true ! '
    'nvvidconv ! video/x-raw,format=BGRx ! '
    'videoconvert ! video/x-raw,format=BGR ! '
    'appsink emit-signals=true sync=false max-buffers=2 drop=true',

    'udpsrc port=7780 buffer-size=4194304 '
    'caps="application/x-rtp,media=video,encoding-name=H264,payload=96,clock-rate=90000,packetization-mode=1" ! '
    'rtpjitterbuffer latency=120 drop-on-late=true ! '
    'rtph264depay ! '
    'h264parse config-interval=-1 ! '
    'video/x-h264,stream-format=byte-stream,alignment=au ! '
    'nvv4l2decoder disable-dpb=true ! '
    'nvvidconv ! video/x-raw,format=BGRx ! '
    'videoconvert ! video/x-raw,format=BGR ! '
    'appsink emit-signals=true sync=false max-buffers=2 drop=true',
]


def load_camera_info(yaml_file):
    with open(yaml_file, 'r') as f:
        calib = yaml.safe_load(f)
    ci = CameraInfo()
    ci.width  = calib['image_width']
    ci.height = calib['image_height']
    ci.K = calib['camera_matrix']['data']
    ci.D = calib['distortion_coefficients']['data']
    ci.R = calib['rectification_matrix']['data']
    ci.P = calib['projection_matrix']['data']
    ci.distortion_model = calib['distortion_model']
    return ci

def publish_rectified_stream(index, pipeline, rect_pub, info_pub, camera_info):
    cap = cv2.VideoCapture(pipeline, cv2.CAP_GSTREAMER)
    if not cap.isOpened():
        rospy.logerr(f"[cam{index}] GStreamer 파이프라인 open 실패")
        return

    K = np.array(camera_info.K, dtype=np.float64).reshape(3,3)
    D = np.array(camera_info.D, dtype=np.float64)
    h, w = int(camera_info.height), int(camera_info.width)

    is_first = True
    map1 = map2 = None
    newK = None
    is_fisheye = True
    jpeg_quality = 70  # 60~80 사이에서 튜닝

    rospy.loginfo(f"[cam{index}] RTP 수신 시작")

    while not rospy.is_shutdown():
        ok, frame = cap.read()
        if not ok:
            rospy.logwarn_throttle(2.0, f"[cam{index}] 프레임 읽기 실패")
            continue

        if is_first:
            is_first = False
            if is_fisheye:
                if len(D) < 4:
                    raise ValueError("fisheye D 최소 4개 필요")
                d4 = D[:4].reshape(4,1)
                newK = cv2.fisheye.estimateNewCameraMatrixForUndistortRectify(
                    K, d4, (w, h), np.eye(3), balance=0.0
                )
                map1, map2 = cv2.fisheye.initUndistortRectifyMap(
                    K, d4, np.eye(3), newK, (w, h), cv2.CV_16SC2
                )
                camera_info.K = [newK[0,0], newK[0,1], newK[0,2],
                                 newK[1,0], newK[1,1], newK[1,2],
                                 newK[2,0], newK[2,1], newK[2,2]]
                camera_info.D = [0.0]*len(camera_info.D)
            else:
                dflat = D.flatten()
                newK, _ = cv2.getOptimalNewCameraMatrix(K, dflat, (w,h), alpha=0, newImgSize=(w,h))
                map1, map2 = cv2.initUndistortRectifyMap(
                    K, dflat, None, newK, (w,h), cv2.CV_16SC2
                )
                camera_info.K = [newK[0,0], newK[0,1], newK[0,2],
                                 newK[1,0], newK[1,1], newK[1,2],
                                 newK[2,0], newK[2,1], newK[2,2]]
                camera_info.D = [0.0]*len(camera_info.D)

        rectified = cv2.remap(frame, map1, map2, interpolation=cv2.INTER_LINEAR)

        ok, enc = cv2.imencode('.jpg', rectified, [int(cv2.IMWRITE_JPEG_QUALITY), jpeg_quality])
        if not ok:
            rospy.logwarn_throttle(2.0, f"[cam{index}] JPEG 인코드 실패")
            continue

        now = rospy.Time.now()
        msg = CompressedImage()
        msg.header.stamp = now
        msg.header.frame_id = f"camera_{index}_frame"
        msg.format = "jpeg"
        msg.data = enc.tobytes()
        rect_pub.publish(msg)

        camera_info.header.stamp = now
        camera_info.header.frame_id = msg.header.frame_id
        info_pub.publish(camera_info)

    cap.release()

def main():
    rospy.init_node("gstreamer_camera_wrapper")
    rect_pubs, info_pubs, infos = [], [], []
    for i in range(len(pipelines)):
        yaml_file = f"/ros_noetic/mapping_ws/src/gstreamer_camera_wrapper/configs/calibration_{i}.yaml"
        ci = load_camera_info(yaml_file); infos.append(ci)
        rect_pubs.append(rospy.Publisher(f"/camera_{i}/image_rect/compressed", CompressedImage, queue_size=1))
        info_pubs.append(rospy.Publisher(f"/camera_{i}/camera_info", CameraInfo, queue_size=1))

    threads = []
    for i, pipe in enumerate(pipelines):
        t = threading.Thread(target=publish_rectified_stream, args=(i, pipe, rect_pubs[i], info_pubs[i], infos[i]), daemon=True)
        t.start(); threads.append(t)

    rospy.spin()
    for t in threads: t.join()

if __name__ == "__main__":
    main()

