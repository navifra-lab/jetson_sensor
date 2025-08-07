#!/usr/bin/env python3

import rclpy
from rclpy.node import Node
import gi
gi.require_version('Gst', '1.0')
from gi.repository import Gst, GLib
import threading
import sys

class CameraStreamer(Node):
    def __init__(self):
        super().__init__('camera_streamer')

        self.client_ip = "169.254.150.100"
        self.ports = [7777, 7778, 7779, 7780]
        self.devices = [
            "/dev/video0", "/dev/video1", "/dev/video2", "/dev/video3"
        ]

        threads = []
        for device, port in zip(self.devices, self.ports):
            thread = threading.Thread(target=self.run_pipeline, args=(device, self.client_ip, port))
            threads.append(thread)
            thread.start()

        for thread in threads:
            thread.join()

    def create_pipeline(self, pipeline_description):
        try:
            pipeline = Gst.parse_launch(pipeline_description)
            if not pipeline:
                raise Exception("파이프라인 생성 실패")
            return pipeline
        except Exception as e:
            self.get_logger().error(f"파이프라인 생성 중 오류 발생: {e}")
            sys.exit(1)

    def on_message(self, bus, message):
        t = message.type
        if t == Gst.MessageType.EOS:
            self.get_logger().info("End-Of-Stream 도달")
        elif t == Gst.MessageType.ERROR:
            err, debug = message.parse_error()
            self.get_logger().error(f"에러: {err}, 디버그 정보: {debug}")

    def run_pipeline(self, device, client_ip, port):
        pipeline_description = (
	    f"v4l2src device={device} ! "
	    "videorate ! video/x-raw, format=UYVY, width=1920, height=1200, framerate=10/1 ! "
	    "nvvidconv ! "
	    "video/x-raw(memory:NVMM), format=I420, width=1920, height=1200, framerate=10/1 ! "
	    "nvjpegenc ! rtpjpegpay ! "
	    f"queue max-size-buffers=10 max-size-bytes=0 max-size-time=0 ! "
	    f"udpsink host={client_ip} port={port} sync=false async=false"
	)



        self.get_logger().info(f"파이프라인 실행: {pipeline_description}")
        pipeline = self.create_pipeline(pipeline_description)

        bus = pipeline.get_bus()
        bus.add_signal_watch()
        bus.connect("message", self.on_message)

        pipeline.set_state(Gst.State.PLAYING)
        self.get_logger().info(f"{device} -> {client_ip}:{port} 전송 중...")

        try:
            loop = GLib.MainLoop()
            loop.run()
        except KeyboardInterrupt:
            self.get_logger().info(f"{device} 송출 중단됨.")
        finally:
            pipeline.set_state(Gst.State.NULL)
            self.get_logger().info(f"{device} 송출 종료.")


def main():
    rclpy.init()
    Gst.init(None)
    node = CameraStreamer()
    rclpy.shutdown()

if __name__ == "__main__":
    main()

