;; Auto-generated. Do not edit!


(when (boundp 'microstrain_inertial_msgs::MipSystemTimeSyncStatus)
  (if (not (find-package "MICROSTRAIN_INERTIAL_MSGS"))
    (make-package "MICROSTRAIN_INERTIAL_MSGS"))
  (shadow 'MipSystemTimeSyncStatus (find-package "MICROSTRAIN_INERTIAL_MSGS")))
(unless (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPSYSTEMTIMESYNCSTATUS")
  (make-package "MICROSTRAIN_INERTIAL_MSGS::MIPSYSTEMTIMESYNCSTATUS"))

(in-package "ROS")
;;//! \htmlinclude MipSystemTimeSyncStatus.msg.html


(defclass microstrain_inertial_msgs::MipSystemTimeSyncStatus
  :super ros::object
  :slots (_header _time_sync _last_pps_rcvd ))

(defmethod microstrain_inertial_msgs::MipSystemTimeSyncStatus
  (:init
   (&key
    ((:header __header) (instance microstrain_inertial_msgs::MipHeader :init))
    ((:time_sync __time_sync) nil)
    ((:last_pps_rcvd __last_pps_rcvd) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _time_sync __time_sync)
   (setq _last_pps_rcvd (round __last_pps_rcvd))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:time_sync
   (&optional (__time_sync :null))
   (if (not (eq __time_sync :null)) (setq _time_sync __time_sync)) _time_sync)
  (:last_pps_rcvd
   (&optional __last_pps_rcvd)
   (if __last_pps_rcvd (setq _last_pps_rcvd __last_pps_rcvd)) _last_pps_rcvd)
  (:serialization-length
   ()
   (+
    ;; microstrain_inertial_msgs/MipHeader _header
    (send _header :serialization-length)
    ;; bool _time_sync
    1
    ;; uint8 _last_pps_rcvd
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; microstrain_inertial_msgs/MipHeader _header
       (send _header :serialize s)
     ;; bool _time_sync
       (if _time_sync (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _last_pps_rcvd
       (write-byte _last_pps_rcvd s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; microstrain_inertial_msgs/MipHeader _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _time_sync
     (setq _time_sync (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _last_pps_rcvd
     (setq _last_pps_rcvd (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get microstrain_inertial_msgs::MipSystemTimeSyncStatus :md5sum-) "969bacda1b67ecf039821d2c754d7bf4")
(setf (get microstrain_inertial_msgs::MipSystemTimeSyncStatus :datatype-) "microstrain_inertial_msgs/MipSystemTimeSyncStatus")
(setf (get microstrain_inertial_msgs::MipSystemTimeSyncStatus :definition-)
      "# Message definition for the MIP field https://files.microstrain.com/CV7+Online/external_content/dcp/Data/0xa0/data/0x02.htm

# Header containing common information
#   header.frame_id has no meaning in this message
microstrain_inertial_msgs/MipHeader header

# True if sync with the PPS signal is currently valid. False if PPS feature is disabled or a PPS signal is not detected.
bool time_sync

# Elapsed time in seconds since last PPS was received, with a maximum value of 255.
uint8 last_pps_rcvd
================================================================================
MSG: microstrain_inertial_msgs/MipHeader
# Represents a standard header that all MIP fields should include at the beginning of their message definition
#   Note: This message will never be published on it's own, only included in other messages

# Standard ROS header.
#   header.stamp will always be populated with the ROS time that this message was populated
#   header.frame_id is dependent on the full message definition. Most messages will not use this
std_msgs/Header header

# If the message was triggered by an event, this will be set, otherwise it will be set to 0 (will be 0 most of the time)
# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_event_source.htm
uint8 event_source

# Reference timestamp of when the data was sampled if the device supports it. For devices that do not support this, it will always be 0
# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_reference_timestamp.htm
uint64 reference_timestamp

# GPS timestamp of when the data was sampled if the device supports it
# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm
# Note that this timestamp may be blank in certain messages, but there will often be equivalent fields in the messages
microstrain_inertial_msgs/MipGpsTimestamp gps_timestamp
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: microstrain_inertial_msgs/MipGpsTimestamp
# Definition of a GPS timestamp.
# For more information see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm
#   Note: This message will never be published on it's own, only included in other messages

# GPS time of week (seconds)
float64 tow

# GPS Week number since 1980 (weeks)
uint16 week_number

# Valid Flags bitfield
microstrain_inertial_msgs/MipGpsTimestampValidFlags valid_flags
================================================================================
MSG: microstrain_inertial_msgs/MipGpsTimestampValidFlags
# Message definition for the valid_flags field of https://files.microstrain.com/CV7+Online/external_content/dcp/Data/0xff/data/0xd3.htm
#   Note: This message will never be published on it's own, only included in other messages.

# Whole number seconds TOW has been set
bool tow

# Week number has been set
bool week_number

# Both TOW and Week Number have been set
bool time_valid
")



(provide :microstrain_inertial_msgs/MipSystemTimeSyncStatus "969bacda1b67ecf039821d2c754d7bf4")


