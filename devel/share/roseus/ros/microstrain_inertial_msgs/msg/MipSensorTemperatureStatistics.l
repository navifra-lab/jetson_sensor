;; Auto-generated. Do not edit!


(when (boundp 'microstrain_inertial_msgs::MipSensorTemperatureStatistics)
  (if (not (find-package "MICROSTRAIN_INERTIAL_MSGS"))
    (make-package "MICROSTRAIN_INERTIAL_MSGS"))
  (shadow 'MipSensorTemperatureStatistics (find-package "MICROSTRAIN_INERTIAL_MSGS")))
(unless (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPSENSORTEMPERATURESTATISTICS")
  (make-package "MICROSTRAIN_INERTIAL_MSGS::MIPSENSORTEMPERATURESTATISTICS"))

(in-package "ROS")
;;//! \htmlinclude MipSensorTemperatureStatistics.msg.html


(defclass microstrain_inertial_msgs::MipSensorTemperatureStatistics
  :super ros::object
  :slots (_header _min_temp _max_temp _mean_temp ))

(defmethod microstrain_inertial_msgs::MipSensorTemperatureStatistics
  (:init
   (&key
    ((:header __header) (instance microstrain_inertial_msgs::MipHeader :init))
    ((:min_temp __min_temp) 0.0)
    ((:max_temp __max_temp) 0.0)
    ((:mean_temp __mean_temp) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _min_temp (float __min_temp))
   (setq _max_temp (float __max_temp))
   (setq _mean_temp (float __mean_temp))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:min_temp
   (&optional __min_temp)
   (if __min_temp (setq _min_temp __min_temp)) _min_temp)
  (:max_temp
   (&optional __max_temp)
   (if __max_temp (setq _max_temp __max_temp)) _max_temp)
  (:mean_temp
   (&optional __mean_temp)
   (if __mean_temp (setq _mean_temp __mean_temp)) _mean_temp)
  (:serialization-length
   ()
   (+
    ;; microstrain_inertial_msgs/MipHeader _header
    (send _header :serialization-length)
    ;; float32 _min_temp
    4
    ;; float32 _max_temp
    4
    ;; float32 _mean_temp
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; microstrain_inertial_msgs/MipHeader _header
       (send _header :serialize s)
     ;; float32 _min_temp
       (sys::poke _min_temp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_temp
       (sys::poke _max_temp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _mean_temp
       (sys::poke _mean_temp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; microstrain_inertial_msgs/MipHeader _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _min_temp
     (setq _min_temp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_temp
     (setq _max_temp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _mean_temp
     (setq _mean_temp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get microstrain_inertial_msgs::MipSensorTemperatureStatistics :md5sum-) "6fabd50ba1c185e5cd64c5539c067111")
(setf (get microstrain_inertial_msgs::MipSensorTemperatureStatistics :datatype-) "microstrain_inertial_msgs/MipSensorTemperatureStatistics")
(setf (get microstrain_inertial_msgs::MipSensorTemperatureStatistics :definition-)
      "# Message definition for the MIP field https://files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/0x80/data/0x14.htm

# Header containing common information
#   header.frame_id has no meaning in this message
microstrain_inertial_msgs/MipHeader header

float32 min_temp   # Degrees Celsius
float32 max_temp   # Degrees Celsius
float32 mean_temp  # Degrees Celsius
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



(provide :microstrain_inertial_msgs/MipSensorTemperatureStatistics "6fabd50ba1c185e5cd64c5539c067111")


