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
# 쉘 스크립트에서 넘겨준 폴더 경로 받기
if len(sys.argv) < 2:
    print("[Error] 저장할 폴더 경로를 인자로 전달해주세요.")
    sys.exit(1)

SAVE_DIR = sys.argv[1]

WIDTH = 1920
HEIGHT = 1200
FPS = 30
BITRATE = 60000000

# ==========================================
# 동적 카메라 감지 (/dev/video0 ~ 5 검사)
# ==========================================
MAX_CHECK = 8
AVAILABLE_CAMS = []
for i in range(MAX_CHECK):
    if os.path.exists(f"/dev/video{i}"):
        AVAILABLE_CAMS.append(i)

pipelines = []
log_files = []
main_loop = None

# ==========================================
# 0. 하드웨어 싱크 설정 (필수)
# ==========================================
def configure_camera_sync():
    print("\n[Setup] 하드웨어 동기화 설정 (v4l2-ctl)...")
    for i in AVAILABLE_CAMS:
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
def probe_callback(pad, info, list_idx):
    buffer = info.get_buffer()
    if buffer:
        # PTS: 카메라 하드웨어 타임스탬프 (V4L2 Driver 제공)
        pts = buffer.pts
        # System Time: 현재 리눅스 시간
        sys_time = time.time_ns()
        
        # CSV 기록
        log_msg = f"{pts},{sys_time}\n"
        try:
            log_files[list_idx].write(log_msg)
        except:
            pass
            
    return Gst.PadProbeReturn.OK

# ==========================================
# 2. 파이프라인 생성
# ==========================================
def create_pipeline(cam_id):
    filename_video = os.path.join(SAVE_DIR, f"cam_{cam_id}.mkv")
    device = f"/dev/video{cam_id}"
    
    # do-timestamp=true: 드라이버 타임스탬프를 GStreamer로 가져옴
    pipeline_str = (
        f"nvv4l2camerasrc device={device} do-timestamp=true name=src{cam_id} ! "
        f"video/x-raw(memory:NVMM), width={WIDTH}, height={HEIGHT}, format=UYVY, framerate={FPS}/1 ! "
        f"nvvidconv ! "
        f"video/x-raw(memory:NVMM), format=NV12 ! "
        f"nvv4l2h265enc bitrate={BITRATE} control-rate=1 preset-level=1 "
        f"iframeinterval={FPS} idrinterval={FPS} insert-sps-pps=true EnableTwopassCBR=0 ! "
        f"h265parse ! matroskamux ! "
        f"filesink location={filename_video} sync=false"
    )
    
    return Gst.parse_launch(pipeline_str)

# ==========================================
# 3. 종료 및 메인 로직
# ==========================================
def stop_pipelines():
    print("\n[Info] 카메라 녹화 종료 중... (EOS 전송)")
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
    
    # 저장 폴더 생성 (쉘 스크립트에서 이미 만들었더라도 안전하게 한 번 더 체크)
    if not os.path.exists(SAVE_DIR):
        os.makedirs(SAVE_DIR, exist_ok=True)

    if not AVAILABLE_CAMS:
        print("[Error] 연결된 카메라를 찾을 수 없습니다. (v4l2 장치 확인 필요)")
        sys.exit(1)

    # 싱크 설정
    configure_camera_sync()

    print(f"--- 감지된 카메라 {len(AVAILABLE_CAMS)}대 녹화 시작 (UYVY -> H.264 MKV) ---")
    print(f"연결된 카메라 ID: {AVAILABLE_CAMS}")
    print(f"저장 경로: {SAVE_DIR}")

    main_loop = GLib.MainLoop()

    try:
        for i in AVAILABLE_CAMS:
            # 1. CSV 파일 생성
            f = open(os.path.join(SAVE_DIR, f"cam_{i}_timestamps.csv"), "w")
            f.write("pts_ns,system_ns\n")
            log_files.append(f)
            
            # log_files 리스트에서의 현재 인덱스
            list_idx = len(log_files) - 1

            # 2. 파이프라인 생성
            pipeline = create_pipeline(i)
            pipelines.append(pipeline)

            # 3. 타임스탬프 프로브 부착
            # nvv4l2camerasrc(이름: src{i})의 'src' 패드에 부착
            src_element = pipeline.get_by_name(f"src{i}")
            if src_element:
                src_pad = src_element.get_static_pad("src")
                src_pad.add_probe(Gst.PadProbeType.BUFFER, probe_callback, list_idx)
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
