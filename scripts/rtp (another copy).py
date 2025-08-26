import gi
import threading
gi.require_version('Gst', '1.0')
from gi.repository import Gst, GLib
import sys

# GStreamer 초기화
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
    """특정 카메라 장치와 포트로 파이프라인 실행"""
    pipeline_description = (
        f"v4l2src device={device} ! "
        "videorate ! video/x-raw, format=(string)UYVY, width=(int)1920, height=(int)1200, framerate=(fraction)10/1 ! "
        "nvvidconv ! "

        # 해상도 변경 부분
        "video/x-raw(memory:NVMM), format=(string)I420, width=(int)1920, height=(int)1200, framerate=(fraction)10/1 ! "
        # "video/x-raw(memory:NVMM), format=(string)I420, width=(int)1280, height=(int)720, framerate=(fraction)15/1 ! "
        # "video/x-raw(memory:NVMM), format=(string)I420, width=(int)640, height=(int)480, framerate=(fraction)15/1 ! "
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
    # 송출 대상 IP 및 포트 정의 (client pc ip 설정)
    # client_ip = "0.0.0.0"
    #client_ip = "192.168.55.100"
    #client_ip = "192.168.0.111"
    client_ip = "127.0.0.1"

    # 카메라 개수 만큼 port 설정
    
    # ports = [7777]
    #ports = [7777, 7778]  # 각 카메라의 RTP 포트
    ports = [7777, 7778, 7779, 7780]  # 각 카메라의 RTP 포트

    # 카메라 장치 리스트 설정
    # devices = ["/dev/video0"]
    #devices = ["/dev/video0","/dev/video1"]
    devices = ["/dev/video0","/dev/video1","/dev/video2","/dev/video3"]

    # if len(devices) != len(ports):
    #     print("카메라와 포트의 개수가 일치하지 않습니다.")
    #     sys.exit(1)

    # 각 카메라에 대해 스레드 생성
    threads = []
    for device, port in zip(devices, ports):
        thread = threading.Thread(target=run_pipeline, args=(device, client_ip, port))
        threads.append(thread)
        thread.start()

    # 모든 스레드 대기
    try:
        for thread in threads:
            thread.join()
    except KeyboardInterrupt:
        print("사용자에 의해 중단되었습니다.")

if __name__ == "__main__":
    main()

