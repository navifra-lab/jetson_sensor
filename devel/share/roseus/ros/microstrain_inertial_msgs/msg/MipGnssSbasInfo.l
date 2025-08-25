;; Auto-generated. Do not edit!


(when (boundp 'microstrain_inertial_msgs::MipGnssSbasInfo)
  (if (not (find-package "MICROSTRAIN_INERTIAL_MSGS"))
    (make-package "MICROSTRAIN_INERTIAL_MSGS"))
  (shadow 'MipGnssSbasInfo (find-package "MICROSTRAIN_INERTIAL_MSGS")))
(unless (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSSBASINFO")
  (make-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSSBASINFO"))

(in-package "ROS")
;;//! \htmlinclude MipGnssSbasInfo.msg.html


(intern "*SBAS_SYSTEM_UNKNOWN*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSSBASINFO"))
(shadow '*SBAS_SYSTEM_UNKNOWN* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSSBASINFO"))
(defconstant microstrain_inertial_msgs::MipGnssSbasInfo::*SBAS_SYSTEM_UNKNOWN* 0)
(intern "*SBAS_SYSTEM_WAAS*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSSBASINFO"))
(shadow '*SBAS_SYSTEM_WAAS* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSSBASINFO"))
(defconstant microstrain_inertial_msgs::MipGnssSbasInfo::*SBAS_SYSTEM_WAAS* 1)
(intern "*SBAS_SYSTEM_EGNOS*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSSBASINFO"))
(shadow '*SBAS_SYSTEM_EGNOS* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSSBASINFO"))
(defconstant microstrain_inertial_msgs::MipGnssSbasInfo::*SBAS_SYSTEM_EGNOS* 2)
(intern "*SBAS_SYSTEM_MSAS*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSSBASINFO"))
(shadow '*SBAS_SYSTEM_MSAS* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSSBASINFO"))
(defconstant microstrain_inertial_msgs::MipGnssSbasInfo::*SBAS_SYSTEM_MSAS* 3)
(intern "*SBAS_SYSTEM_GAGAN*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSSBASINFO"))
(shadow '*SBAS_SYSTEM_GAGAN* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSSBASINFO"))
(defconstant microstrain_inertial_msgs::MipGnssSbasInfo::*SBAS_SYSTEM_GAGAN* 4)

(defun microstrain_inertial_msgs::MipGnssSbasInfo-to-symbol (const)
  (cond
        ((= const 0) 'microstrain_inertial_msgs::MipGnssSbasInfo::*SBAS_SYSTEM_UNKNOWN*)
        ((= const 1) 'microstrain_inertial_msgs::MipGnssSbasInfo::*SBAS_SYSTEM_WAAS*)
        ((= const 2) 'microstrain_inertial_msgs::MipGnssSbasInfo::*SBAS_SYSTEM_EGNOS*)
        ((= const 3) 'microstrain_inertial_msgs::MipGnssSbasInfo::*SBAS_SYSTEM_MSAS*)
        ((= const 4) 'microstrain_inertial_msgs::MipGnssSbasInfo::*SBAS_SYSTEM_GAGAN*)
        (t nil)))

(defclass microstrain_inertial_msgs::MipGnssSbasInfo
  :super ros::object
  :slots (_header _time_of_week _week_number _sbas_system _sbas_id _count _sbas_status ))

(defmethod microstrain_inertial_msgs::MipGnssSbasInfo
  (:init
   (&key
    ((:header __header) (instance microstrain_inertial_msgs::MipHeader :init))
    ((:time_of_week __time_of_week) 0.0)
    ((:week_number __week_number) 0)
    ((:sbas_system __sbas_system) 0)
    ((:sbas_id __sbas_id) 0)
    ((:count __count) 0)
    ((:sbas_status __sbas_status) (instance microstrain_inertial_msgs::MipGnssSbasInfoSbasStatus :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _time_of_week (float __time_of_week))
   (setq _week_number (round __week_number))
   (setq _sbas_system (round __sbas_system))
   (setq _sbas_id (round __sbas_id))
   (setq _count (round __count))
   (setq _sbas_status __sbas_status)
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
  (:week_number
   (&optional __week_number)
   (if __week_number (setq _week_number __week_number)) _week_number)
  (:sbas_system
   (&optional __sbas_system)
   (if __sbas_system (setq _sbas_system __sbas_system)) _sbas_system)
  (:sbas_id
   (&optional __sbas_id)
   (if __sbas_id (setq _sbas_id __sbas_id)) _sbas_id)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:sbas_status
   (&rest __sbas_status)
   (if (keywordp (car __sbas_status))
       (send* _sbas_status __sbas_status)
     (progn
       (if __sbas_status (setq _sbas_status (car __sbas_status)))
       _sbas_status)))
  (:serialization-length
   ()
   (+
    ;; microstrain_inertial_msgs/MipHeader _header
    (send _header :serialization-length)
    ;; float64 _time_of_week
    8
    ;; uint16 _week_number
    2
    ;; uint8 _sbas_system
    1
    ;; uint8 _sbas_id
    1
    ;; uint8 _count
    1
    ;; microstrain_inertial_msgs/MipGnssSbasInfoSbasStatus _sbas_status
    (send _sbas_status :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; microstrain_inertial_msgs/MipHeader _header
       (send _header :serialize s)
     ;; float64 _time_of_week
       (sys::poke _time_of_week (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint16 _week_number
       (write-word _week_number s)
     ;; uint8 _sbas_system
       (write-byte _sbas_system s)
     ;; uint8 _sbas_id
       (write-byte _sbas_id s)
     ;; uint8 _count
       (write-byte _count s)
     ;; microstrain_inertial_msgs/MipGnssSbasInfoSbasStatus _sbas_status
       (send _sbas_status :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; microstrain_inertial_msgs/MipHeader _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _time_of_week
     (setq _time_of_week (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint16 _week_number
     (setq _week_number (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _sbas_system
     (setq _sbas_system (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _sbas_id
     (setq _sbas_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _count
     (setq _count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; microstrain_inertial_msgs/MipGnssSbasInfoSbasStatus _sbas_status
     (send _sbas_status :deserialize buf ptr-) (incf ptr- (send _sbas_status :serialization-length))
   ;;
   self)
  )

(setf (get microstrain_inertial_msgs::MipGnssSbasInfo :md5sum-) "3bf8d39005d90e152e75be3cb6afe0a6")
(setf (get microstrain_inertial_msgs::MipGnssSbasInfo :datatype-) "microstrain_inertial_msgs/MipGnssSbasInfo")
(setf (get microstrain_inertial_msgs::MipGnssSbasInfo :definition-)
      "# Message definition for the MIP field https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/gnss_recv_1/data/mip_field_gnss_sbas_info.htm

# Header containing common information
#   header.frame_id has no meaning in this message
microstrain_inertial_msgs/MipHeader header

# GPS time of week (seconds)
float64 time_of_week

# GPS weeks since 1980 (weeks)
uint16 week_number

# SBAS system if. See SBAS_SYSTEM_* enums for possible values
uint8 sbas_system

# SBAS satellite id
uint8 sbas_id

# Number of SBAS corrections
uint8 count

# Parsed out version of the SBAS status bitfield
microstrain_inertial_msgs/MipGnssSbasInfoSbasStatus sbas_status

# Possible values for the sbas_system field
uint8 SBAS_SYSTEM_UNKNOWN = 0
uint8 SBAS_SYSTEM_WAAS    = 1
uint8 SBAS_SYSTEM_EGNOS   = 2
uint8 SBAS_SYSTEM_MSAS    = 3
uint8 SBAS_SYSTEM_GAGAN   = 4
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
MSG: microstrain_inertial_msgs/MipGnssSbasInfoSbasStatus
# Message definition for the Sbas Status field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/gnss_recv_1/data/mip_field_gnss_sbas_info.htm?Highlight=sbas%20info
#   Note: This message will never be published on it's own, only included in other messages.

bool range_available
bool corrections_available
bool integrity_available
bool test_mode
")



(provide :microstrain_inertial_msgs/MipGnssSbasInfo "3bf8d39005d90e152e75be3cb6afe0a6")


