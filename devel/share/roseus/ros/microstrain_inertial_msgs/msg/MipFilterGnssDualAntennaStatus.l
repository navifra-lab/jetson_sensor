;; Auto-generated. Do not edit!


(when (boundp 'microstrain_inertial_msgs::MipFilterGnssDualAntennaStatus)
  (if (not (find-package "MICROSTRAIN_INERTIAL_MSGS"))
    (make-package "MICROSTRAIN_INERTIAL_MSGS"))
  (shadow 'MipFilterGnssDualAntennaStatus (find-package "MICROSTRAIN_INERTIAL_MSGS")))
(unless (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERGNSSDUALANTENNASTATUS")
  (make-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERGNSSDUALANTENNASTATUS"))

(in-package "ROS")
;;//! \htmlinclude MipFilterGnssDualAntennaStatus.msg.html


(intern "*FIX_TYPE_FIX_NONE*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERGNSSDUALANTENNASTATUS"))
(shadow '*FIX_TYPE_FIX_NONE* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERGNSSDUALANTENNASTATUS"))
(defconstant microstrain_inertial_msgs::MipFilterGnssDualAntennaStatus::*FIX_TYPE_FIX_NONE* 0)
(intern "*FIX_TYPE_FIX_DA_FLOAT*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERGNSSDUALANTENNASTATUS"))
(shadow '*FIX_TYPE_FIX_DA_FLOAT* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERGNSSDUALANTENNASTATUS"))
(defconstant microstrain_inertial_msgs::MipFilterGnssDualAntennaStatus::*FIX_TYPE_FIX_DA_FLOAT* 1)
(intern "*FIX_TYPE_FIX_DA_FIXED*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERGNSSDUALANTENNASTATUS"))
(shadow '*FIX_TYPE_FIX_DA_FIXED* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERGNSSDUALANTENNASTATUS"))
(defconstant microstrain_inertial_msgs::MipFilterGnssDualAntennaStatus::*FIX_TYPE_FIX_DA_FIXED* 2)

(defun microstrain_inertial_msgs::MipFilterGnssDualAntennaStatus-to-symbol (const)
  (cond
        ((= const 0) 'microstrain_inertial_msgs::MipFilterGnssDualAntennaStatus::*FIX_TYPE_FIX_NONE*)
        ((= const 1) 'microstrain_inertial_msgs::MipFilterGnssDualAntennaStatus::*FIX_TYPE_FIX_DA_FLOAT*)
        ((= const 2) 'microstrain_inertial_msgs::MipFilterGnssDualAntennaStatus::*FIX_TYPE_FIX_DA_FIXED*)
        (t nil)))

(defclass microstrain_inertial_msgs::MipFilterGnssDualAntennaStatus
  :super ros::object
  :slots (_header _time_of_week _heading _heading_unc _fix_type _status_flags _valid_flags ))

(defmethod microstrain_inertial_msgs::MipFilterGnssDualAntennaStatus
  (:init
   (&key
    ((:header __header) (instance microstrain_inertial_msgs::MipHeader :init))
    ((:time_of_week __time_of_week) 0.0)
    ((:heading __heading) 0.0)
    ((:heading_unc __heading_unc) 0.0)
    ((:fix_type __fix_type) 0)
    ((:status_flags __status_flags) (instance microstrain_inertial_msgs::MipFilterGnssDualAntennaStatusStatusFlags :init))
    ((:valid_flags __valid_flags) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _time_of_week (float __time_of_week))
   (setq _heading (float __heading))
   (setq _heading_unc (float __heading_unc))
   (setq _fix_type (round __fix_type))
   (setq _status_flags __status_flags)
   (setq _valid_flags (round __valid_flags))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:time_of_week
   (&optional __time_of_week)
   (if __time_of_week (setq _time_of_week __time_of_week)) _time_of_week)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:heading_unc
   (&optional __heading_unc)
   (if __heading_unc (setq _heading_unc __heading_unc)) _heading_unc)
  (:fix_type
   (&optional __fix_type)
   (if __fix_type (setq _fix_type __fix_type)) _fix_type)
  (:status_flags
   (&rest __status_flags)
   (if (keywordp (car __status_flags))
       (send* _status_flags __status_flags)
     (progn
       (if __status_flags (setq _status_flags (car __status_flags)))
       _status_flags)))
  (:valid_flags
   (&optional __valid_flags)
   (if __valid_flags (setq _valid_flags __valid_flags)) _valid_flags)
  (:serialization-length
   ()
   (+
    ;; microstrain_inertial_msgs/MipHeader _header
    (send _header :serialization-length)
    ;; float32 _time_of_week
    4
    ;; float32 _heading
    4
    ;; float32 _heading_unc
    4
    ;; uint8 _fix_type
    1
    ;; microstrain_inertial_msgs/MipFilterGnssDualAntennaStatusStatusFlags _status_flags
    (send _status_flags :serialization-length)
    ;; uint16 _valid_flags
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; microstrain_inertial_msgs/MipHeader _header
       (send _header :serialize s)
     ;; float32 _time_of_week
       (sys::poke _time_of_week (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _heading_unc
       (sys::poke _heading_unc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _fix_type
       (write-byte _fix_type s)
     ;; microstrain_inertial_msgs/MipFilterGnssDualAntennaStatusStatusFlags _status_flags
       (send _status_flags :serialize s)
     ;; uint16 _valid_flags
       (write-word _valid_flags s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; microstrain_inertial_msgs/MipHeader _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _time_of_week
     (setq _time_of_week (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _heading
     (setq _heading (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _heading_unc
     (setq _heading_unc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _fix_type
     (setq _fix_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; microstrain_inertial_msgs/MipFilterGnssDualAntennaStatusStatusFlags _status_flags
     (send _status_flags :deserialize buf ptr-) (incf ptr- (send _status_flags :serialization-length))
   ;; uint16 _valid_flags
     (setq _valid_flags (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get microstrain_inertial_msgs::MipFilterGnssDualAntennaStatus :md5sum-) "d3e767a3dabde7b291551114e9a5c07c")
(setf (get microstrain_inertial_msgs::MipFilterGnssDualAntennaStatus :datatype-) "microstrain_inertial_msgs/MipFilterGnssDualAntennaStatus")
(setf (get microstrain_inertial_msgs::MipFilterGnssDualAntennaStatus :definition-)
      "# Message definition for the MIP field https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_gnss_dual_antenna_status.htm

# Header containing common information
#   header.frame_id has no meaning in this message
microstrain_inertial_msgs/MipHeader header

# Last dual-antenna GNSS aiding measurement time of week (seconds)
float32 time_of_week

# Heading in radians
float32 heading

# Heading uncertainty in radians
float32 heading_unc

# Fix type indicator. See FIX_TYPE_* enums for possible values
uint8 fix_type

# Parsed out version of the Status Flags bitfield
microstrain_inertial_msgs/MipFilterGnssDualAntennaStatusStatusFlags status_flags

# Valid flags (0 = invalid, 1 = valid)
uint16 valid_flags

# Possible values for fix_type
uint8 FIX_TYPE_FIX_NONE     = 0
uint8 FIX_TYPE_FIX_DA_FLOAT = 1
uint8 FIX_TYPE_FIX_DA_FIXED = 2
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
MSG: microstrain_inertial_msgs/MipFilterGnssDualAntennaStatusStatusFlags
# Message definition for Status Flags field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_gnss_dual_antenna_status.htm?Highlight=dual%20antenna
#   Note: This message will never be published on it's own, only included in other messages.

bool rcv_1_data_valid
bool rcv_2_data_valid
bool antenna_offsets_valid
")



(provide :microstrain_inertial_msgs/MipFilterGnssDualAntennaStatus "d3e767a3dabde7b291551114e9a5c07c")


