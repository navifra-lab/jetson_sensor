; Auto-generated. Do not edit!


(cl:in-package microstrain_inertial_msgs-msg)


;//! \htmlinclude MipHeader.msg.html

(cl:defclass <MipHeader> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (event_source
    :reader event_source
    :initarg :event_source
    :type cl:fixnum
    :initform 0)
   (reference_timestamp
    :reader reference_timestamp
    :initarg :reference_timestamp
    :type cl:integer
    :initform 0)
   (gps_timestamp
    :reader gps_timestamp
    :initarg :gps_timestamp
    :type microstrain_inertial_msgs-msg:MipGpsTimestamp
    :initform (cl:make-instance 'microstrain_inertial_msgs-msg:MipGpsTimestamp)))
)

(cl:defclass MipHeader (<MipHeader>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MipHeader>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MipHeader)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name microstrain_inertial_msgs-msg:<MipHeader> is deprecated: use microstrain_inertial_msgs-msg:MipHeader instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MipHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:header-val is deprecated.  Use microstrain_inertial_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'event_source-val :lambda-list '(m))
(cl:defmethod event_source-val ((m <MipHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:event_source-val is deprecated.  Use microstrain_inertial_msgs-msg:event_source instead.")
  (event_source m))

(cl:ensure-generic-function 'reference_timestamp-val :lambda-list '(m))
(cl:defmethod reference_timestamp-val ((m <MipHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:reference_timestamp-val is deprecated.  Use microstrain_inertial_msgs-msg:reference_timestamp instead.")
  (reference_timestamp m))

(cl:ensure-generic-function 'gps_timestamp-val :lambda-list '(m))
(cl:defmethod gps_timestamp-val ((m <MipHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:gps_timestamp-val is deprecated.  Use microstrain_inertial_msgs-msg:gps_timestamp instead.")
  (gps_timestamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MipHeader>) ostream)
  "Serializes a message object of type '<MipHeader>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'event_source)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reference_timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reference_timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reference_timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reference_timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'reference_timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'reference_timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'reference_timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'reference_timestamp)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gps_timestamp) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MipHeader>) istream)
  "Deserializes a message object of type '<MipHeader>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'event_source)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reference_timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reference_timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reference_timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reference_timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'reference_timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'reference_timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'reference_timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'reference_timestamp)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gps_timestamp) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MipHeader>)))
  "Returns string type for a message object of type '<MipHeader>"
  "microstrain_inertial_msgs/MipHeader")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MipHeader)))
  "Returns string type for a message object of type 'MipHeader"
  "microstrain_inertial_msgs/MipHeader")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MipHeader>)))
  "Returns md5sum for a message object of type '<MipHeader>"
  "744333c9bf2617366c1413a75c739880")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MipHeader)))
  "Returns md5sum for a message object of type 'MipHeader"
  "744333c9bf2617366c1413a75c739880")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MipHeader>)))
  "Returns full string definition for message of type '<MipHeader>"
  (cl:format cl:nil "# Represents a standard header that all MIP fields should include at the beginning of their message definition~%#   Note: This message will never be published on it's own, only included in other messages~%~%# Standard ROS header.~%#   header.stamp will always be populated with the ROS time that this message was populated~%#   header.frame_id is dependent on the full message definition. Most messages will not use this~%std_msgs/Header header~%~%# If the message was triggered by an event, this will be set, otherwise it will be set to 0 (will be 0 most of the time)~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_event_source.htm~%uint8 event_source~%~%# Reference timestamp of when the data was sampled if the device supports it. For devices that do not support this, it will always be 0~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_reference_timestamp.htm~%uint64 reference_timestamp~%~%# GPS timestamp of when the data was sampled if the device supports it~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%# Note that this timestamp may be blank in certain messages, but there will often be equivalent fields in the messages~%microstrain_inertial_msgs/MipGpsTimestamp gps_timestamp~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestamp~%# Definition of a GPS timestamp.~%# For more information see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%#   Note: This message will never be published on it's own, only included in other messages~%~%# GPS time of week (seconds)~%float64 tow~%~%# GPS Week number since 1980 (weeks)~%uint16 week_number~%~%# Valid Flags bitfield~%microstrain_inertial_msgs/MipGpsTimestampValidFlags valid_flags~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestampValidFlags~%# Message definition for the valid_flags field of https://files.microstrain.com/CV7+Online/external_content/dcp/Data/0xff/data/0xd3.htm~%#   Note: This message will never be published on it's own, only included in other messages.~%~%# Whole number seconds TOW has been set~%bool tow~%~%# Week number has been set~%bool week_number~%~%# Both TOW and Week Number have been set~%bool time_valid~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MipHeader)))
  "Returns full string definition for message of type 'MipHeader"
  (cl:format cl:nil "# Represents a standard header that all MIP fields should include at the beginning of their message definition~%#   Note: This message will never be published on it's own, only included in other messages~%~%# Standard ROS header.~%#   header.stamp will always be populated with the ROS time that this message was populated~%#   header.frame_id is dependent on the full message definition. Most messages will not use this~%std_msgs/Header header~%~%# If the message was triggered by an event, this will be set, otherwise it will be set to 0 (will be 0 most of the time)~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_event_source.htm~%uint8 event_source~%~%# Reference timestamp of when the data was sampled if the device supports it. For devices that do not support this, it will always be 0~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_reference_timestamp.htm~%uint64 reference_timestamp~%~%# GPS timestamp of when the data was sampled if the device supports it~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%# Note that this timestamp may be blank in certain messages, but there will often be equivalent fields in the messages~%microstrain_inertial_msgs/MipGpsTimestamp gps_timestamp~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestamp~%# Definition of a GPS timestamp.~%# For more information see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%#   Note: This message will never be published on it's own, only included in other messages~%~%# GPS time of week (seconds)~%float64 tow~%~%# GPS Week number since 1980 (weeks)~%uint16 week_number~%~%# Valid Flags bitfield~%microstrain_inertial_msgs/MipGpsTimestampValidFlags valid_flags~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestampValidFlags~%# Message definition for the valid_flags field of https://files.microstrain.com/CV7+Online/external_content/dcp/Data/0xff/data/0xd3.htm~%#   Note: This message will never be published on it's own, only included in other messages.~%~%# Whole number seconds TOW has been set~%bool tow~%~%# Week number has been set~%bool week_number~%~%# Both TOW and Week Number have been set~%bool time_valid~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MipHeader>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gps_timestamp))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MipHeader>))
  "Converts a ROS message object to a list"
  (cl:list 'MipHeader
    (cl:cons ':header (header msg))
    (cl:cons ':event_source (event_source msg))
    (cl:cons ':reference_timestamp (reference_timestamp msg))
    (cl:cons ':gps_timestamp (gps_timestamp msg))
))
