;; Auto-generated. Do not edit!


(when (boundp 'microstrain_inertial_msgs::MipFilterGnssPositionAidingStatus)
  (if (not (find-package "MICROSTRAIN_INERTIAL_MSGS"))
    (make-package "MICROSTRAIN_INERTIAL_MSGS"))
  (shadow 'MipFilterGnssPositionAidingStatus (find-package "MICROSTRAIN_INERTIAL_MSGS")))
(unless (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERGNSSPOSITIONAIDINGSTATUS")
  (make-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERGNSSPOSITIONAIDINGSTATUS"))

(in-package "ROS")
;;//! \htmlinclude MipFilterGnssPositionAidingStatus.msg.html


(defclass microstrain_inertial_msgs::MipFilterGnssPositionAidingStatus
  :super ros::object
  :slots (_header _receiver_id _time_of_week _status ))

(defmethod microstrain_inertial_msgs::MipFilterGnssPositionAidingStatus
  (:init
   (&key
    ((:header __header) (instance microstrain_inertial_msgs::MipHeader :init))
    ((:receiver_id __receiver_id) 0)
    ((:time_of_week __time_of_week) 0.0)
    ((:status __status) (instance microstrain_inertial_msgs::MipFilterGnssPositionAidingStatusStatus :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _receiver_id (round __receiver_id))
   (setq _time_of_week (float __time_of_week))
   (setq _status __status)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:receiver_id
   (&optional __receiver_id)
   (if __receiver_id (setq _receiver_id __receiver_id)) _receiver_id)
  (:time_of_week
   (&optional __time_of_week)
   (if __time_of_week (setq _time_of_week __time_of_week)) _time_of_week)
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:serialization-length
   ()
   (+
    ;; microstrain_inertial_msgs/MipHeader _header
    (send _header :serialization-length)
    ;; uint8 _receiver_id
    1
    ;; float64 _time_of_week
    8
    ;; microstrain_inertial_msgs/MipFilterGnssPositionAidingStatusStatus _status
    (send _status :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; microstrain_inertial_msgs/MipHeader _header
       (send _header :serialize s)
     ;; uint8 _receiver_id
       (write-byte _receiver_id s)
     ;; float64 _time_of_week
       (sys::poke _time_of_week (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; microstrain_inertial_msgs/MipFilterGnssPositionAidingStatusStatus _status
       (send _status :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; microstrain_inertial_msgs/MipHeader _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _receiver_id
     (setq _receiver_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _time_of_week
     (setq _time_of_week (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; microstrain_inertial_msgs/MipFilterGnssPositionAidingStatusStatus _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;;
   self)
  )

(setf (get microstrain_inertial_msgs::MipFilterGnssPositionAidingStatus :md5sum-) "97f8979b7a4f7e85d0f8ea4ee09129ed")
(setf (get microstrain_inertial_msgs::MipFilterGnssPositionAidingStatus :datatype-) "microstrain_inertial_msgs/MipFilterGnssPositionAidingStatus")
(setf (get microstrain_inertial_msgs::MipFilterGnssPositionAidingStatus :definition-)
      "# Message definition for the MIP field https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_gnss_pos_aid_status.htm

# Header containing common information
#   header.frame_id has no meaning in this message
microstrain_inertial_msgs/MipHeader header

# Receiver ID. For GQ7, this will be 1 for GNSS1 and 2 for GNSS2
uint8 receiver_id

# Last GNSS aiding measurement time of week (seconds)
float64 time_of_week

# Parsed out version of the status bit field
microstrain_inertial_msgs/MipFilterGnssPositionAidingStatusStatus status
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
================================================================================
MSG: microstrain_inertial_msgs/MipFilterGnssPositionAidingStatusStatus
# Message definition for the Status field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_gnss_pos_aid_status.htm?Highlight=gnss%20position%20aiding
#   Note: This message will never be published on it's own, only included in other messages.

bool tight_coupling  # If 1, the Kalman filter is processing raw range information from this GNSS module
bool differential    # If 1, the Kalman filter is processing RTK corrections from this GNSS module
bool integer_fix     # If 1, the Kalman filter has an RTK integer fix from this GNSS module, indicating the best position performance possible
bool gps_l1          # If 1, the Kalman filter is using GPS L1 measurements
bool gps_l2          # If 1, the Kalman filter is using GPS L2 measurements
bool gps_l5          # If 1, the Kalman filter is using GPS L5 measurements
bool glo_l1          # If 1, the Kalman filter is using GLONASS L1 measurements
bool glo_l2          # If 1, the Kalman filter is using GLONASS L2 measurements
bool gal_e1          # If 1, the Kalman filter is using Galileo E1 measurements
bool gal_e5          # If 1, the Kalman filter is using Galileo E5 measurements
bool gal_e6          # If 1, the Kalman filter is using Galileo E6 measurements
bool bei_b1          # If 1, the Kalman filter is using Beidou B1 measurements (not enabled on GQ7 currently)
bool bei_b2          # If 1, the Kalman filter is using Beidou B2 measurements (not enabled on GQ7 currently)
bool bei_b3          # If 1, the Kalman filter is using Beidou B3 measurements (not enabled on GQ7 currently)
bool no_fix          # If 1, this GNSS module is reporting no position fix
bool config_error    # If 1, there is likely an issue with the antenna offset for this GNSS module
")



(provide :microstrain_inertial_msgs/MipFilterGnssPositionAidingStatus "97f8979b7a4f7e85d0f8ea4ee09129ed")


