import gi
import sys
import time

gi.require_version('Gst', '1.0')
from gi.repository import Gst, GLib

Gst.init(None)

def create_window_pipeline(port, x_pos, y_pos, width, height):
    # 컴포지터를 쓰지 않고 각각 독립된 창을 띄웁니다. (Segfault 원천 차단)
    pipeline_str = (
        f"udpsrc port={port} buffer-size=52428800 caps=\"application/x-rtp, media=(string)video, clock-rate=(int)90000, encoding-name=(string)H264, payload=(int)96\" ! "
        "queue ! rtph264depay ! h264parse ! nvv4l2decoder enable-max-performance=1 ! "
        "nvvidconv ! "
        # window-x, window-y로 위치를 강제 고정하여 붙어있는 것처럼 보이게 함
        f"nv3dsink window-x={x_pos} window-y={y_pos} window-width={width} window-height={height} sync=false async=false"
    )
    return pipeline_str

def main():
    # 설정
    ports = [7777, 7778] # 좌, 우 카메라 포트
    
    # 화면 크기 (각각 절반 크기)
    w = 960
    h = 600
    
    # 좌표 설정 (왼쪽, 오른쪽)
    layouts = [
        (0, 0),    # 왼쪽 상단 (Cam 1)
        (960, 0)   # 바로 옆에 붙이기 (Cam 2)
    ]
    
    pipelines = []
    print("--- 2채널 뷰어 (Side-by-Side 모드) ---")
    
    for i, port in enumerate(ports):
        x, y = layouts[i]
        print(f"Creating window for Port {port} at {x},{y}")
        desc = create_window_pipeline(port, x, y, w, h)
        
        try:
            p = Gst.parse_launch(desc)
            p.set_state(Gst.State.PLAYING)
            pipelines.append(p)
        except Exception as e:
            print(f"Error: {e}")

    loop = GLib.MainLoop()
    try:
        loop.run()
    except KeyboardInterrupt:
        pass
    finally:
        for p in pipelines:
            p.set_state(Gst.State.NULL)

if __name__ == "__main__":
    main()
