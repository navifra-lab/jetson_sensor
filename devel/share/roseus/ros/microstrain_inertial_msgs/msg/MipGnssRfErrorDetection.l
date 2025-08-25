;; Auto-generated. Do not edit!


(when (boundp 'microstrain_inertial_msgs::MipGnssRfErrorDetection)
  (if (not (find-package "MICROSTRAIN_INERTIAL_MSGS"))
    (make-package "MICROSTRAIN_INERTIAL_MSGS"))
  (shadow 'MipGnssRfErrorDetection (find-package "MICROSTRAIN_INERTIAL_MSGS")))
(unless (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSRFERRORDETECTION")
  (make-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSRFERRORDETECTION"))

(in-package "ROS")
;;//! \htmlinclude MipGnssRfErrorDetection.msg.html


(intern "*RF_BAND_UNKNOWN*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSRFERRORDETECTION"))
(shadow '*RF_BAND_UNKNOWN* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSRFERRORDETECTION"))
(defconstant microstrain_inertial_msgs::MipGnssRfErrorDetection::*RF_BAND_UNKNOWN* 0)
(intern "*RF_BAND_L1*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSRFERRORDETECTION"))
(shadow '*RF_BAND_L1* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSRFERRORDETECTION"))
(defconstant microstrain_inertial_msgs::MipGnssRfErrorDetection::*RF_BAND_L1* 1)
(intern "*RF_BAND_L2*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSRFERRORDETECTION"))
(shadow '*RF_BAND_L2* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSRFERRORDETECTION"))
(defconstant microstrain_inertial_msgs::MipGnssRfErrorDetection::*RF_BAND_L2* 2)
(intern "*RF_BAND_L5*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSRFERRORDETECTION"))
(shadow '*RF_BAND_L5* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSRFERRORDETECTION"))
(defconstant microstrain_inertial_msgs::MipGnssRfErrorDetection::*RF_BAND_L5* 5)
(intern "*JAMMING_STATE_UNKNOWN*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSRFERRORDETECTION"))
(shadow '*JAMMING_STATE_UNKNOWN* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSRFERRORDETECTION"))
(defconstant microstrain_inertial_msgs::MipGnssRfErrorDetection::*JAMMING_STATE_UNKNOWN* 0)
(intern "*JAMMING_STATE_NONE*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSRFERRORDETECTION"))
(shadow '*JAMMING_STATE_NONE* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSRFERRORDETECTION"))
(defconstant microstrain_inertial_msgs::MipGnssRfErrorDetection::*JAMMING_STATE_NONE* 1)
(intern "*JAMMING_STATE_PARTIAL*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSRFERRORDETECTION"))
(shadow '*JAMMING_STATE_PARTIAL* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSRFERRORDETECTION"))
(defconstant microstrain_inertial_msgs::MipGnssRfErrorDetection::*JAMMING_STATE_PARTIAL* 2)
(intern "*JAMMING_STATE_SIGNIFICANT*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSRFERRORDETECTION"))
(shadow '*JAMMING_STATE_SIGNIFICANT* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSRFERRORDETECTION"))
(defconstant microstrain_inertial_msgs::MipGnssRfErrorDetection::*JAMMING_STATE_SIGNIFICANT* 3)
(intern "*SPOOFING_STATE_UNKNOWN*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSRFERRORDETECTION"))
(shadow '*SPOOFING_STATE_UNKNOWN* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSRFERRORDETECTION"))
(defconstant microstrain_inertial_msgs::MipGnssRfErrorDetection::*SPOOFING_STATE_UNKNOWN* 0)
(intern "*SPOOFING_STATE_NONE*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSRFERRORDETECTION"))
(shadow '*SPOOFING_STATE_NONE* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSRFERRORDETECTION"))
(defconstant microstrain_inertial_msgs::MipGnssRfErrorDetection::*SPOOFING_STATE_NONE* 1)
(intern "*SPOOFING_STATE_PARTIAL*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSRFERRORDETECTION"))
(shadow '*SPOOFING_STATE_PARTIAL* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSRFERRORDETECTION"))
(defconstant microstrain_inertial_msgs::MipGnssRfErrorDetection::*SPOOFING_STATE_PARTIAL* 2)
(intern "*SPOOFING_STATE_SIGNIFICANT*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSRFERRORDETECTION"))
(shadow '*SPOOFING_STATE_SIGNIFICANT* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSRFERRORDETECTION"))
(defconstant microstrain_inertial_msgs::MipGnssRfErrorDetection::*SPOOFING_STATE_SIGNIFICANT* 3)

(defun microstrain_inertial_msgs::MipGnssRfErrorDetection-to-symbol (const)
  (cond
        ((= const 0) 'microstrain_inertial_msgs::MipGnssRfErrorDetection::*RF_BAND_UNKNOWN*)
        ((= const 1) 'microstrain_inertial_msgs::MipGnssRfErrorDetection::*RF_BAND_L1*)
        ((= const 2) 'microstrain_inertial_msgs::MipGnssRfErrorDetection::*RF_BAND_L2*)
        ((= const 5) 'microstrain_inertial_msgs::MipGnssRfErrorDetection::*RF_BAND_L5*)
        ((= const 0) 'microstrain_inertial_msgs::MipGnssRfErrorDetection::*JAMMING_STATE_UNKNOWN*)
        ((= const 1) 'microstrain_inertial_msgs::MipGnssRfErrorDetection::*JAMMING_STATE_NONE*)
        ((= const 2) 'microstrain_inertial_msgs::MipGnssRfErrorDetection::*JAMMING_STATE_PARTIAL*)
        ((= const 3) 'microstrain_inertial_msgs::MipGnssRfErrorDetection::*JAMMING_STATE_SIGNIFICANT*)
        ((= const 0) 'microstrain_inertial_msgs::MipGnssRfErrorDetection::*SPOOFING_STATE_UNKNOWN*)
        ((= const 1) 'microstrain_inertial_msgs::MipGnssRfErrorDetection::*SPOOFING_STATE_NONE*)
        ((= const 2) 'microstrain_inertial_msgs::MipGnssRfErrorDetection::*SPOOFING_STATE_PARTIAL*)
        ((= const 3) 'microstrain_inertial_msgs::MipGnssRfErrorDetection::*SPOOFING_STATE_SIGNIFICANT*)
        (t nil)))

(defclass microstrain_inertial_msgs::MipGnssRfErrorDetection
  :super ros::object
  :slots (_header _rf_band _jamming_state _spoofing_state ))

(defmethod microstrain_inertial_msgs::MipGnssRfErrorDetection
  (:init
   (&key
    ((:header __header) (instance microstrain_inertial_msgs::MipHeader :init))
    ((:rf_band __rf_band) 0)
    ((:jamming_state __jamming_state) 0)
    ((:spoofing_state __spoofing_state) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _rf_band (round __rf_band))
   (setq _jamming_state (round __jamming_state))
   (setq _spoofing_state (round __spoofing_state))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:rf_band
   (&optional __rf_band)
   (if __rf_band (setq _rf_band __rf_band)) _rf_band)
  (:jamming_state
   (&optional __jamming_state)
   (if __jamming_state (setq _jamming_state __jamming_state)) _jamming_state)
  (:spoofing_state
   (&optional __spoofing_state)
   (if __spoofing_state (setq _spoofing_state __spoofing_state)) _spoofing_state)
  (:serialization-length
   ()
   (+
    ;; microstrain_inertial_msgs/MipHeader _header
    (send _header :serialization-length)
    ;; uint8 _rf_band
    1
    ;; uint8 _jamming_state
    1
    ;; uint8 _spoofing_state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; microstrain_inertial_msgs/MipHeader _header
       (send _header :serialize s)
     ;; uint8 _rf_band
       (write-byte _rf_band s)
     ;; uint8 _jamming_state
       (write-byte _jamming_state s)
     ;; uint8 _spoofing_state
       (write-byte _spoofing_state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; microstrain_inertial_msgs/MipHeader _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _rf_band
     (setq _rf_band (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _jamming_state
     (setq _jamming_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _spoofing_state
     (setq _spoofing_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get microstrain_inertial_msgs::MipGnssRfErrorDetection :md5sum-) "31a70c5661fd36dfd41faec104fad00d")
(setf (get microstrain_inertial_msgs::MipGnssRfErrorDetection :datatype-) "microstrain_inertial_msgs/MipGnssRfErrorDetection")
(setf (get microstrain_inertial_msgs::MipGnssRfErrorDetection :definition-)
      "# Message definition for the MIP field https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/gnss_recv_1/data/mip_field_gnss_rf_error_detection.htm

# Header containing common information
#   header.frame_id has no meaning in this message
microstrain_inertial_msgs/MipHeader header

# RF Band of the reported information. See RF_BAND_* enums for possible values
uint8 rf_band

# GNSS Jamming State (as reported by the GNSS module). See JAMMING_STATE_* enums for possible values
uint8 jamming_state

# GNSS Spoofing State (as reported by the GNSS module). See SPOOFING_STATE_* enums for possible values
uint8 spoofing_state

# Enum values for rf_band field
uint8 RF_BAND_UNKNOWN = 0
uint8 RF_BAND_L1      = 1
uint8 RF_BAND_L2      = 2
uint8 RF_BAND_L5      = 5

# Enum values for jamming_state field
uint8 JAMMING_STATE_UNKNOWN     = 0
uint8 JAMMING_STATE_NONE        = 1
uint8 JAMMING_STATE_PARTIAL     = 2
uint8 JAMMING_STATE_SIGNIFICANT = 3

# Enum values for spoofing_state field
uint8 SPOOFING_STATE_UNKNOWN     = 0
uint8 SPOOFING_STATE_NONE        = 1
uint8 SPOOFING_STATE_PARTIAL     = 2
uint8 SPOOFING_STATE_SIGNIFICANT = 3
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



(provide :microstrain_inertial_msgs/MipGnssRfErrorDetection "31a70c5661fd36dfd41faec104fad00d")


