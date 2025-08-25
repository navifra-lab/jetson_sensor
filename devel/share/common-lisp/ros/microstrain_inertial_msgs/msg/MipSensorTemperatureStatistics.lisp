; Auto-generated. Do not edit!


(cl:in-package microstrain_inertial_msgs-msg)


;//! \htmlinclude MipSensorTemperatureStatistics.msg.html

(cl:defclass <MipSensorTemperatureStatistics> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type microstrain_inertial_msgs-msg:MipHeader
    :initform (cl:make-instance 'microstrain_inertial_msgs-msg:MipHeader))
   (min_temp
    :reader min_temp
    :initarg :min_temp
    :type cl:float
    :initform 0.0)
   (max_temp
    :reader max_temp
    :initarg :max_temp
    :type cl:float
    :initform 0.0)
   (mean_temp
    :reader mean_temp
    :initarg :mean_temp
    :type cl:float
    :initform 0.0))
)

(cl:defclass MipSensorTemperatureStatistics (<MipSensorTemperatureStatistics>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MipSensorTemperatureStatistics>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MipSensorTemperatureStatistics)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name microstrain_inertial_msgs-msg:<MipSensorTemperatureStatistics> is deprecated: use microstrain_inertial_msgs-msg:MipSensorTemperatureStatistics instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MipSensorTemperatureStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:header-val is deprecated.  Use microstrain_inertial_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'min_temp-val :lambda-list '(m))
(cl:defmethod min_temp-val ((m <MipSensorTemperatureStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:min_temp-val is deprecated.  Use microstrain_inertial_msgs-msg:min_temp instead.")
  (min_temp m))

(cl:ensure-generic-function 'max_temp-val :lambda-list '(m))
(cl:defmethod max_temp-val ((m <MipSensorTemperatureStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:max_temp-val is deprecated.  Use microstrain_inertial_msgs-msg:max_temp instead.")
  (max_temp m))

(cl:ensure-generic-function 'mean_temp-val :lambda-list '(m))
(cl:defmethod mean_temp-val ((m <MipSensorTemperatureStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:mean_temp-val is deprecated.  Use microstrain_inertial_msgs-msg:mean_temp instead.")
  (mean_temp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MipSensorTemperatureStatistics>) ostream)
  "Serializes a message object of type '<MipSensorTemperatureStatistics>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'min_temp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_temp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mean_temp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MipSensorTemperatureStatistics>) istream)
  "Deserializes a message object of type '<MipSensorTemperatureStatistics>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_temp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_temp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mean_temp) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MipSensorTemperatureStatistics>)))
  "Returns string type for a message object of type '<MipSensorTemperatureStatistics>"
  "microstrain_inertial_msgs/MipSensorTemperatureStatistics")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MipSensorTemperatureStatistics)))
  "Returns string type for a message object of type 'MipSensorTemperatureStatistics"
  "microstrain_inertial_msgs/MipSensorTemperatureStatistics")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MipSensorTemperatureStatistics>)))
  "Returns md5sum for a message object of type '<MipSensorTemperatureStatistics>"
  "6fabd50ba1c185e5cd64c5539c067111")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MipSensorTemperatureStatistics)))
  "Returns md5sum for a message object of type 'MipSensorTemperatureStatistics"
  "6fabd50ba1c185e5cd64c5539c067111")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MipSensorTemperatureStatistics>)))
  "Returns full string definition for message of type '<MipSensorTemperatureStatistics>"
  (cl:format cl:nil "# Message definition for the MIP field https://files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/0x80/data/0x14.htm~%~%# Header containing common information~%#   header.frame_id has no meaning in this message~%microstrain_inertial_msgs/MipHeader header~%~%float32 min_temp   # Degrees Celsius~%float32 max_temp   # Degrees Celsius~%float32 mean_temp  # Degrees Celsius~%================================================================================~%MSG: microstrain_inertial_msgs/MipHeader~%# Represents a standard header that all MIP fields should include at the beginning of their message definition~%#   Note: This message will never be published on it's own, only included in other messages~%~%# Standard ROS header.~%#   header.stamp will always be populated with the ROS time that this message was populated~%#   header.frame_id is dependent on the full message definition. Most messages will not use this~%std_msgs/Header header~%~%# If the message was triggered by an event, this will be set, otherwise it will be set to 0 (will be 0 most of the time)~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_event_source.htm~%uint8 event_source~%~%# Reference timestamp of when the data was sampled if the device supports it. For devices that do not support this, it will always be 0~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_reference_timestamp.htm~%uint64 reference_timestamp~%~%# GPS timestamp of when the data was sampled if the device supports it~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%# Note that this timestamp may be blank in certain messages, but there will often be equivalent fields in the messages~%microstrain_inertial_msgs/MipGpsTimestamp gps_timestamp~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestamp~%# Definition of a GPS timestamp.~%# For more information see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%#   Note: This message will never be published on it's own, only included in other messages~%~%# GPS time of week (seconds)~%float64 tow~%~%# GPS Week number since 1980 (weeks)~%uint16 week_number~%~%# Valid Flags bitfield~%microstrain_inertial_msgs/MipGpsTimestampValidFlags valid_flags~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestampValidFlags~%# Message definition for the valid_flags field of https://files.microstrain.com/CV7+Online/external_content/dcp/Data/0xff/data/0xd3.htm~%#   Note: This message will never be published on it's own, only included in other messages.~%~%# Whole number seconds TOW has been set~%bool tow~%~%# Week number has been set~%bool week_number~%~%# Both TOW and Week Number have been set~%bool time_valid~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MipSensorTemperatureStatistics)))
  "Returns full string definition for message of type 'MipSensorTemperatureStatistics"
  (cl:format cl:nil "# Message definition for the MIP field https://files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/0x80/data/0x14.htm~%~%# Header containing common information~%#   header.frame_id has no meaning in this message~%microstrain_inertial_msgs/MipHeader header~%~%float32 min_temp   # Degrees Celsius~%float32 max_temp   # Degrees Celsius~%float32 mean_temp  # Degrees Celsius~%================================================================================~%MSG: microstrain_inertial_msgs/MipHeader~%# Represents a standard header that all MIP fields should include at the beginning of their message definition~%#   Note: This message will never be published on it's own, only included in other messages~%~%# Standard ROS header.~%#   header.stamp will always be populated with the ROS time that this message was populated~%#   header.frame_id is dependent on the full message definition. Most messages will not use this~%std_msgs/Header header~%~%# If the message was triggered by an event, this will be set, otherwise it will be set to 0 (will be 0 most of the time)~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_event_source.htm~%uint8 event_source~%~%# Reference timestamp of when the data was sampled if the device supports it. For devices that do not support this, it will always be 0~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_reference_timestamp.htm~%uint64 reference_timestamp~%~%# GPS timestamp of when the data was sampled if the device supports it~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%# Note that this timestamp may be blank in certain messages, but there will often be equivalent fields in the messages~%microstrain_inertial_msgs/MipGpsTimestamp gps_timestamp~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestamp~%# Definition of a GPS timestamp.~%# For more information see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%#   Note: This message will never be published on it's own, only included in other messages~%~%# GPS time of week (seconds)~%float64 tow~%~%# GPS Week number since 1980 (weeks)~%uint16 week_number~%~%# Valid Flags bitfield~%microstrain_inertial_msgs/MipGpsTimestampValidFlags valid_flags~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestampValidFlags~%# Message definition for the valid_flags field of https://files.microstrain.com/CV7+Online/external_content/dcp/Data/0xff/data/0xd3.htm~%#   Note: This message will never be published on it's own, only included in other messages.~%~%# Whole number seconds TOW has been set~%bool tow~%~%# Week number has been set~%bool week_number~%~%# Both TOW and Week Number have been set~%bool time_valid~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MipSensorTemperatureStatistics>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MipSensorTemperatureStatistics>))
  "Converts a ROS message object to a list"
  (cl:list 'MipSensorTemperatureStatistics
    (cl:cons ':header (header msg))
    (cl:cons ':min_temp (min_temp msg))
    (cl:cons ':max_temp (max_temp msg))
    (cl:cons ':mean_temp (mean_temp msg))
))
