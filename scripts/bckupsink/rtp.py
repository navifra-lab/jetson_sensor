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
    # Code 2 스타일 적용: nvv4l2camerasrc 사용 (HW 가속)
    # 요청사항 반영: framerate 지정 제거, bitrate 20Mbps 유지
    pipeline_str = (
        f"nvv4l2camerasrc device={device} do-timestamp=true ! "
        # FPS 지정 없이 해상도와 포맷만 명시 (드라이버가 주는 대로 받음)
        "video/x-raw(memory:NVMM),format=UYVY,width=1920,height=1200 ! "
        
        "nvvidconv ! "
        "video/x-raw(memory:NVMM),format=I420 ! "
        
        # 입력하신 인코더 설정 적용 (20Mbps, iframeinterval=5)
        "nvv4l2h264enc maxperf-enable=1 preset-level=1 control-rate=1 bitrate=20000000 "
        "iframeinterval=5 idrinterval=1 insert-sps-pps=true EnableTwopassCBR=0 ! "
        
        "rtph264pay pt=96 config-interval=1 mtu=1200 ! "
        f"udpsink host={host} port={port} sync=false async=false qos=false"
    )

    print(f"[TX] 파이프라인 ({device}) -> {host}:{port} 설정 중...")
    
    p = create_pipeline(pipeline_str)
    
    # 버스 설정 (에러 감지용)
    bus = p.get_bus()
    bus.add_signal_watch()
    bus.connect("message", on_message)
    
    p.set_state(Gst.State.PLAYING)
    print(f"{device} 전송 시작 (FPS 자동 협상)")

    # Code 2의 핵심: GLib MainLoop를 사용하여 GStreamer 이벤트 처리 보장
    loop = GLib.MainLoop()
    try:
        loop.run()
    except:
        pass
    finally:
        p.set_state(Gst.State.NULL)
        print(f"{device} 정지")

def main():
    client_ip = "127.0.0.1"
    ports     = [7777, 7778, 7779, 7780]
    devices   = ["/dev/video0", "/dev/video1", "/dev/video2", "/dev/video3"]

    threads = []
    
    print("--- 멀티 카메라 스트리밍 시작 (Code 2 Style + No FPS) ---")

    for dev, port in zip(devices, ports):
        th = threading.Thread(target=run_pipeline, args=(dev, client_ip, port), daemon=True)
        th.start()
        threads.append(th)
        
        # 입력하신 대로 UYVY/20Mbps 부하를 고려하여 2초 딜레이 적용
        print(f"{dev} 초기화 대기 (2.0s)...")
        time.sleep(2.0) 

    try:
        # 메인 스레드 유지
        while True:
            time.sleep(1)
    except KeyboardInterrupt:
        print("\n종료 중...")

if __name__ == "__main__":
    main()
