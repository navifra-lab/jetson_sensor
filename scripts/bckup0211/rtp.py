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
    # EGL 에러 방지용
    if "DISPLAY" in os.environ:
        del os.environ["DISPLAY"]
    
    pipeline_str = (
        f"nvv4l2camerasrc device={device} do-timestamp=true ! "
        # [소스] 드라이버가 60fps라고 주장하는 상황
        "video/x-raw(memory:NVMM), width=1920, height=1200, format=UYVY, framerate=60/1 ! "
        
        # [핵심 수정: 지터 제거]
        # drop-only=true를 제거하고 skip-to-first=true를 추가하여
        # GStreamer가 타임스탬프를 30fps 격자에 강제로 딱딱 맞추게 합니다.
        "videorate skip-to-first=true ! "
        "video/x-raw(memory:NVMM), framerate=30/1 ! "
        
        "nvvidconv ! "
        "video/x-raw(memory:NVMM), format=NV12 ! "
        
        # [인코더]
        # iframeinterval=30: SHM 환경 최적화 (30프레임마다 키프레임)
        # vbv-size 등 버퍼 관련 옵션은 기본값에 맡겨 지연 최소화
        "nvv4l2h264enc maxperf-enable=1 preset-level=1 control-rate=1 bitrate=8000000 "
        "iframeinterval=30 idrinterval=1 insert-sps-pps=true ! "
        
        "h264parse ! "
        f"shmsink socket-path={socket_path} sync=true wait-for-connection=false shm-size=10000000"
        # 주의: shmsink에서 sync=true를 주면 보내는 속도도 30fps로 제어됨 (지터 방지에 도움됨)
    )

    print(f"[SHM] 파이프라인 ({device} -> {socket_path}): 설정 중...")
    
    p = create_pipeline(pipeline_str)
    
    bus = p.get_bus()
    bus.add_signal_watch()
    bus.connect("message", on_message)
    
    p.set_state(Gst.State.PLAYING)
    print(f"{device} -> {socket_path} 전송 시작")

    loop = GLib.MainLoop()
    try:
        loop.run()
    except:
        pass
    finally:
        p.set_state(Gst.State.NULL)

def main():
    # 6대 카메라 설정
    socket_paths = [f"/tmp/cam{i}" for i in range(6)]
    devices = [f"/dev/video{i}" for i in range(6)]

    threads = []
    
    # 기존 소켓 청소
    for path in socket_paths:
        if os.path.exists(path):
            try:
                os.remove(path)
            except:
                pass

    print("--- Pro 모드: Method A (Source De-Jitter) 적용 시작 ---")

    for dev, path in zip(devices, socket_paths):
        th = threading.Thread(target=run_pipeline, args=(dev, path), daemon=True)
        th.start()
        threads.append(th)
        time.sleep(0.5)

    try:
        while True:
            time.sleep(1)
    except KeyboardInterrupt:
        print("\n종료 중...")

if __name__ == "__main__":
    main()
