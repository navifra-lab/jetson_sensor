#!/usr/bin/env python3

import cv2
import threading
import ctypes
import rospy
import yaml
from sensor_msgs.msg import CompressedImage, CameraInfo
from sensor_msgs.msg import Image
from cv_bridge import CvBridge
import numpy as np

# XInitThreads 호출
libX11 = ctypes.CDLL("libX11.so")
libX11.XInitThreads()

# GStreamer 파이프라인 정의
pipelines = [
    "udpsrc port=7777 caps=application/x-rtp,payload=96,encoding-name=H264 ! rtph264depay ! avdec_h264 ! videoconvert ! appsink",
    "udpsrc port=7778 caps=application/x-rtp,payload=96,encoding-name=H264 ! rtph264depay ! avdec_h264 ! videoconvert ! appsink",
    "udpsrc port=7779 caps=application/x-rtp,payload=96,encoding-name=H264 ! rtph264depay ! avdec_h264 ! videoconvert ! appsink",
    "udpsrc port=7780 caps=application/x-rtp,payload=96,encoding-name=H264 ! rtph264depay ! avdec_h264 ! videoconvert ! appsink",
     #"udpsrc port=7777 caps=application/x-rtp,payload=96,encoding-name=H264 ! rtph264depay ! avdec_h264 ! videoconvert ! videoscale ! video/x-raw, width=1920, height=1080 ! appsink",
     #"udpsrc port=7777 caps=application/x-rtp,payload=96,encoding-name=H264 ! rtph264depay ! avdec_h264 ! videoconvert ! videoscale ! video/x-raw, width=640, height=480 ! appsink",
    # "udpsrc port=7777 caps=application/x-rtp,payload=96,encoding-name=H264 ! rtph264depay ! avdec_h264 ! videoconvert ! videoscale ! video/x-raw, width=1280, height=720 ! appsink",
]

bridge = CvBridge()

# YAML 파일에서 CameraInfo 로드
def load_camera_info(yaml_file):
    with open(yaml_file, 'r') as file:
        calib_data = yaml.safe_load(file)
    
    print("----------------------------")
    print("----------------------------")

    camera_info = CameraInfo()
    camera_info.width =  calib_data['image_width']
    camera_info.height = calib_data['image_height']
    camera_info.K = calib_data['camera_matrix']['data']
    camera_info.D = calib_data['distortion_coefficients']['data']
    camera_info.R = calib_data['rectification_matrix']['data']
    camera_info.P = calib_data['projection_matrix']['data']
    camera_info.distortion_model = calib_data['distortion_model']

    print(f"image_width: {camera_info.width}")
    print(f"image_height: {camera_info.height}")
    print(f"camera_matrix: {camera_info.K}")
    print(f"distortion_coefficients: {camera_info.D}")
    print(f"rectification_matrix: {camera_info.R}")
    print(f"projection_matrix: {camera_info.P}")
    print(f"distortion_model: {camera_info.distortion_model}")
    
    print("----------------------------")
    print("----------------------------")

    return camera_info

