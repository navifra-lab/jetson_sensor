;; Auto-generated. Do not edit!


(when (boundp 'microstrain_inertial_msgs::MipGnssFixInfo)
  (if (not (find-package "MICROSTRAIN_INERTIAL_MSGS"))
    (make-package "MICROSTRAIN_INERTIAL_MSGS"))
  (shadow 'MipGnssFixInfo (find-package "MICROSTRAIN_INERTIAL_MSGS")))
(unless (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSFIXINFO")
  (make-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSFIXINFO"))

(in-package "ROS")
;;//! \htmlinclude MipGnssFixInfo.msg.html


(intern "*FIX_TYPE_FIX_3D*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSFIXINFO"))
(shadow '*FIX_TYPE_FIX_3D* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSFIXINFO"))
(defconstant microstrain_inertial_msgs::MipGnssFixInfo::*FIX_TYPE_FIX_3D* 0)
(intern "*FIX_TYPE_FIX_2D*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSFIXINFO"))
(shadow '*FIX_TYPE_FIX_2D* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSFIXINFO"))
(defconstant microstrain_inertial_msgs::MipGnssFixInfo::*FIX_TYPE_FIX_2D* 1)
(intern "*FIX_TYPE_FIX_TIME_ONLY*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSFIXINFO"))
(shadow '*FIX_TYPE_FIX_TIME_ONLY* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSFIXINFO"))
(defconstant microstrain_inertial_msgs::MipGnssFixInfo::*FIX_TYPE_FIX_TIME_ONLY* 2)
(intern "*FIX_TYPE_FIX_NONE*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSFIXINFO"))
(shadow '*FIX_TYPE_FIX_NONE* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSFIXINFO"))
(defconstant microstrain_inertial_msgs::MipGnssFixInfo::*FIX_TYPE_FIX_NONE* 3)
(intern "*FIX_TYPE_FIX_INVALID*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSFIXINFO"))
(shadow '*FIX_TYPE_FIX_INVALID* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSFIXINFO"))
(defconstant microstrain_inertial_msgs::MipGnssFixInfo::*FIX_TYPE_FIX_INVALID* 4)
(intern "*FIX_TYPE_FIX_RTK_FLOAT*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSFIXINFO"))
(shadow '*FIX_TYPE_FIX_RTK_FLOAT* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSFIXINFO"))
(defconstant microstrain_inertial_msgs::MipGnssFixInfo::*FIX_TYPE_FIX_RTK_FLOAT* 5)
(intern "*FIX_TYPE_FIX_RTK_FIXED*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSFIXINFO"))
(shadow '*FIX_TYPE_FIX_RTK_FIXED* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSFIXINFO"))
(defconstant microstrain_inertial_msgs::MipGnssFixInfo::*FIX_TYPE_FIX_RTK_FIXED* 6)

(defun microstrain_inertial_msgs::MipGnssFixInfo-to-symbol (const)
  (cond
        ((= const 0) 'microstrain_inertial_msgs::MipGnssFixInfo::*FIX_TYPE_FIX_3D*)
        ((= const 1) 'microstrain_inertial_msgs::MipGnssFixInfo::*FIX_TYPE_FIX_2D*)
        ((= const 2) 'microstrain_inertial_msgs::MipGnssFixInfo::*FIX_TYPE_FIX_TIME_ONLY*)
        ((= const 3) 'microstrain_inertial_msgs::MipGnssFixInfo::*FIX_TYPE_FIX_NONE*)
        ((= const 4) 'microstrain_inertial_msgs::MipGnssFixInfo::*FIX_TYPE_FIX_INVALID*)
        ((= const 5) 'microstrain_inertial_msgs::MipGnssFixInfo::*FIX_TYPE_FIX_RTK_FLOAT*)
        ((= const 6) 'microstrain_inertial_msgs::MipGnssFixInfo::*FIX_TYPE_FIX_RTK_FIXED*)
        (t nil)))

(defclass microstrain_inertial_msgs::MipGnssFixInfo
  :super ros::object
  :slots (_header _fix_type _num_sv _fix_flags ))

(defmethod microstrain_inertial_msgs::MipGnssFixInfo
  (:init
   (&key
    ((:header __header) (instance microstrain_inertial_msgs::MipHeader :init))
    ((:fix_type __fix_type) 0)
    ((:num_sv __num_sv) 0)
    ((:fix_flags __fix_flags) (instance microstrain_inertial_msgs::MipGnssFixInfoFixFlags :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _fix_type (round __fix_type))
   (setq _num_sv (round __num_sv))
   (setq _fix_flags __fix_flags)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:fix_type
   (&optional __fix_type)
   (if __fix_type (setq _fix_type __fix_type)) _fix_type)
  (:num_sv
   (&optional __num_sv)
   (if __num_sv (setq _num_sv __num_sv)) _num_sv)
  (:fix_flags
   (&rest __fix_flags)
   (if (keywordp (car __fix_flags))
       (send* _fix_flags __fix_flags)
     (progn
       (if __fix_flags (setq _fix_flags (car __fix_flags)))
       _fix_flags)))
  (:serialization-length
   ()
   (+
    ;; microstrain_inertial_msgs/MipHeader _header
    (send _header :serialization-length)
    ;; uint8 _fix_type
    1
    ;; uint8 _num_sv
    1
    ;; microstrain_inertial_msgs/MipGnssFixInfoFixFlags _fix_flags
    (send _fix_flags :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; microstrain_inertial_msgs/MipHeader _header
       (send _header :serialize s)
     ;; uint8 _fix_type
       (write-byte _fix_type s)
     ;; uint8 _num_sv
       (write-byte _num_sv s)
     ;; microstrain_inertial_msgs/MipGnssFixInfoFixFlags _fix_flags
       (send _fix_flags :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; microstrain_inertial_msgs/MipHeader _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _fix_type
     (setq _fix_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _num_sv
     (setq _num_sv (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; microstrain_inertial_msgs/MipGnssFixInfoFixFlags _fix_flags
     (send _fix_flags :deserialize buf ptr-) (incf ptr- (send _fix_flags :serialization-length))
   ;;
   self)
  )

(setf (get microstrain_inertial_msgs::MipGnssFixInfo :md5sum-) "981a71050cd7ff7c9ee9bd9a4ffe93a8")
(setf (get microstrain_inertial_msgs::MipGnssFixInfo :datatype-) "microstrain_inertial_msgs/MipGnssFixInfo")
(setf (get microstrain_inertial_msgs::MipGnssFixInfo :definition-)
      "# Message definition for the MIP field https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/gnss_recv_1/data/mip_field_gnss_fix_info.htm

# Header containing common information
#   header.frame_id has no meaning in this message
microstrain_inertial_msgs/MipHeader header

# Fix type. See FIX_TYPE_* enums for possible values
uint8 fix_type

# Number of satellites in view for this receiver
uint8 num_sv

# Parsed out version of the fix_flags bitfield
microstrain_inertial_msgs/MipGnssFixInfoFixFlags fix_flags

# Valid values for the fix_type field
uint8 FIX_TYPE_FIX_3D        = 0
uint8 FIX_TYPE_FIX_2D        = 1
uint8 FIX_TYPE_FIX_TIME_ONLY = 2
uint8 FIX_TYPE_FIX_NONE      = 3
uint8 FIX_TYPE_FIX_INVALID   = 4
uint8 FIX_TYPE_FIX_RTK_FLOAT = 5
uint8 FIX_TYPE_FIX_RTK_FIXED = 6
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
MSG: microstrain_inertial_msgs/MipGnssFixInfoFixFlags
# Message definition for the Fix Type field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/gnss_recv_1/data/mip_field_gnss_fix_info.htm?Highlight=fix%20info
#   Note: This message will never be published on it's own, only included in other messages.

bool sbas_used
bool dgnss_used
")



(provide :microstrain_inertial_msgs/MipGnssFixInfo "981a71050cd7ff7c9ee9bd9a4ffe93a8")


