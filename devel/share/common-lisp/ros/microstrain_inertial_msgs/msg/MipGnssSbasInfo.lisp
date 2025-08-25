; Auto-generated. Do not edit!


(cl:in-package microstrain_inertial_msgs-msg)


;//! \htmlinclude MipGnssSbasInfo.msg.html

(cl:defclass <MipGnssSbasInfo> (roslisp-msg-protocol:ros-message)
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
   (week_number
    :reader week_number
    :initarg :week_number
    :type cl:fixnum
    :initform 0)
   (sbas_system
    :reader sbas_system
    :initarg :sbas_system
    :type cl:fixnum
    :initform 0)
   (sbas_id
    :reader sbas_id
    :initarg :sbas_id
    :type cl:fixnum
    :initform 0)
   (count
    :reader count
    :initarg :count
    :type cl:fixnum
    :initform 0)
   (sbas_status
    :reader sbas_status
    :initarg :sbas_status
    :type microstrain_inertial_msgs-msg:MipGnssSbasInfoSbasStatus
    :initform (cl:make-instance 'microstrain_inertial_msgs-msg:MipGnssSbasInfoSbasStatus)))
)

(cl:defclass MipGnssSbasInfo (<MipGnssSbasInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MipGnssSbasInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MipGnssSbasInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name microstrain_inertial_msgs-msg:<MipGnssSbasInfo> is deprecated: use microstrain_inertial_msgs-msg:MipGnssSbasInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MipGnssSbasInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:header-val is deprecated.  Use microstrain_inertial_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'time_of_week-val :lambda-list '(m))
(cl:defmethod time_of_week-val ((m <MipGnssSbasInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:time_of_week-val is deprecated.  Use microstrain_inertial_msgs-msg:time_of_week instead.")
  (time_of_week m))

(cl:ensure-generic-function 'week_number-val :lambda-list '(m))
(cl:defmethod week_number-val ((m <MipGnssSbasInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:week_number-val is deprecated.  Use microstrain_inertial_msgs-msg:week_number instead.")
  (week_number m))

(cl:ensure-generic-function 'sbas_system-val :lambda-list '(m))
(cl:defmethod sbas_system-val ((m <MipGnssSbasInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:sbas_system-val is deprecated.  Use microstrain_inertial_msgs-msg:sbas_system instead.")
  (sbas_system m))

(cl:ensure-generic-function 'sbas_id-val :lambda-list '(m))
(cl:defmethod sbas_id-val ((m <MipGnssSbasInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:sbas_id-val is deprecated.  Use microstrain_inertial_msgs-msg:sbas_id instead.")
  (sbas_id m))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <MipGnssSbasInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:count-val is deprecated.  Use microstrain_inertial_msgs-msg:count instead.")
  (count m))

(cl:ensure-generic-function 'sbas_status-val :lambda-list '(m))
(cl:defmethod sbas_status-val ((m <MipGnssSbasInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:sbas_status-val is deprecated.  Use microstrain_inertial_msgs-msg:sbas_status instead.")
  (sbas_status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MipGnssSbasInfo>)))
    "Constants for message type '<MipGnssSbasInfo>"
  '((:SBAS_SYSTEM_UNKNOWN . 0)
    (:SBAS_SYSTEM_WAAS . 1)
    (:SBAS_SYSTEM_EGNOS . 2)
    (:SBAS_SYSTEM_MSAS . 3)
    (:SBAS_SYSTEM_GAGAN . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MipGnssSbasInfo)))
    "Constants for message type 'MipGnssSbasInfo"
  '((:SBAS_SYSTEM_UNKNOWN . 0)
    (:SBAS_SYSTEM_WAAS . 1)
    (:SBAS_SYSTEM_EGNOS . 2)
    (:SBAS_SYSTEM_MSAS . 3)
    (:SBAS_SYSTEM_GAGAN . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MipGnssSbasInfo>) ostream)
  "Serializes a message object of type '<MipGnssSbasInfo>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'week_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'week_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sbas_system)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sbas_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sbas_status) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MipGnssSbasInfo>) istream)
  "Deserializes a message object of type '<MipGnssSbasInfo>"
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'week_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'week_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sbas_system)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sbas_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sbas_status) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MipGnssSbasInfo>)))
  "Returns string type for a message object of type '<MipGnssSbasInfo>"
  "microstrain_inertial_msgs/MipGnssSbasInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MipGnssSbasInfo)))
  "Returns string type for a message object of type 'MipGnssSbasInfo"
  "microstrain_inertial_msgs/MipGnssSbasInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MipGnssSbasInfo>)))
  "Returns md5sum for a message object of type '<MipGnssSbasInfo>"
  "3bf8d39005d90e152e75be3cb6afe0a6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MipGnssSbasInfo)))
  "Returns md5sum for a message object of type 'MipGnssSbasInfo"
  "3bf8d39005d90e152e75be3cb6afe0a6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MipGnssSbasInfo>)))
  "Returns full string definition for message of type '<MipGnssSbasInfo>"
  (cl:format cl:nil "# Message definition for the MIP field https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/gnss_recv_1/data/mip_field_gnss_sbas_info.htm~%~%# Header containing common information~%#   header.frame_id has no meaning in this message~%microstrain_inertial_msgs/MipHeader header~%~%# GPS time of week (seconds)~%float64 time_of_week~%~%# GPS weeks since 1980 (weeks)~%uint16 week_number~%~%# SBAS system if. See SBAS_SYSTEM_* enums for possible values~%uint8 sbas_system~%~%# SBAS satellite id~%uint8 sbas_id~%~%# Number of SBAS corrections~%uint8 count~%~%# Parsed out version of the SBAS status bitfield~%microstrain_inertial_msgs/MipGnssSbasInfoSbasStatus sbas_status~%~%# Possible values for the sbas_system field~%uint8 SBAS_SYSTEM_UNKNOWN = 0~%uint8 SBAS_SYSTEM_WAAS    = 1~%uint8 SBAS_SYSTEM_EGNOS   = 2~%uint8 SBAS_SYSTEM_MSAS    = 3~%uint8 SBAS_SYSTEM_GAGAN   = 4~%================================================================================~%MSG: microstrain_inertial_msgs/MipHeader~%# Represents a standard header that all MIP fields should include at the beginning of their message definition~%#   Note: This message will never be published on it's own, only included in other messages~%~%# Standard ROS header.~%#   header.stamp will always be populated with the ROS time that this message was populated~%#   header.frame_id is dependent on the full message definition. Most messages will not use this~%std_msgs/Header header~%~%# If the message was triggered by an event, this will be set, otherwise it will be set to 0 (will be 0 most of the time)~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_event_source.htm~%uint8 event_source~%~%# Reference timestamp of when the data was sampled if the device supports it. For devices that do not support this, it will always be 0~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_reference_timestamp.htm~%uint64 reference_timestamp~%~%# GPS timestamp of when the data was sampled if the device supports it~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%# Note that this timestamp may be blank in certain messages, but there will often be equivalent fields in the messages~%microstrain_inertial_msgs/MipGpsTimestamp gps_timestamp~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestamp~%# Definition of a GPS timestamp.~%# For more information see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%#   Note: This message will never be published on it's own, only included in other messages~%~%# GPS time of week (seconds)~%float64 tow~%~%# GPS Week number since 1980 (weeks)~%uint16 week_number~%~%# Valid Flags bitfield~%microstrain_inertial_msgs/MipGpsTimestampValidFlags valid_flags~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestampValidFlags~%# Message definition for the valid_flags field of https://files.microstrain.com/CV7+Online/external_content/dcp/Data/0xff/data/0xd3.htm~%#   Note: This message will never be published on it's own, only included in other messages.~%~%# Whole number seconds TOW has been set~%bool tow~%~%# Week number has been set~%bool week_number~%~%# Both TOW and Week Number have been set~%bool time_valid~%================================================================================~%MSG: microstrain_inertial_msgs/MipGnssSbasInfoSbasStatus~%# Message definition for the Sbas Status field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/gnss_recv_1/data/mip_field_gnss_sbas_info.htm?Highlight=sbas%20info~%#   Note: This message will never be published on it's own, only included in other messages.~%~%bool range_available~%bool corrections_available~%bool integrity_available~%bool test_mode~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MipGnssSbasInfo)))
  "Returns full string definition for message of type 'MipGnssSbasInfo"
  (cl:format cl:nil "# Message definition for the MIP field https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/gnss_recv_1/data/mip_field_gnss_sbas_info.htm~%~%# Header containing common information~%#   header.frame_id has no meaning in this message~%microstrain_inertial_msgs/MipHeader header~%~%# GPS time of week (seconds)~%float64 time_of_week~%~%# GPS weeks since 1980 (weeks)~%uint16 week_number~%~%# SBAS system if. See SBAS_SYSTEM_* enums for possible values~%uint8 sbas_system~%~%# SBAS satellite id~%uint8 sbas_id~%~%# Number of SBAS corrections~%uint8 count~%~%# Parsed out version of the SBAS status bitfield~%microstrain_inertial_msgs/MipGnssSbasInfoSbasStatus sbas_status~%~%# Possible values for the sbas_system field~%uint8 SBAS_SYSTEM_UNKNOWN = 0~%uint8 SBAS_SYSTEM_WAAS    = 1~%uint8 SBAS_SYSTEM_EGNOS   = 2~%uint8 SBAS_SYSTEM_MSAS    = 3~%uint8 SBAS_SYSTEM_GAGAN   = 4~%================================================================================~%MSG: microstrain_inertial_msgs/MipHeader~%# Represents a standard header that all MIP fields should include at the beginning of their message definition~%#   Note: This message will never be published on it's own, only included in other messages~%~%# Standard ROS header.~%#   header.stamp will always be populated with the ROS time that this message was populated~%#   header.frame_id is dependent on the full message definition. Most messages will not use this~%std_msgs/Header header~%~%# If the message was triggered by an event, this will be set, otherwise it will be set to 0 (will be 0 most of the time)~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_event_source.htm~%uint8 event_source~%~%# Reference timestamp of when the data was sampled if the device supports it. For devices that do not support this, it will always be 0~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_reference_timestamp.htm~%uint64 reference_timestamp~%~%# GPS timestamp of when the data was sampled if the device supports it~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%# Note that this timestamp may be blank in certain messages, but there will often be equivalent fields in the messages~%microstrain_inertial_msgs/MipGpsTimestamp gps_timestamp~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestamp~%# Definition of a GPS timestamp.~%# For more information see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%#   Note: This message will never be published on it's own, only included in other messages~%~%# GPS time of week (seconds)~%float64 tow~%~%# GPS Week number since 1980 (weeks)~%uint16 week_number~%~%# Valid Flags bitfield~%microstrain_inertial_msgs/MipGpsTimestampValidFlags valid_flags~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestampValidFlags~%# Message definition for the valid_flags field of https://files.microstrain.com/CV7+Online/external_content/dcp/Data/0xff/data/0xd3.htm~%#   Note: This message will never be published on it's own, only included in other messages.~%~%# Whole number seconds TOW has been set~%bool tow~%~%# Week number has been set~%bool week_number~%~%# Both TOW and Week Number have been set~%bool time_valid~%================================================================================~%MSG: microstrain_inertial_msgs/MipGnssSbasInfoSbasStatus~%# Message definition for the Sbas Status field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/gnss_recv_1/data/mip_field_gnss_sbas_info.htm?Highlight=sbas%20info~%#   Note: This message will never be published on it's own, only included in other messages.~%~%bool range_available~%bool corrections_available~%bool integrity_available~%bool test_mode~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MipGnssSbasInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     2
     1
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sbas_status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MipGnssSbasInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'MipGnssSbasInfo
    (cl:cons ':header (header msg))
    (cl:cons ':time_of_week (time_of_week msg))
    (cl:cons ':week_number (week_number msg))
    (cl:cons ':sbas_system (sbas_system msg))
    (cl:cons ':sbas_id (sbas_id msg))
    (cl:cons ':count (count msg))
    (cl:cons ':sbas_status (sbas_status msg))
))
