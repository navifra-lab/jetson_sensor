; Auto-generated. Do not edit!


(cl:in-package microstrain_inertial_msgs-msg)


;//! \htmlinclude MipFilterAidingMeasurementSummary.msg.html

(cl:defclass <MipFilterAidingMeasurementSummary> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type microstrain_inertial_msgs-msg:MipHeader
    :initform (cl:make-instance 'microstrain_inertial_msgs-msg:MipHeader))
   (time_of_week
    :reader time_of_week
    :initarg :time_of_week
    :type cl:float
    :initform 0.0)
   (source
    :reader source
    :initarg :source
    :type cl:fixnum
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (indicator
    :reader indicator
    :initarg :indicator
    :type microstrain_inertial_msgs-msg:MipFilterAidingMeasurementSummaryIndicator
    :initform (cl:make-instance 'microstrain_inertial_msgs-msg:MipFilterAidingMeasurementSummaryIndicator)))
)

(cl:defclass MipFilterAidingMeasurementSummary (<MipFilterAidingMeasurementSummary>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MipFilterAidingMeasurementSummary>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MipFilterAidingMeasurementSummary)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name microstrain_inertial_msgs-msg:<MipFilterAidingMeasurementSummary> is deprecated: use microstrain_inertial_msgs-msg:MipFilterAidingMeasurementSummary instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MipFilterAidingMeasurementSummary>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:header-val is deprecated.  Use microstrain_inertial_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'time_of_week-val :lambda-list '(m))
(cl:defmethod time_of_week-val ((m <MipFilterAidingMeasurementSummary>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:time_of_week-val is deprecated.  Use microstrain_inertial_msgs-msg:time_of_week instead.")
  (time_of_week m))

(cl:ensure-generic-function 'source-val :lambda-list '(m))
(cl:defmethod source-val ((m <MipFilterAidingMeasurementSummary>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:source-val is deprecated.  Use microstrain_inertial_msgs-msg:source instead.")
  (source m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <MipFilterAidingMeasurementSummary>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:type-val is deprecated.  Use microstrain_inertial_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'indicator-val :lambda-list '(m))
(cl:defmethod indicator-val ((m <MipFilterAidingMeasurementSummary>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:indicator-val is deprecated.  Use microstrain_inertial_msgs-msg:indicator instead.")
  (indicator m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MipFilterAidingMeasurementSummary>)))
    "Constants for message type '<MipFilterAidingMeasurementSummary>"
  '((:TYPE_GNSS . 1)
    (:TYPE_DUAL_ANTENNA . 2)
    (:TYPE_HEADING . 3)
    (:TYPE_PRESSURE . 4)
    (:TYPE_MAGNETOMETER . 5)
    (:TYPE_SPEED . 6))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MipFilterAidingMeasurementSummary)))
    "Constants for message type 'MipFilterAidingMeasurementSummary"
  '((:TYPE_GNSS . 1)
    (:TYPE_DUAL_ANTENNA . 2)
    (:TYPE_HEADING . 3)
    (:TYPE_PRESSURE . 4)
    (:TYPE_MAGNETOMETER . 5)
    (:TYPE_SPEED . 6))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MipFilterAidingMeasurementSummary>) ostream)
  "Serializes a message object of type '<MipFilterAidingMeasurementSummary>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'time_of_week))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'source)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'indicator) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MipFilterAidingMeasurementSummary>) istream)
  "Deserializes a message object of type '<MipFilterAidingMeasurementSummary>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time_of_week) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'source)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'indicator) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MipFilterAidingMeasurementSummary>)))
  "Returns string type for a message object of type '<MipFilterAidingMeasurementSummary>"
  "microstrain_inertial_msgs/MipFilterAidingMeasurementSummary")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MipFilterAidingMeasurementSummary)))
  "Returns string type for a message object of type 'MipFilterAidingMeasurementSummary"
  "microstrain_inertial_msgs/MipFilterAidingMeasurementSummary")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MipFilterAidingMeasurementSummary>)))
  "Returns md5sum for a message object of type '<MipFilterAidingMeasurementSummary>"
  "8a98270a16f24fc609dbe34498053146")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MipFilterAidingMeasurementSummary)))
  "Returns md5sum for a message object of type 'MipFilterAidingMeasurementSummary"
  "8a98270a16f24fc609dbe34498053146")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MipFilterAidingMeasurementSummary>)))
  "Returns full string definition for message of type '<MipFilterAidingMeasurementSummary>"
  (cl:format cl:nil "# Message definition for the MIP field https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_aiding_measurement_summary.htm~%~%# Header containing common information~%#   header.frame_id has no meaning in this message~%microstrain_inertial_msgs/MipHeader header~%~%# GPS time of week (seconds)~%float64 time_of_week~%~%# Source used when type is set to TYPE_GNSS to specify which GNSS module this message is for~%uint8 source~%~%# Type of the aiding measurement. See TYPE_* enums for possible values~%uint8 type~%~%# Parsed version of indicator bitfield~%microstrain_inertial_msgs/MipFilterAidingMeasurementSummaryIndicator indicator~%~%# Possible values for type~%uint8 TYPE_GNSS         = 1~%uint8 TYPE_DUAL_ANTENNA = 2~%uint8 TYPE_HEADING      = 3~%uint8 TYPE_PRESSURE     = 4~%uint8 TYPE_MAGNETOMETER = 5~%uint8 TYPE_SPEED        = 6~%================================================================================~%MSG: microstrain_inertial_msgs/MipHeader~%# Represents a standard header that all MIP fields should include at the beginning of their message definition~%#   Note: This message will never be published on it's own, only included in other messages~%~%# Standard ROS header.~%#   header.stamp will always be populated with the ROS time that this message was populated~%#   header.frame_id is dependent on the full message definition. Most messages will not use this~%std_msgs/Header header~%~%# If the message was triggered by an event, this will be set, otherwise it will be set to 0 (will be 0 most of the time)~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_event_source.htm~%uint8 event_source~%~%# Reference timestamp of when the data was sampled if the device supports it. For devices that do not support this, it will always be 0~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_reference_timestamp.htm~%uint64 reference_timestamp~%~%# GPS timestamp of when the data was sampled if the device supports it~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%# Note that this timestamp may be blank in certain messages, but there will often be equivalent fields in the messages~%microstrain_inertial_msgs/MipGpsTimestamp gps_timestamp~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestamp~%# Definition of a GPS timestamp.~%# For more information see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%#   Note: This message will never be published on it's own, only included in other messages~%~%# GPS time of week (seconds)~%float64 tow~%~%# GPS Week number since 1980 (weeks)~%uint16 week_number~%~%# Valid Flags bitfield~%microstrain_inertial_msgs/MipGpsTimestampValidFlags valid_flags~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestampValidFlags~%# Message definition for the valid_flags field of https://files.microstrain.com/CV7+Online/external_content/dcp/Data/0xff/data/0xd3.htm~%#   Note: This message will never be published on it's own, only included in other messages.~%~%# Whole number seconds TOW has been set~%bool tow~%~%# Week number has been set~%bool week_number~%~%# Both TOW and Week Number have been set~%bool time_valid~%================================================================================~%MSG: microstrain_inertial_msgs/MipFilterAidingMeasurementSummaryIndicator~%# Message definition for the indicator field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_aiding_measurement_summary.htm?Highlight=filter%20aiding%20measurement~%#   Note: This message will never be published on it's own, only included in other messages~%~%bool enabled~%bool used~%bool residual_high_warning~%bool sample_time_warning~%bool configuration_error~%bool max_num_meas_exceeded~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MipFilterAidingMeasurementSummary)))
  "Returns full string definition for message of type 'MipFilterAidingMeasurementSummary"
  (cl:format cl:nil "# Message definition for the MIP field https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_aiding_measurement_summary.htm~%~%# Header containing common information~%#   header.frame_id has no meaning in this message~%microstrain_inertial_msgs/MipHeader header~%~%# GPS time of week (seconds)~%float64 time_of_week~%~%# Source used when type is set to TYPE_GNSS to specify which GNSS module this message is for~%uint8 source~%~%# Type of the aiding measurement. See TYPE_* enums for possible values~%uint8 type~%~%# Parsed version of indicator bitfield~%microstrain_inertial_msgs/MipFilterAidingMeasurementSummaryIndicator indicator~%~%# Possible values for type~%uint8 TYPE_GNSS         = 1~%uint8 TYPE_DUAL_ANTENNA = 2~%uint8 TYPE_HEADING      = 3~%uint8 TYPE_PRESSURE     = 4~%uint8 TYPE_MAGNETOMETER = 5~%uint8 TYPE_SPEED        = 6~%================================================================================~%MSG: microstrain_inertial_msgs/MipHeader~%# Represents a standard header that all MIP fields should include at the beginning of their message definition~%#   Note: This message will never be published on it's own, only included in other messages~%~%# Standard ROS header.~%#   header.stamp will always be populated with the ROS time that this message was populated~%#   header.frame_id is dependent on the full message definition. Most messages will not use this~%std_msgs/Header header~%~%# If the message was triggered by an event, this will be set, otherwise it will be set to 0 (will be 0 most of the time)~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_event_source.htm~%uint8 event_source~%~%# Reference timestamp of when the data was sampled if the device supports it. For devices that do not support this, it will always be 0~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_reference_timestamp.htm~%uint64 reference_timestamp~%~%# GPS timestamp of when the data was sampled if the device supports it~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%# Note that this timestamp may be blank in certain messages, but there will often be equivalent fields in the messages~%microstrain_inertial_msgs/MipGpsTimestamp gps_timestamp~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestamp~%# Definition of a GPS timestamp.~%# For more information see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%#   Note: This message will never be published on it's own, only included in other messages~%~%# GPS time of week (seconds)~%float64 tow~%~%# GPS Week number since 1980 (weeks)~%uint16 week_number~%~%# Valid Flags bitfield~%microstrain_inertial_msgs/MipGpsTimestampValidFlags valid_flags~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestampValidFlags~%# Message definition for the valid_flags field of https://files.microstrain.com/CV7+Online/external_content/dcp/Data/0xff/data/0xd3.htm~%#   Note: This message will never be published on it's own, only included in other messages.~%~%# Whole number seconds TOW has been set~%bool tow~%~%# Week number has been set~%bool week_number~%~%# Both TOW and Week Number have been set~%bool time_valid~%================================================================================~%MSG: microstrain_inertial_msgs/MipFilterAidingMeasurementSummaryIndicator~%# Message definition for the indicator field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_aiding_measurement_summary.htm?Highlight=filter%20aiding%20measurement~%#   Note: This message will never be published on it's own, only included in other messages~%~%bool enabled~%bool used~%bool residual_high_warning~%bool sample_time_warning~%bool configuration_error~%bool max_num_meas_exceeded~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MipFilterAidingMeasurementSummary>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'indicator))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MipFilterAidingMeasurementSummary>))
  "Converts a ROS message object to a list"
  (cl:list 'MipFilterAidingMeasurementSummary
    (cl:cons ':header (header msg))
    (cl:cons ':time_of_week (time_of_week msg))
    (cl:cons ':source (source msg))
    (cl:cons ':type (type msg))
    (cl:cons ':indicator (indicator msg))
))
