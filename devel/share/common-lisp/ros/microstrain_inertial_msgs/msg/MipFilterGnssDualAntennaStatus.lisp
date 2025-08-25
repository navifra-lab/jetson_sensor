; Auto-generated. Do not edit!


(cl:in-package microstrain_inertial_msgs-msg)


;//! \htmlinclude MipFilterGnssDualAntennaStatus.msg.html

(cl:defclass <MipFilterGnssDualAntennaStatus> (roslisp-msg-protocol:ros-message)
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
   (heading
    :reader heading
    :initarg :heading
    :type cl:float
    :initform 0.0)
   (heading_unc
    :reader heading_unc
    :initarg :heading_unc
    :type cl:float
    :initform 0.0)
   (fix_type
    :reader fix_type
    :initarg :fix_type
    :type cl:fixnum
    :initform 0)
   (status_flags
    :reader status_flags
    :initarg :status_flags
    :type microstrain_inertial_msgs-msg:MipFilterGnssDualAntennaStatusStatusFlags
    :initform (cl:make-instance 'microstrain_inertial_msgs-msg:MipFilterGnssDualAntennaStatusStatusFlags))
   (valid_flags
    :reader valid_flags
    :initarg :valid_flags
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MipFilterGnssDualAntennaStatus (<MipFilterGnssDualAntennaStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MipFilterGnssDualAntennaStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MipFilterGnssDualAntennaStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name microstrain_inertial_msgs-msg:<MipFilterGnssDualAntennaStatus> is deprecated: use microstrain_inertial_msgs-msg:MipFilterGnssDualAntennaStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MipFilterGnssDualAntennaStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:header-val is deprecated.  Use microstrain_inertial_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'time_of_week-val :lambda-list '(m))
(cl:defmethod time_of_week-val ((m <MipFilterGnssDualAntennaStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:time_of_week-val is deprecated.  Use microstrain_inertial_msgs-msg:time_of_week instead.")
  (time_of_week m))

(cl:ensure-generic-function 'heading-val :lambda-list '(m))
(cl:defmethod heading-val ((m <MipFilterGnssDualAntennaStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:heading-val is deprecated.  Use microstrain_inertial_msgs-msg:heading instead.")
  (heading m))

(cl:ensure-generic-function 'heading_unc-val :lambda-list '(m))
(cl:defmethod heading_unc-val ((m <MipFilterGnssDualAntennaStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:heading_unc-val is deprecated.  Use microstrain_inertial_msgs-msg:heading_unc instead.")
  (heading_unc m))

(cl:ensure-generic-function 'fix_type-val :lambda-list '(m))
(cl:defmethod fix_type-val ((m <MipFilterGnssDualAntennaStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:fix_type-val is deprecated.  Use microstrain_inertial_msgs-msg:fix_type instead.")
  (fix_type m))

(cl:ensure-generic-function 'status_flags-val :lambda-list '(m))
(cl:defmethod status_flags-val ((m <MipFilterGnssDualAntennaStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:status_flags-val is deprecated.  Use microstrain_inertial_msgs-msg:status_flags instead.")
  (status_flags m))

(cl:ensure-generic-function 'valid_flags-val :lambda-list '(m))
(cl:defmethod valid_flags-val ((m <MipFilterGnssDualAntennaStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:valid_flags-val is deprecated.  Use microstrain_inertial_msgs-msg:valid_flags instead.")
  (valid_flags m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MipFilterGnssDualAntennaStatus>)))
    "Constants for message type '<MipFilterGnssDualAntennaStatus>"
  '((:FIX_TYPE_FIX_NONE . 0)
    (:FIX_TYPE_FIX_DA_FLOAT . 1)
    (:FIX_TYPE_FIX_DA_FIXED . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MipFilterGnssDualAntennaStatus)))
    "Constants for message type 'MipFilterGnssDualAntennaStatus"
  '((:FIX_TYPE_FIX_NONE . 0)
    (:FIX_TYPE_FIX_DA_FLOAT . 1)
    (:FIX_TYPE_FIX_DA_FIXED . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MipFilterGnssDualAntennaStatus>) ostream)
  "Serializes a message object of type '<MipFilterGnssDualAntennaStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time_of_week))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'heading_unc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fix_type)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status_flags) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'valid_flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'valid_flags)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MipFilterGnssDualAntennaStatus>) istream)
  "Deserializes a message object of type '<MipFilterGnssDualAntennaStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time_of_week) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heading) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heading_unc) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fix_type)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status_flags) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'valid_flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'valid_flags)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MipFilterGnssDualAntennaStatus>)))
  "Returns string type for a message object of type '<MipFilterGnssDualAntennaStatus>"
  "microstrain_inertial_msgs/MipFilterGnssDualAntennaStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MipFilterGnssDualAntennaStatus)))
  "Returns string type for a message object of type 'MipFilterGnssDualAntennaStatus"
  "microstrain_inertial_msgs/MipFilterGnssDualAntennaStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MipFilterGnssDualAntennaStatus>)))
  "Returns md5sum for a message object of type '<MipFilterGnssDualAntennaStatus>"
  "d3e767a3dabde7b291551114e9a5c07c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MipFilterGnssDualAntennaStatus)))
  "Returns md5sum for a message object of type 'MipFilterGnssDualAntennaStatus"
  "d3e767a3dabde7b291551114e9a5c07c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MipFilterGnssDualAntennaStatus>)))
  "Returns full string definition for message of type '<MipFilterGnssDualAntennaStatus>"
  (cl:format cl:nil "# Message definition for the MIP field https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_gnss_dual_antenna_status.htm~%~%# Header containing common information~%#   header.frame_id has no meaning in this message~%microstrain_inertial_msgs/MipHeader header~%~%# Last dual-antenna GNSS aiding measurement time of week (seconds)~%float32 time_of_week~%~%# Heading in radians~%float32 heading~%~%# Heading uncertainty in radians~%float32 heading_unc~%~%# Fix type indicator. See FIX_TYPE_* enums for possible values~%uint8 fix_type~%~%# Parsed out version of the Status Flags bitfield~%microstrain_inertial_msgs/MipFilterGnssDualAntennaStatusStatusFlags status_flags~%~%# Valid flags (0 = invalid, 1 = valid)~%uint16 valid_flags~%~%# Possible values for fix_type~%uint8 FIX_TYPE_FIX_NONE     = 0~%uint8 FIX_TYPE_FIX_DA_FLOAT = 1~%uint8 FIX_TYPE_FIX_DA_FIXED = 2~%================================================================================~%MSG: microstrain_inertial_msgs/MipHeader~%# Represents a standard header that all MIP fields should include at the beginning of their message definition~%#   Note: This message will never be published on it's own, only included in other messages~%~%# Standard ROS header.~%#   header.stamp will always be populated with the ROS time that this message was populated~%#   header.frame_id is dependent on the full message definition. Most messages will not use this~%std_msgs/Header header~%~%# If the message was triggered by an event, this will be set, otherwise it will be set to 0 (will be 0 most of the time)~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_event_source.htm~%uint8 event_source~%~%# Reference timestamp of when the data was sampled if the device supports it. For devices that do not support this, it will always be 0~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_reference_timestamp.htm~%uint64 reference_timestamp~%~%# GPS timestamp of when the data was sampled if the device supports it~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%# Note that this timestamp may be blank in certain messages, but there will often be equivalent fields in the messages~%microstrain_inertial_msgs/MipGpsTimestamp gps_timestamp~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestamp~%# Definition of a GPS timestamp.~%# For more information see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%#   Note: This message will never be published on it's own, only included in other messages~%~%# GPS time of week (seconds)~%float64 tow~%~%# GPS Week number since 1980 (weeks)~%uint16 week_number~%~%# Valid Flags bitfield~%microstrain_inertial_msgs/MipGpsTimestampValidFlags valid_flags~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestampValidFlags~%# Message definition for the valid_flags field of https://files.microstrain.com/CV7+Online/external_content/dcp/Data/0xff/data/0xd3.htm~%#   Note: This message will never be published on it's own, only included in other messages.~%~%# Whole number seconds TOW has been set~%bool tow~%~%# Week number has been set~%bool week_number~%~%# Both TOW and Week Number have been set~%bool time_valid~%================================================================================~%MSG: microstrain_inertial_msgs/MipFilterGnssDualAntennaStatusStatusFlags~%# Message definition for Status Flags field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_gnss_dual_antenna_status.htm?Highlight=dual%20antenna~%#   Note: This message will never be published on it's own, only included in other messages.~%~%bool rcv_1_data_valid~%bool rcv_2_data_valid~%bool antenna_offsets_valid~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MipFilterGnssDualAntennaStatus)))
  "Returns full string definition for message of type 'MipFilterGnssDualAntennaStatus"
  (cl:format cl:nil "# Message definition for the MIP field https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_gnss_dual_antenna_status.htm~%~%# Header containing common information~%#   header.frame_id has no meaning in this message~%microstrain_inertial_msgs/MipHeader header~%~%# Last dual-antenna GNSS aiding measurement time of week (seconds)~%float32 time_of_week~%~%# Heading in radians~%float32 heading~%~%# Heading uncertainty in radians~%float32 heading_unc~%~%# Fix type indicator. See FIX_TYPE_* enums for possible values~%uint8 fix_type~%~%# Parsed out version of the Status Flags bitfield~%microstrain_inertial_msgs/MipFilterGnssDualAntennaStatusStatusFlags status_flags~%~%# Valid flags (0 = invalid, 1 = valid)~%uint16 valid_flags~%~%# Possible values for fix_type~%uint8 FIX_TYPE_FIX_NONE     = 0~%uint8 FIX_TYPE_FIX_DA_FLOAT = 1~%uint8 FIX_TYPE_FIX_DA_FIXED = 2~%================================================================================~%MSG: microstrain_inertial_msgs/MipHeader~%# Represents a standard header that all MIP fields should include at the beginning of their message definition~%#   Note: This message will never be published on it's own, only included in other messages~%~%# Standard ROS header.~%#   header.stamp will always be populated with the ROS time that this message was populated~%#   header.frame_id is dependent on the full message definition. Most messages will not use this~%std_msgs/Header header~%~%# If the message was triggered by an event, this will be set, otherwise it will be set to 0 (will be 0 most of the time)~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_event_source.htm~%uint8 event_source~%~%# Reference timestamp of when the data was sampled if the device supports it. For devices that do not support this, it will always be 0~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_reference_timestamp.htm~%uint64 reference_timestamp~%~%# GPS timestamp of when the data was sampled if the device supports it~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%# Note that this timestamp may be blank in certain messages, but there will often be equivalent fields in the messages~%microstrain_inertial_msgs/MipGpsTimestamp gps_timestamp~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestamp~%# Definition of a GPS timestamp.~%# For more information see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%#   Note: This message will never be published on it's own, only included in other messages~%~%# GPS time of week (seconds)~%float64 tow~%~%# GPS Week number since 1980 (weeks)~%uint16 week_number~%~%# Valid Flags bitfield~%microstrain_inertial_msgs/MipGpsTimestampValidFlags valid_flags~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestampValidFlags~%# Message definition for the valid_flags field of https://files.microstrain.com/CV7+Online/external_content/dcp/Data/0xff/data/0xd3.htm~%#   Note: This message will never be published on it's own, only included in other messages.~%~%# Whole number seconds TOW has been set~%bool tow~%~%# Week number has been set~%bool week_number~%~%# Both TOW and Week Number have been set~%bool time_valid~%================================================================================~%MSG: microstrain_inertial_msgs/MipFilterGnssDualAntennaStatusStatusFlags~%# Message definition for Status Flags field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_gnss_dual_antenna_status.htm?Highlight=dual%20antenna~%#   Note: This message will never be published on it's own, only included in other messages.~%~%bool rcv_1_data_valid~%bool rcv_2_data_valid~%bool antenna_offsets_valid~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MipFilterGnssDualAntennaStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status_flags))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MipFilterGnssDualAntennaStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'MipFilterGnssDualAntennaStatus
    (cl:cons ':header (header msg))
    (cl:cons ':time_of_week (time_of_week msg))
    (cl:cons ':heading (heading msg))
    (cl:cons ':heading_unc (heading_unc msg))
    (cl:cons ':fix_type (fix_type msg))
    (cl:cons ':status_flags (status_flags msg))
    (cl:cons ':valid_flags (valid_flags msg))
))
