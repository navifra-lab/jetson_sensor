;; Auto-generated. Do not edit!


(when (boundp 'microstrain_inertial_msgs::MipFilterAidingMeasurementSummary)
  (if (not (find-package "MICROSTRAIN_INERTIAL_MSGS"))
    (make-package "MICROSTRAIN_INERTIAL_MSGS"))
  (shadow 'MipFilterAidingMeasurementSummary (find-package "MICROSTRAIN_INERTIAL_MSGS")))
(unless (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERAIDINGMEASUREMENTSUMMARY")
  (make-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERAIDINGMEASUREMENTSUMMARY"))

(in-package "ROS")
;;//! \htmlinclude MipFilterAidingMeasurementSummary.msg.html


(intern "*TYPE_GNSS*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERAIDINGMEASUREMENTSUMMARY"))
(shadow '*TYPE_GNSS* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERAIDINGMEASUREMENTSUMMARY"))
(defconstant microstrain_inertial_msgs::MipFilterAidingMeasurementSummary::*TYPE_GNSS* 1)
(intern "*TYPE_DUAL_ANTENNA*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERAIDINGMEASUREMENTSUMMARY"))
(shadow '*TYPE_DUAL_ANTENNA* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERAIDINGMEASUREMENTSUMMARY"))
(defconstant microstrain_inertial_msgs::MipFilterAidingMeasurementSummary::*TYPE_DUAL_ANTENNA* 2)
(intern "*TYPE_HEADING*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERAIDINGMEASUREMENTSUMMARY"))
(shadow '*TYPE_HEADING* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERAIDINGMEASUREMENTSUMMARY"))
(defconstant microstrain_inertial_msgs::MipFilterAidingMeasurementSummary::*TYPE_HEADING* 3)
(intern "*TYPE_PRESSURE*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERAIDINGMEASUREMENTSUMMARY"))
(shadow '*TYPE_PRESSURE* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERAIDINGMEASUREMENTSUMMARY"))
(defconstant microstrain_inertial_msgs::MipFilterAidingMeasurementSummary::*TYPE_PRESSURE* 4)
(intern "*TYPE_MAGNETOMETER*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERAIDINGMEASUREMENTSUMMARY"))
(shadow '*TYPE_MAGNETOMETER* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERAIDINGMEASUREMENTSUMMARY"))
(defconstant microstrain_inertial_msgs::MipFilterAidingMeasurementSummary::*TYPE_MAGNETOMETER* 5)
(intern "*TYPE_SPEED*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERAIDINGMEASUREMENTSUMMARY"))
(shadow '*TYPE_SPEED* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERAIDINGMEASUREMENTSUMMARY"))
(defconstant microstrain_inertial_msgs::MipFilterAidingMeasurementSummary::*TYPE_SPEED* 6)

(defun microstrain_inertial_msgs::MipFilterAidingMeasurementSummary-to-symbol (const)
  (cond
        ((= const 1) 'microstrain_inertial_msgs::MipFilterAidingMeasurementSummary::*TYPE_GNSS*)
        ((= const 2) 'microstrain_inertial_msgs::MipFilterAidingMeasurementSummary::*TYPE_DUAL_ANTENNA*)
        ((= const 3) 'microstrain_inertial_msgs::MipFilterAidingMeasurementSummary::*TYPE_HEADING*)
        ((= const 4) 'microstrain_inertial_msgs::MipFilterAidingMeasurementSummary::*TYPE_PRESSURE*)
        ((= const 5) 'microstrain_inertial_msgs::MipFilterAidingMeasurementSummary::*TYPE_MAGNETOMETER*)
        ((= const 6) 'microstrain_inertial_msgs::MipFilterAidingMeasurementSummary::*TYPE_SPEED*)
        (t nil)))

(defclass microstrain_inertial_msgs::MipFilterAidingMeasurementSummary
  :super ros::object
  :slots (_header _time_of_week _source _type _indicator ))

(defmethod microstrain_inertial_msgs::MipFilterAidingMeasurementSummary
  (:init
   (&key
    ((:header __header) (instance microstrain_inertial_msgs::MipHeader :init))
    ((:time_of_week __time_of_week) 0.0)
    ((:source __source) 0)
    ((:type __type) 0)
    ((:indicator __indicator) (instance microstrain_inertial_msgs::MipFilterAidingMeasurementSummaryIndicator :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _time_of_week (float __time_of_week))
   (setq _source (round __source))
   (setq _type (round __type))
   (setq _indicator __indicator)
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
  (:source
   (&optional __source)
   (if __source (setq _source __source)) _source)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:indicator
   (&rest __indicator)
   (if (keywordp (car __indicator))
       (send* _indicator __indicator)
     (progn
       (if __indicator (setq _indicator (car __indicator)))
       _indicator)))
  (:serialization-length
   ()
   (+
    ;; microstrain_inertial_msgs/MipHeader _header
    (send _header :serialization-length)
    ;; float64 _time_of_week
    8
    ;; uint8 _source
    1
    ;; uint8 _type
    1
    ;; microstrain_inertial_msgs/MipFilterAidingMeasurementSummaryIndicator _indicator
    (send _indicator :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; microstrain_inertial_msgs/MipHeader _header
       (send _header :serialize s)
     ;; float64 _time_of_week
       (sys::poke _time_of_week (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _source
       (write-byte _source s)
     ;; uint8 _type
       (write-byte _type s)
     ;; microstrain_inertial_msgs/MipFilterAidingMeasurementSummaryIndicator _indicator
       (send _indicator :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; microstrain_inertial_msgs/MipHeader _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _time_of_week
     (setq _time_of_week (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _source
     (setq _source (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; microstrain_inertial_msgs/MipFilterAidingMeasurementSummaryIndicator _indicator
     (send _indicator :deserialize buf ptr-) (incf ptr- (send _indicator :serialization-length))
   ;;
   self)
  )

(setf (get microstrain_inertial_msgs::MipFilterAidingMeasurementSummary :md5sum-) "8a98270a16f24fc609dbe34498053146")
(setf (get microstrain_inertial_msgs::MipFilterAidingMeasurementSummary :datatype-) "microstrain_inertial_msgs/MipFilterAidingMeasurementSummary")
(setf (get microstrain_inertial_msgs::MipFilterAidingMeasurementSummary :definition-)
      "# Message definition for the MIP field https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_aiding_measurement_summary.htm

# Header containing common information
#   header.frame_id has no meaning in this message
microstrain_inertial_msgs/MipHeader header

# GPS time of week (seconds)
float64 time_of_week

# Source used when type is set to TYPE_GNSS to specify which GNSS module this message is for
uint8 source

# Type of the aiding measurement. See TYPE_* enums for possible values
uint8 type

# Parsed version of indicator bitfield
microstrain_inertial_msgs/MipFilterAidingMeasurementSummaryIndicator indicator

# Possible values for type
uint8 TYPE_GNSS         = 1
uint8 TYPE_DUAL_ANTENNA = 2
uint8 TYPE_HEADING      = 3
uint8 TYPE_PRESSURE     = 4
uint8 TYPE_MAGNETOMETER = 5
uint8 TYPE_SPEED        = 6
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
MSG: microstrain_inertial_msgs/MipFilterAidingMeasurementSummaryIndicator
# Message definition for the indicator field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_aiding_measurement_summary.htm?Highlight=filter%20aiding%20measurement
#   Note: This message will never be published on it's own, only included in other messages

bool enabled
bool used
bool residual_high_warning
bool sample_time_warning
bool configuration_error
bool max_num_meas_exceeded
")



(provide :microstrain_inertial_msgs/MipFilterAidingMeasurementSummary "8a98270a16f24fc609dbe34498053146")


