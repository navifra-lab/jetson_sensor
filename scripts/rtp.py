# streaming_gst.py
import gi, threading, sys
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
    pipeline = f"""
v4l2src device={device} do-timestamp=true !
videorate drop-only=true !
video/x-raw,format=UYVY,width=1920,height=1200,framerate=10/1 !
queue leaky=downstream max-size-buffers=0 max-size-bytes=0 max-size-time=0 !
nvvidconv !
video/x-raw(memory:NVMM),format=I420,width=1920,height=1200,framerate=10/1 !
queue leaky=downstream max-size-buffers=0 max-size-bytes=0 max-size-time=0 !
nvv4l2h264enc maxperf-enable=1 preset-level=1 control-rate=1 bitrate=4000000 \
              iframeinterval=10 idrinterval=1 insert-sps-pps=true EnableTwopassCBR=1 \
! rtph264pay pt=96 config-interval=1 mtu=1200 \
! udpsink host={host} port={port} sync=false async=false qos=false
""".strip()

    print("[TX] 파이프라인:", pipeline)
    p = create_pipeline(pipeline)
    bus = p.get_bus(); bus.add_signal_watch(); bus.connect("message", on_message)
    p.set_state(Gst.State.PLAYING)
    print(f"{device} -> {host}:{port} 전송 중...")
    try:
        GLib.MainLoop().run()
    except KeyboardInterrupt:
        pass
    finally:
        p.set_state(Gst.State.NULL)

def main():
    client_ip = "127.0.0.1"
    ports   = [7777, 7778, 7779, 7780]
    devices = ["/dev/video0","/dev/video1","/dev/video2","/dev/video3"]

    threads=[]
    for dev, port in zip(devices, ports):
        th = threading.Thread(target=run_pipeline, args=(dev, client_ip, port), daemon=True)
        th.start(); threads.append(th)
    for th in threads: th.join()

if __name__ == "__main__":
    main()

