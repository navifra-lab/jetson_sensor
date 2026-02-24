import gi
import threading
import sys
import time

gi.require_version('Gst', '1.0')
from gi.repository import Gst, GLib

Gst.init(None)

def create_pipeline(desc):
    try:
        p = Gst.parse_launch(desc)
        if not p:
            raise RuntimeError("파이프라인 생성 실패")
        return p
    except Exception as e:
        print(f"파이프라인 생성 중 오류: {e}")
        sys.exit(1)

def on_message(bus, message):
    t = message.type
    if t == Gst.MessageType.EOS:
        print("EOS")
    elif t == Gst.MessageType.ERROR:
        err, debug = message.parse_error()
        print(f"[GST][ERROR] {err} | {debug}")

def run_pipeline(device, host, port):
    # [핵심 수정] 방금 터미널에서 성공한 파이프라인 구조를 그대로 적용
    # UYVY -> nvvidconv -> NV12 -> H264 인코딩
    pipeline_str = (
        f"nvv4l2camerasrc device={device} do-timestamp=true ! "
        "video/x-raw(memory:NVMM), width=1920, height=1200, format=UYVY, framerate=30/1 ! "
        "nvvidconv ! "
        "video/x-raw(memory:NVMM), format=NV12 ! "
        "nvv4l2h264enc maxperf-enable=1 preset-level=1 control-rate=1 bitrate=20000000 "
        "iframeinterval=10 idrinterval=1 insert-sps-pps=true EnableTwopassCBR=0 ! "
        "rtph264pay pt=96 config-interval=1 mtu=1400 ! "
        f"udpsink host={host} port={port} sync=false async=false qos=false"
    )

    print(f"[TX] 파이프라인 ({device}): 설정 중...")
    
    p = create_pipeline(pipeline_str)
    
    bus = p.get_bus()
    bus.add_signal_watch()
    bus.connect("message", on_message)
    
    p.set_state(Gst.State.PLAYING)
    print(f"{device} -> {host}:{port} 전송 시작")

    loop = GLib.MainLoop()
    try:
        loop.run()
    except:
        pass
    finally:
        p.set_state(Gst.State.NULL)

def main():
    client_ip = "127.0.0.1"
    ports     = [7777, 7778, 7779, 7780, 7781, 7782]
    devices = ["/dev/video0", "/dev/video1", "/dev/video2", "/dev/video3", "/dev/video4", "/dev/video5"]

    threads = []
    
    print("--- 멀티 카메라 스트리밍 시작 ---")

    for dev, port in zip(devices, ports):
        th = threading.Thread(target=run_pipeline, args=(dev, client_ip, port), daemon=True)
        th.start()
        threads.append(th)
        # 안정성을 위해 카메라 켜지는 간격을 1초 -> 2초로 늘림
        time.sleep(2.0) 

    try:
        while True:
            time.sleep(1)
    except KeyboardInterrupt:
        print("\n종료 중...")

if __name__ == "__main__":
    main()
