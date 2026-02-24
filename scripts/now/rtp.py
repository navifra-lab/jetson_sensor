import gi
import threading
import sys
import time
import os

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

def run_pipeline(device, socket_path):
    # EGL 에러 방지용 환경변수 설정 (코드 내에서 강제 설정)
    if "DISPLAY" in os.environ:
        del os.environ["DISPLAY"]
    
    pipeline_str = (
        f"nvv4l2camerasrc device={device} do-timestamp=true ! "
        "video/x-raw(memory:NVMM), width=1920, height=1200, format=UYVY, framerate=30/1 ! "
        "nvvidconv ! "
        "video/x-raw(memory:NVMM), format=NV12 ! "
        "nvv4l2h264enc maxperf-enable=1 preset-level=1 control-rate=1 bitrate=8000000 "
        "iframeinterval=30 idrinterval=1 insert-sps-pps=true ! "
        "h264parse ! "
        f"shmsink socket-path={socket_path} sync=false wait-for-connection=false shm-size=10000000"
    )

    print(f"[SHM] 파이프라인 ({device} -> {socket_path}): 설정 중...")
    
    p = create_pipeline(pipeline_str)
    
    bus = p.get_bus()
    bus.add_signal_watch()
    bus.connect("message", on_message)
    
    p.set_state(Gst.State.PLAYING)
    print(f"{device} -> {socket_path} 공유 메모리 전송 시작")

    loop = GLib.MainLoop()
    try:
        loop.run()
    except:
        pass
    finally:
        p.set_state(Gst.State.NULL)

def main():
    # [수정] 6대 카메라 설정 (Launch 파일과 개수 일치)
    socket_paths = [f"/tmp/cam{i}" for i in range(6)]
    devices = [f"/dev/video{i}" for i in range(6)]

    threads = []
    
    # 기존 소켓 파일 청소
    for path in socket_paths:
        if os.path.exists(path):
            try:
                os.remove(path)
            except:
                pass

    print("--- Pro 모드: 로컬 공유 메모리 스트리밍 시작 (6 Camera) ---")

    for dev, path in zip(devices, socket_paths):
        th = threading.Thread(target=run_pipeline, args=(dev, path), daemon=True)
        th.start()
        threads.append(th)
        time.sleep(0.5) # 간격 조금 줄임 (0.5초)

    try:
        while True:
            time.sleep(1)
    except KeyboardInterrupt:
        print("\n종료 중...")

if __name__ == "__main__":
    main()
