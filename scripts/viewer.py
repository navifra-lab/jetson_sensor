import cv2
import numpy as np
import os
import time

# GStreamer 파이프라인 (ROS 없이 SHM 직접 읽기)
def get_gst_pipeline(socket_path):
    return (
        f"shmsrc socket-path={socket_path} is-live=true do-timestamp=true ! "
        "h264parse ! "
        "avdec_h264 ! "
        "videoconvert ! "
        "video/x-raw, format=BGR ! "
        "appsink drop=true sync=false"
    )

def main():
    socket0 = "/tmp/cam5"
    socket2 = "/tmp/cam3"

    print(f"Waiting for sockets: {socket0}, {socket2}...")
    
    while not (os.path.exists(socket0) and os.path.exists(socket2)):
        time.sleep(0.5)

    print("Opening pipelines...")
    
    cap0 = cv2.VideoCapture(get_gst_pipeline(socket0), cv2.CAP_GSTREAMER)
    cap2 = cv2.VideoCapture(get_gst_pipeline(socket2), cv2.CAP_GSTREAMER)

    if not cap0.isOpened() or not cap2.isOpened():
        print("Error: Could not open video streams.")
        return

    print("Streams opened. Press 'q' to exit.")

    while True:
        # 동시에 캡처
        cap0.grab()
        cap2.grab()

        # 데이터 가져오기
        _, frame0 = cap0.retrieve()
        _, frame2 = cap2.retrieve()

        if frame0 is not None and frame2 is not None:
            # [핵심] 0.25배 축소 (1/4 크기)
            # 원본: 1920x1200 -> 변경: 480x300
            # 두 개 합치면 가로 960, 세로 300이 됩니다. (아주 컴팩트함)
            scale = 0.25
            view0 = cv2.resize(frame0, None, fx=scale, fy=scale)
            view2 = cv2.resize(frame2, None, fx=scale, fy=scale)

            # 텍스트 크기도 줄임
            cv2.putText(view0, "CAM 5", (10, 30), cv2.FONT_HERSHEY_SIMPLEX, 0.7, (0, 255, 0), 2)
            cv2.putText(view2, "CAM 3", (10, 30), cv2.FONT_HERSHEY_SIMPLEX, 0.7, (0, 255, 0), 2)

            # 가로로 붙이기
            combined = np.hstack((view0, view2))

            cv2.imshow("Mini Viewer (25%)", combined)

        if cv2.waitKey(1) & 0xFF == ord('q'):
            break

    cap0.release()
    cap2.release()
    cv2.destroyAllWindows()

if __name__ == "__main__":
    main()