def publish_rectified_stream(index, pipeline, raw_pub, rect_comp_pub, rect_pub, camera_info_pub, camera_info):
    cap = cv2.VideoCapture(pipeline, cv2.CAP_GSTREAMER)
    if not cap.isOpened():
        rospy.logerr(f"카메라 {index}의 GStreamer 파이프라인을 열 수 없습니다.")
        return
    

    # `camera_info.K`와 `camera_info.D`를 numpy 배열로 변환
    camera_matrix = np.array(camera_info.K).reshape((3, 3))
    dist_coeffs = np.array(camera_info.D)
    h = camera_info.height
    w = camera_info.width

    rospy.loginfo(f"카메라 {index} RTP 스트림 수신 중...")
    is_first = True
    while not rospy.is_shutdown():
        ret, frame = cap.read()
        if not ret:
            rospy.logwarn(f"카메라 {index} 프레임을 읽을 수 없습니다.")
            continue

        # OpenCV frame을 ROS Image 메시지로 변환 및 퍼블리시
        raw_image_msg = bridge.cv2_to_imgmsg(frame, encoding="bgr8")
        raw_image_msg.header.stamp = rospy.Time.now()
        raw_image_msg.header.frame_id = f"camera_{index}_frame"
        raw_pub.publish(raw_image_msg)

        is_fisheye = True

        if is_fisheye is True:
            if is_first is True:
                is_first = False

                # Intrinsic Calibration 적용 (equidistant 모델)
                if len(dist_coeffs) >= 4:
                    dist_coeffs = dist_coeffs[:4].reshape(4, 1)  # OpenCV Fisheye 모델은 (4,1) 형태를 요구
                else:
                    raise ValueError(f"Fisheye distortion coefficients must have at least 4 values, but got {len(dist_coeffs)}")
                
                new_camera_matrix = cv2.fisheye.estimateNewCameraMatrixForUndistortRectify(camera_matrix, dist_coeffs, (w, h), np.eye(3), balance=0.0)
                # new_camera_matrix = cv2.fisheye.estimateNewCameraMatrixForUndistortRectify(camera_matrix, dist_coeffs, (w, h), np.eye(3), balance=1.0)

                map1, map2 = cv2.fisheye.initUndistortRectifyMap(camera_matrix, dist_coeffs, np.eye(3), new_camera_matrix, (w, h), cv2.CV_16SC2)

                camera_info.K[0] = new_camera_matrix[0][0]
                camera_info.K[1] = new_camera_matrix[0][1]
                camera_info.K[2] = new_camera_matrix[0][2]
                camera_info.K[3] = new_camera_matrix[1][0]
                camera_info.K[4] = new_camera_matrix[1][1]
                camera_info.K[5] = new_camera_matrix[1][2]
                camera_info.K[6] = new_camera_matrix[2][0]
                camera_info.K[7] = new_camera_matrix[2][1]
                camera_info.K[8] = new_camera_matrix[2][2]

                print(f"camera info d length: {len(camera_info.D)}")
                camera_info.D[0] = 0.0
                camera_info.D[1] = 0.0
                camera_info.D[2] = 0.0
                camera_info.D[3] = 0.0
                camera_info.D[4] = 0.0

                rospy.loginfo("------------------------------")
                rospy.loginfo("new camera matrix:")
                print(new_camera_matrix)
                
                print("fisheye calibration. equidistant 모델 사용")

            rectified_frame = cv2.remap(frame, map1, map2, interpolation=cv2.INTER_LINEAR)

        else:
            if is_first is True:
                is_first = False
    
                # Intrinsic Calibration 적용 (plumb_bob 모델)
                dist_coeffs = dist_coeffs.flatten()  # Pinhole 모델은 (1,N) 형태 유지

                # Pinhole (Plumb Bob) 모델을 위한 새로운 카메라 행렬 생성
                new_camera_matrix, roi = cv2.getOptimalNewCameraMatrix(camera_matrix, dist_coeffs, (w, h), alpha=0, newImgSize=(w, h))

                camera_info.K[0] = new_camera_matrix[0][0]
                camera_info.K[1] = new_camera_matrix[0][1]
                camera_info.K[2] = new_camera_matrix[0][2]
                camera_info.K[3] = new_camera_matrix[1][0]
                camera_info.K[4] = new_camera_matrix[1][1]
                camera_info.K[5] = new_camera_matrix[1][2]
                camera_info.K[6] = new_camera_matrix[2][0]
                camera_info.K[7] = new_camera_matrix[2][1]
                camera_info.K[8] = new_camera_matrix[2][2]

                print(f"camera info d length: {len(camera_info.D)}")
                camera_info.D[0] = 0.0
                camera_info.D[1] = 0.0
                camera_info.D[2] = 0.0
                camera_info.D[3] = 0.0
                camera_info.D[4] = 0.0

                print("pinhole calibration. plumb_bob 모델 사용")

            # Pinhole 이미지 보정
            rectified_frame = cv2.undistort(frame, camera_matrix, dist_coeffs, None, new_camera_matrix)

        # Rectified Image를 ROS CompressedImage 메시지로 변환하여 퍼블리시
        rectified_msg = CompressedImage()
        rectified_msg.header.stamp = rospy.Time.now()
        rectified_msg.header.frame_id = f"camera_{index}_frame"
        rectified_msg.format = "jpeg"
        rectified_msg.data = cv2.imencode('.jpg', rectified_frame)[1].tobytes()
        rect_comp_pub.publish(rectified_msg)
        
        # Rectified Image를 ROS Image 메시지로 변환하여 퍼블리시
        rect_image_msg = bridge.cv2_to_imgmsg(rectified_frame, encoding="bgr8")
        rect_image_msg.header.stamp = rospy.Time.now()
        rect_image_msg.header.frame_id = f"camera_{index}_frame"
        rect_pub.publish(rect_image_msg)

        # Rectified Image에 해당하는 CameraInfo 퍼블리시
        camera_info.header.stamp = rectified_msg.header.stamp
        camera_info.header.frame_id = rectified_msg.header.frame_id
        camera_info_pub.publish(camera_info)

    cap.release()

def main():
    rospy.init_node("gstreamer_camera_wrapper")

    rect_comp_publishers = []
    rect_publishers = []
    raw_publishers = []
    camera_info_publishers = []
    camera_infos = []

    # CameraInfo 데이터 로드
    for i in range(len(pipelines)):
        yaml_file = f"/ros_noetic/mapping_ws/src/gstreamer_camera_wrapper/configs/calibration_{i}.yaml"
        camera_info = load_camera_info(yaml_file)
        camera_infos.append(camera_info)

        # Image 퍼블리셔
        rect_comp_publishers.append(rospy.Publisher(f"/camera_{i}/image_rect/compressed", CompressedImage, queue_size=10))
        rect_publishers.append(rospy.Publisher(f"/camera_{i}/image_rect", Image, queue_size=10))
        raw_publishers.append(rospy.Publisher(f"/camera_{i}/image_raw", Image, queue_size=10))

        # CameraInfo 퍼블리셔
        camera_info_publishers.append(rospy.Publisher(f"/camera_{i}/camera_info", CameraInfo, queue_size=10))

    threads = []
    for i, pipeline in enumerate(pipelines):
        thread = threading.Thread(
            target=publish_rectified_stream,
            args=(i, pipeline, raw_publishers[i], rect_comp_publishers[i], rect_publishers[i], camera_info_publishers[i], camera_infos[i]),
        )
        threads.append(thread)
        thread.start()

    rospy.spin()

    for thread in threads:
        thread.join()

if __name__ == "__main__":
    main()
