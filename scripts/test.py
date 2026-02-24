import sys
import time
import signal
import os
import threading
import subprocess

import gi
gi.require_version('Gst', '1.0')
from gi.repository import Gst, GLib

Gst.init(None)

# ==========================================
# 설정 (Configuration)
# ==========================================
NUM_CAMS = 6
SAVE_DIR = "/data/0213_2/"  # 저장 경로 (NVMe SSD 권장)
WIDTH = 1920
HEIGHT = 1200
FPS = 30
BITRATE = 20000000  # 20 Mbps (화질 좋음)

pipelines = []
log_files = []
main_loop = None

# ==========================================
# 0. 하드웨어 싱크 설정 (필수)
# ==========================================
def configure_camera_sync():
    print("\n[Setup] 하드웨어 동기화 설정 (v4l2-ctl)...")
    for i in range(NUM_CAMS):
        device_path = f"/dev/video{i}"
        # 프레임 싱크 켜기
        cmd = f"v4l2-ctl -d {device_path} --set-ctrl=frame_sync=1"
        try:
            subprocess.run(cmd, shell=True, check=True, stdout=subprocess.DEVNULL)
            print(f"  - Camera {i}: Sync ON")
        except:
            print(f"  - Camera {i}: Warning (Sync 설정 실패, 드라이버 확인 필요)")
    print("[Setup] 완료.\n")

# ==========================================
# 1. 타임스탬프 프로브 (로깅용)
# ==========================================
def probe_callback(pad, info, cam_id):
    buffer = info.get_buffer()
    if buffer:
        # PTS: 카메라 하드웨어 타임스탬프 (V4L2 Driver 제공)
        pts = buffer.pts
        # System Time: 현재 리눅스 시간
        sys_time = time.time_ns()
        
        # CSV 기록
        log_msg = f"{pts},{sys_time}\n"
        try:
            log_files[cam_id].write(log_msg)
        except:
            pass
            
    return Gst.PadProbeReturn.OK

# ==========================================
# 2. 파이프라인 생성 (선생님 코드 기반)
# ==========================================
def create_pipeline(cam_id):
    filename_video = os.path.join(SAVE_DIR, f"cam_{cam_id}.mkv")
    device = f"/dev/video{cam_id}"
    
    # 선생님이 주신 파이프라인 로직 그대로 적용 + 파일 저장으로 변경
    # do-timestamp=true: 드라이버 타임스탬프를 GStreamer로 가져옴
    pipeline_str = (
        f"nvv4l2camerasrc device={device} do-timestamp=true name=src{cam_id} ! "
        f"video/x-raw(memory:NVMM), width={WIDTH}, height={HEIGHT}, format=UYVY, framerate={FPS}/1 ! "
        f"nvvidconv ! "
        f"video/x-raw(memory:NVMM), format=NV12 ! "
        f"nvv4l2h264enc bitrate={BITRATE} control-rate=1 preset-level=1 "
        f"iframeinterval={FPS} idrinterval={FPS} insert-sps-pps=true EnableTwopassCBR=0 ! "
        f"h264parse ! matroskamux ! "
        f"filesink location={filename_video} sync=false"
    )
    
    return Gst.parse_launch(pipeline_str)

# ==========================================
# 3. 종료 및 메인 로직
# ==========================================
def stop_pipelines():
    print("\n[Info] 녹화 종료 중... (EOS 전송)")
    if pipelines:
        # EOS 이벤트 전송 (파일 깨짐 방지)
        for p in pipelines:
            try:
                p.send_event(Gst.Event.new_eos())
            except: pass
            
        print("[Info] 파일 마무리 대기 (3초)...")
        time.sleep(3)
        
        for i, p in enumerate(pipelines):
            p.set_state(Gst.State.NULL)
            if i < len(log_files):
                log_files[i].close()
                
    if main_loop and main_loop.is_running():
        main_loop.quit()

def signal_handler(sig, frame):
    stop_pipelines()
    sys.exit(0)

if __name__ == '__main__':
    # 디스플레이 관련 에러 방지
    if "DISPLAY" in os.environ:
        del os.environ["DISPLAY"]

    signal.signal(signal.SIGINT, signal_handler)
    
    # 저장 폴더 생성
    if not os.path.exists(SAVE_DIR):
        os.makedirs(SAVE_DIR, exist_ok=True)

    # 싱크 설정
    configure_camera_sync()

    print(f"--- 6대 카메라 녹화 시작 (UYVY -> H.264 MKV) ---")
    print(f"저장 경로: {SAVE_DIR}")

    main_loop = GLib.MainLoop()

    try:
        for i in range(NUM_CAMS):
            # 1. CSV 파일 생성
            f = open(os.path.join(SAVE_DIR, f"cam_{i}_timestamps.csv"), "w")
            f.write("pts_ns,system_ns\n")
            log_files.append(f)

            # 2. 파이프라인 생성
            pipeline = create_pipeline(i)
            pipelines.append(pipeline)

            # 3. 타임스탬프 프로브 부착
            # nvv4l2camerasrc(이름: src{i})의 'src' 패드에 부착
            src_element = pipeline.get_by_name(f"src{i}")
            if src_element:
                src_pad = src_element.get_static_pad("src")
                src_pad.add_probe(Gst.PadProbeType.BUFFER, probe_callback, i)
            else:
                print(f"[Error] Cam {i}: src element 못 찾음")

            # 4. 시작
            pipeline.set_state(Gst.State.PLAYING)
            print(f"  - Cam {i} Started.")

        print("\n[Recording] 실행 중... (Ctrl+C로 종료)")
        main_loop.run()

    except Exception as e:
        print(f"Error: {e}")
        stop_pipelines()
