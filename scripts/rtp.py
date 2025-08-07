# streaming.py (Jetson GStreamer 송신 코드)

import gi
import threading
import sys

gi.require_version('Gst', '1.0')
from gi.repository import Gst, GLib

Gst.init(None)

def create_pipeline(pipeline_description):
    try:
        pipeline = Gst.parse_launch(pipeline_description)
        if not pipeline:
            raise Exception("파이프라인 생성 실패")
        return pipeline
    except Exception as e:
        print(f"파이프라인 생성 중 오류 발생: {e}")
        sys.exit(1)

def on_message(bus, message):
    t = message.type
    if t == Gst.MessageType.EOS:
        print("End-Of-Stream 도달")
    elif t == Gst.MessageType.ERROR:
        err, debug = message.parse_error()
        print(f"에러: {err}, 디버그 정보: {debug}")

def run_pipeline(device, client_ip, port):
    pipeline_description = (
        f"v4l2src device={device} ! videorate ! video/x-raw, format=UYVY, width=1920, height=1200, framerate=10/1 ! "
        "nvvidconv ! video/x-raw(memory:NVMM), format=I420, width=1920, height=1200, framerate=10/1 ! "
        "nvv4l2h264enc bitrate=2000000 idrinterval=20 insert-sps-pps=true ! rtph264pay mtu=1400 ! "
        f"udpsink host={client_ip} port={port} sync=false"
    )

    print(f"파이프라인 실행: {pipeline_description}")
    pipeline = create_pipeline(pipeline_description)
    bus = pipeline.get_bus()
    bus.add_signal_watch()
    bus.connect("message", on_message)
    pipeline.set_state(Gst.State.PLAYING)
    print(f"{device} -> {client_ip}:{port} 전송 중...")

    try:
        loop = GLib.MainLoop()
        loop.run()
    except KeyboardInterrupt:
        print(f"{device} 송출 중단됨.")
    finally:
        pipeline.set_state(Gst.State.NULL)
        print(f"{device} 송출 종료.")

def main():
    client_ip = "192.168.0.252"
    ports = [7777, 7778, 7779, 7780]
    devices = [f"/dev/video{i}" for i in range(4)]

    threads = []
    for device, port in zip(devices, ports):
        thread = threading.Thread(target=run_pipeline, args=(device, client_ip, port))
        threads.append(thread)
        thread.start()

    try:
        for thread in threads:
            thread.join()
    except KeyboardInterrupt:
        print("사용자에 의해 중단되었습니다.")

if __name__ == "__main__":
    main()

