; Auto-generated. Do not edit!


(cl:in-package microstrain_inertial_msgs-msg)


;//! \htmlinclude MipGnssFixInfo.msg.html

(cl:defclass <MipGnssFixInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type microstrain_inertial_msgs-msg:MipHeader
    :initform (cl:make-instance 'microstrain_inertial_msgs-msg:MipHeader))
   (fix_type
    :reader fix_type
    :initarg :fix_type
    :type cl:fixnum
    :initform 0)
   (num_sv
    :reader num_sv
    :initarg :num_sv
    :type cl:fixnum
    :initform 0)
   (fix_flags
    :reader fix_flags
    :initarg :fix_flags
    :type microstrain_inertial_msgs-msg:MipGnssFixInfoFixFlags
    :initform (cl:make-instance 'microstrain_inertial_msgs-msg:MipGnssFixInfoFixFlags)))
)

(cl:defclass MipGnssFixInfo (<MipGnssFixInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MipGnssFixInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MipGnssFixInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name microstrain_inertial_msgs-msg:<MipGnssFixInfo> is deprecated: use microstrain_inertial_msgs-msg:MipGnssFixInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MipGnssFixInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:header-val is deprecated.  Use microstrain_inertial_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'fix_type-val :lambda-list '(m))
(cl:defmethod fix_type-val ((m <MipGnssFixInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:fix_type-val is deprecated.  Use microstrain_inertial_msgs-msg:fix_type instead.")
  (fix_type m))

(cl:ensure-generic-function 'num_sv-val :lambda-list '(m))
(cl:defmethod num_sv-val ((m <MipGnssFixInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:num_sv-val is deprecated.  Use microstrain_inertial_msgs-msg:num_sv instead.")
  (num_sv m))

(cl:ensure-generic-function 'fix_flags-val :lambda-list '(m))
(cl:defmethod fix_flags-val ((m <MipGnssFixInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:fix_flags-val is deprecated.  Use microstrain_inertial_msgs-msg:fix_flags instead.")
  (fix_flags m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MipGnssFixInfo>)))
    "Constants for message type '<MipGnssFixInfo>"
  '((:FIX_TYPE_FIX_3D . 0)
    (:FIX_TYPE_FIX_2D . 1)
    (:FIX_TYPE_FIX_TIME_ONLY . 2)
    (:FIX_TYPE_FIX_NONE . 3)
    (:FIX_TYPE_FIX_INVALID . 4)
    (:FIX_TYPE_FIX_RTK_FLOAT . 5)
    (:FIX_TYPE_FIX_RTK_FIXED . 6))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MipGnssFixInfo)))
    "Constants for message type 'MipGnssFixInfo"
  '((:FIX_TYPE_FIX_3D . 0)
    (:FIX_TYPE_FIX_2D . 1)
    (:FIX_TYPE_FIX_TIME_ONLY . 2)
    (:FIX_TYPE_FIX_NONE . 3)
    (:FIX_TYPE_FIX_INVALID . 4)
    (:FIX_TYPE_FIX_RTK_FLOAT . 5)
    (:FIX_TYPE_FIX_RTK_FIXED . 6))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MipGnssFixInfo>) ostream)
  "Serializes a message object of type '<MipGnssFixInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fix_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_sv)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fix_flags) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MipGnssFixInfo>) istream)
  "Deserializes a message object of type '<MipGnssFixInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fix_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_sv)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fix_flags) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MipGnssFixInfo>)))
  "Returns string type for a message object of type '<MipGnssFixInfo>"
  "microstrain_inertial_msgs/MipGnssFixInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MipGnssFixInfo)))
  "Returns string type for a message object of type 'MipGnssFixInfo"
  "microstrain_inertial_msgs/MipGnssFixInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MipGnssFixInfo>)))
  "Returns md5sum for a message object of type '<MipGnssFixInfo>"
  "981a71050cd7ff7c9ee9bd9a4ffe93a8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MipGnssFixInfo)))
  "Returns md5sum for a message object of type 'MipGnssFixInfo"
  "981a71050cd7ff7c9ee9bd9a4ffe93a8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MipGnssFixInfo>)))
  "Returns full string definition for message of type '<MipGnssFixInfo>"
  (cl:format cl:nil "# Message definition for the MIP field https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/gnss_recv_1/data/mip_field_gnss_fix_info.htm~%~%# Header containing common information~%#   header.frame_id has no meaning in this message~%microstrain_inertial_msgs/MipHeader header~%~%# Fix type. See FIX_TYPE_* enums for possible values~%uint8 fix_type~%~%# Number of satellites in view for this receiver~%uint8 num_sv~%~%# Parsed out version of the fix_flags bitfield~%microstrain_inertial_msgs/MipGnssFixInfoFixFlags fix_flags~%~%# Valid values for the fix_type field~%uint8 FIX_TYPE_FIX_3D        = 0~%uint8 FIX_TYPE_FIX_2D        = 1~%uint8 FIX_TYPE_FIX_TIME_ONLY = 2~%uint8 FIX_TYPE_FIX_NONE      = 3~%uint8 FIX_TYPE_FIX_INVALID   = 4~%uint8 FIX_TYPE_FIX_RTK_FLOAT = 5~%uint8 FIX_TYPE_FIX_RTK_FIXED = 6~%================================================================================~%MSG: microstrain_inertial_msgs/MipHeader~%# Represents a standard header that all MIP fields should include at the beginning of their message definition~%#   Note: This message will never be published on it's own, only included in other messages~%~%# Standard ROS header.~%#   header.stamp will always be populated with the ROS time that this message was populated~%#   header.frame_id is dependent on the full message definition. Most messages will not use this~%std_msgs/Header header~%~%# If the message was triggered by an event, this will be set, otherwise it will be set to 0 (will be 0 most of the time)~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_event_source.htm~%uint8 event_source~%~%# Reference timestamp of when the data was sampled if the device supports it. For devices that do not support this, it will always be 0~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_reference_timestamp.htm~%uint64 reference_timestamp~%~%# GPS timestamp of when the data was sampled if the device supports it~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%# Note that this timestamp may be blank in certain messages, but there will often be equivalent fields in the messages~%microstrain_inertial_msgs/MipGpsTimestamp gps_timestamp~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestamp~%# Definition of a GPS timestamp.~%# For more information see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%#   Note: This message will never be published on it's own, only included in other messages~%~%# GPS time of week (seconds)~%float64 tow~%~%# GPS Week number since 1980 (weeks)~%uint16 week_number~%~%# Valid Flags bitfield~%microstrain_inertial_msgs/MipGpsTimestampValidFlags valid_flags~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestampValidFlags~%# Message definition for the valid_flags field of https://files.microstrain.com/CV7+Online/external_content/dcp/Data/0xff/data/0xd3.htm~%#   Note: This message will never be published on it's own, only included in other messages.~%~%# Whole number seconds TOW has been set~%bool tow~%~%# Week number has been set~%bool week_number~%~%# Both TOW and Week Number have been set~%bool time_valid~%================================================================================~%MSG: microstrain_inertial_msgs/MipGnssFixInfoFixFlags~%# Message definition for the Fix Type field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/gnss_recv_1/data/mip_field_gnss_fix_info.htm?Highlight=fix%20info~%#   Note: This message will never be published on it's own, only included in other messages.~%~%bool sbas_used~%bool dgnss_used~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MipGnssFixInfo)))
  "Returns full string definition for message of type 'MipGnssFixInfo"
  (cl:format cl:nil "# Message definition for the MIP field https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/gnss_recv_1/data/mip_field_gnss_fix_info.htm~%~%# Header containing common information~%#   header.frame_id has no meaning in this message~%microstrain_inertial_msgs/MipHeader header~%~%# Fix type. See FIX_TYPE_* enums for possible values~%uint8 fix_type~%~%# Number of satellites in view for this receiver~%uint8 num_sv~%~%# Parsed out version of the fix_flags bitfield~%microstrain_inertial_msgs/MipGnssFixInfoFixFlags fix_flags~%~%# Valid values for the fix_type field~%uint8 FIX_TYPE_FIX_3D        = 0~%uint8 FIX_TYPE_FIX_2D        = 1~%uint8 FIX_TYPE_FIX_TIME_ONLY = 2~%uint8 FIX_TYPE_FIX_NONE      = 3~%uint8 FIX_TYPE_FIX_INVALID   = 4~%uint8 FIX_TYPE_FIX_RTK_FLOAT = 5~%uint8 FIX_TYPE_FIX_RTK_FIXED = 6~%================================================================================~%MSG: microstrain_inertial_msgs/MipHeader~%# Represents a standard header that all MIP fields should include at the beginning of their message definition~%#   Note: This message will never be published on it's own, only included in other messages~%~%# Standard ROS header.~%#   header.stamp will always be populated with the ROS time that this message was populated~%#   header.frame_id is dependent on the full message definition. Most messages will not use this~%std_msgs/Header header~%~%# If the message was triggered by an event, this will be set, otherwise it will be set to 0 (will be 0 most of the time)~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_event_source.htm~%uint8 event_source~%~%# Reference timestamp of when the data was sampled if the device supports it. For devices that do not support this, it will always be 0~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_reference_timestamp.htm~%uint64 reference_timestamp~%~%# GPS timestamp of when the data was sampled if the device supports it~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%# Note that this timestamp may be blank in certain messages, but there will often be equivalent fields in the messages~%microstrain_inertial_msgs/MipGpsTimestamp gps_timestamp~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestamp~%# Definition of a GPS timestamp.~%# For more information see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%#   Note: This message will never be published on it's own, only included in other messages~%~%# GPS time of week (seconds)~%float64 tow~%~%# GPS Week number since 1980 (weeks)~%uint16 week_number~%~%# Valid Flags bitfield~%microstrain_inertial_msgs/MipGpsTimestampValidFlags valid_flags~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestampValidFlags~%# Message definition for the valid_flags field of https://files.microstrain.com/CV7+Online/external_content/dcp/Data/0xff/data/0xd3.htm~%#   Note: This message will never be published on it's own, only included in other messages.~%~%# Whole number seconds TOW has been set~%bool tow~%~%# Week number has been set~%bool week_number~%~%# Both TOW and Week Number have been set~%bool time_valid~%================================================================================~%MSG: microstrain_inertial_msgs/MipGnssFixInfoFixFlags~%# Message definition for the Fix Type field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/gnss_recv_1/data/mip_field_gnss_fix_info.htm?Highlight=fix%20info~%#   Note: This message will never be published on it's own, only included in other messages.~%~%bool sbas_used~%bool dgnss_used~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MipGnssFixInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fix_flags))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MipGnssFixInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'MipGnssFixInfo
    (cl:cons ':header (header msg))
    (cl:cons ':fix_type (fix_type msg))
    (cl:cons ':num_sv (num_sv msg))
    (cl:cons ':fix_flags (fix_flags msg))
))
