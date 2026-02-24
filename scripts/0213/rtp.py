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
    if "DISPLAY" in os.environ:
        del os.environ["DISPLAY"]
    
    pipeline_str = (
        f"nvv4l2camerasrc device={device} do-timestamp=true ! "
        
        # [최종 수정] 30fps 협상 성공! 당당하게 30/1로 요청합니다.
        "video/x-raw(memory:NVMM), width=1920, height=1200, format=UYVY, framerate=30/1 ! "
        
        # videorate 삭제 (불필요)
        
        "nvvidconv ! "
        "video/x-raw(memory:NVMM), format=NV12 ! "
        
        # 인코더 설정
        "nvv4l2h264enc maxperf-enable=1 preset-level=1 control-rate=1 bitrate=20000000 "
        "iframeinterval=30 idrinterval=30 insert-sps-pps=true EnableTwopassCBR=0 ! "
        
        "h264parse ! "
        f"shmsink socket-path={socket_path} sync=false wait-for-connection=false shm-size=10000000"
    )

    print(f"[SHM] 파이프라인 ({device} -> {socket_path}) 30fps 정석 모드 시작")
    
    p = create_pipeline(pipeline_str)
    
    bus = p.get_bus()
    bus.add_signal_watch()
    bus.connect("message", on_message)
    
    p.set_state(Gst.State.PLAYING)

    loop = GLib.MainLoop()
    try:
        loop.run()
    except:
        pass
    finally:
        p.set_state(Gst.State.NULL)

def main():
    # 6대 카메라
    socket_paths = [f"/tmp/cam{i}" for i in range(6)]
    devices = [f"/dev/video{i}" for i in range(6)]

    threads = []
    
    # 소켓 청소
    for path in socket_paths:
        if os.path.exists(path):
            try:
                os.remove(path)
            except:
                pass

    print("--- 멀티 카메라 스트리밍 (Native 30fps Mode) ---")

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
