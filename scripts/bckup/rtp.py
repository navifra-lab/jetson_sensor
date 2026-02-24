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
    # 파이프라인 문자열 정의 (가독성을 위해 정렬)
    pipeline_str = (
        f"nvv4l2camerasrc device={device} ! "
        "video/x-raw(memory:NVMM),format=UYVY,width=1920,height=1200,framerate=30/1 ! "
        "videorate ! "
        "video/x-raw(memory:NVMM),framerate=30/1 ! "
        "nvvidconv ! "
        "video/x-raw(memory:NVMM),format=I420 ! "
        "nvv4l2h264enc maxperf-enable=1 preset-level=1 control-rate=1 bitrate=20000000 "
        "iframeinterval=10 idrinterval=1 insert-sps-pps=true EnableTwopassCBR=0 ! "
        "rtph264pay pt=96 config-interval=1 mtu=1200 ! "
        f"udpsink host={host} port={port} sync=false async=false qos=false"
    )

    print(f"[TX] 파이프라인 ({device}): 설정 중...")
    
    p = create_pipeline(pipeline_str)
    
    # 버스 설정
    bus = p.get_bus()
    bus.add_signal_watch()
    bus.connect("message", on_message)
    
    p.set_state(Gst.State.PLAYING)
    print(f"{device} -> {host}:{port} 전송 시작")

    # 스레드 내 별도 루프 실행
    loop = GLib.MainLoop()
    try:
        loop.run()
    except:
        pass
    finally:
        p.set_state(Gst.State.NULL)

def main():
    client_ip = "127.0.0.1"
    ports   = [7777, 7778, 7779, 7780]
    devices = ["/dev/video0", "/dev/video1", "/dev/video2", "/dev/video3"]

    threads = []
    
    print("--- 멀티 카메라 스트리밍 시작 ---")

    for dev, port in zip(devices, ports):
        th = threading.Thread(target=run_pipeline, args=(dev, client_ip, port), daemon=True)
        th.start()
        threads.append(th)
        time.sleep(0.5) # 카메라 초기화 충돌 방지를 위해 약간의 딜레이 권장

    try:
        # 메인 스레드는 살아있어야 하므로 무한 대기
        while True:
            time.sleep(1)
    except KeyboardInterrupt:
        print("\n종료 중...")

if __name__ == "__main__":
    main()
