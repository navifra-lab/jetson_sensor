; Auto-generated. Do not edit!


(cl:in-package microstrain_inertial_msgs-msg)


;//! \htmlinclude MipSystemTimeSyncStatus.msg.html

(cl:defclass <MipSystemTimeSyncStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type microstrain_inertial_msgs-msg:MipHeader
    :initform (cl:make-instance 'microstrain_inertial_msgs-msg:MipHeader))
   (time_sync
    :reader time_sync
    :initarg :time_sync
    :type cl:boolean
    :initform cl:nil)
   (last_pps_rcvd
    :reader last_pps_rcvd
    :initarg :last_pps_rcvd
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MipSystemTimeSyncStatus (<MipSystemTimeSyncStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MipSystemTimeSyncStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MipSystemTimeSyncStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name microstrain_inertial_msgs-msg:<MipSystemTimeSyncStatus> is deprecated: use microstrain_inertial_msgs-msg:MipSystemTimeSyncStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MipSystemTimeSyncStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:header-val is deprecated.  Use microstrain_inertial_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'time_sync-val :lambda-list '(m))
(cl:defmethod time_sync-val ((m <MipSystemTimeSyncStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:time_sync-val is deprecated.  Use microstrain_inertial_msgs-msg:time_sync instead.")
  (time_sync m))

(cl:ensure-generic-function 'last_pps_rcvd-val :lambda-list '(m))
(cl:defmethod last_pps_rcvd-val ((m <MipSystemTimeSyncStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:last_pps_rcvd-val is deprecated.  Use microstrain_inertial_msgs-msg:last_pps_rcvd instead.")
  (last_pps_rcvd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MipSystemTimeSyncStatus>) ostream)
  "Serializes a message object of type '<MipSystemTimeSyncStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'time_sync) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'last_pps_rcvd)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MipSystemTimeSyncStatus>) istream)
  "Deserializes a message object of type '<MipSystemTimeSyncStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'time_sync) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'last_pps_rcvd)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MipSystemTimeSyncStatus>)))
  "Returns string type for a message object of type '<MipSystemTimeSyncStatus>"
  "microstrain_inertial_msgs/MipSystemTimeSyncStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MipSystemTimeSyncStatus)))
  "Returns string type for a message object of type 'MipSystemTimeSyncStatus"
  "microstrain_inertial_msgs/MipSystemTimeSyncStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MipSystemTimeSyncStatus>)))
  "Returns md5sum for a message object of type '<MipSystemTimeSyncStatus>"
  "969bacda1b67ecf039821d2c754d7bf4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MipSystemTimeSyncStatus)))
  "Returns md5sum for a message object of type 'MipSystemTimeSyncStatus"
  "969bacda1b67ecf039821d2c754d7bf4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MipSystemTimeSyncStatus>)))
  "Returns full string definition for message of type '<MipSystemTimeSyncStatus>"
  (cl:format cl:nil "# Message definition for the MIP field https://files.microstrain.com/CV7+Online/external_content/dcp/Data/0xa0/data/0x02.htm~%~%# Header containing common information~%#   header.frame_id has no meaning in this message~%microstrain_inertial_msgs/MipHeader header~%~%# True if sync with the PPS signal is currently valid. False if PPS feature is disabled or a PPS signal is not detected.~%bool time_sync~%~%# Elapsed time in seconds since last PPS was received, with a maximum value of 255.~%uint8 last_pps_rcvd~%================================================================================~%MSG: microstrain_inertial_msgs/MipHeader~%# Represents a standard header that all MIP fields should include at the beginning of their message definition~%#   Note: This message will never be published on it's own, only included in other messages~%~%# Standard ROS header.~%#   header.stamp will always be populated with the ROS time that this message was populated~%#   header.frame_id is dependent on the full message definition. Most messages will not use this~%std_msgs/Header header~%~%# If the message was triggered by an event, this will be set, otherwise it will be set to 0 (will be 0 most of the time)~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_event_source.htm~%uint8 event_source~%~%# Reference timestamp of when the data was sampled if the device supports it. For devices that do not support this, it will always be 0~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_reference_timestamp.htm~%uint64 reference_timestamp~%~%# GPS timestamp of when the data was sampled if the device supports it~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%# Note that this timestamp may be blank in certain messages, but there will often be equivalent fields in the messages~%microstrain_inertial_msgs/MipGpsTimestamp gps_timestamp~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestamp~%# Definition of a GPS timestamp.~%# For more information see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%#   Note: This message will never be published on it's own, only included in other messages~%~%# GPS time of week (seconds)~%float64 tow~%~%# GPS Week number since 1980 (weeks)~%uint16 week_number~%~%# Valid Flags bitfield~%microstrain_inertial_msgs/MipGpsTimestampValidFlags valid_flags~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestampValidFlags~%# Message definition for the valid_flags field of https://files.microstrain.com/CV7+Online/external_content/dcp/Data/0xff/data/0xd3.htm~%#   Note: This message will never be published on it's own, only included in other messages.~%~%# Whole number seconds TOW has been set~%bool tow~%~%# Week number has been set~%bool week_number~%~%# Both TOW and Week Number have been set~%bool time_valid~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MipSystemTimeSyncStatus)))
  "Returns full string definition for message of type 'MipSystemTimeSyncStatus"
  (cl:format cl:nil "# Message definition for the MIP field https://files.microstrain.com/CV7+Online/external_content/dcp/Data/0xa0/data/0x02.htm~%~%# Header containing common information~%#   header.frame_id has no meaning in this message~%microstrain_inertial_msgs/MipHeader header~%~%# True if sync with the PPS signal is currently valid. False if PPS feature is disabled or a PPS signal is not detected.~%bool time_sync~%~%# Elapsed time in seconds since last PPS was received, with a maximum value of 255.~%uint8 last_pps_rcvd~%================================================================================~%MSG: microstrain_inertial_msgs/MipHeader~%# Represents a standard header that all MIP fields should include at the beginning of their message definition~%#   Note: This message will never be published on it's own, only included in other messages~%~%# Standard ROS header.~%#   header.stamp will always be populated with the ROS time that this message was populated~%#   header.frame_id is dependent on the full message definition. Most messages will not use this~%std_msgs/Header header~%~%# If the message was triggered by an event, this will be set, otherwise it will be set to 0 (will be 0 most of the time)~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_event_source.htm~%uint8 event_source~%~%# Reference timestamp of when the data was sampled if the device supports it. For devices that do not support this, it will always be 0~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_reference_timestamp.htm~%uint64 reference_timestamp~%~%# GPS timestamp of when the data was sampled if the device supports it~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%# Note that this timestamp may be blank in certain messages, but there will often be equivalent fields in the messages~%microstrain_inertial_msgs/MipGpsTimestamp gps_timestamp~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestamp~%# Definition of a GPS timestamp.~%# For more information see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%#   Note: This message will never be published on it's own, only included in other messages~%~%# GPS time of week (seconds)~%float64 tow~%~%# GPS Week number since 1980 (weeks)~%uint16 week_number~%~%# Valid Flags bitfield~%microstrain_inertial_msgs/MipGpsTimestampValidFlags valid_flags~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestampValidFlags~%# Message definition for the valid_flags field of https://files.microstrain.com/CV7+Online/external_content/dcp/Data/0xff/data/0xd3.htm~%#   Note: This message will never be published on it's own, only included in other messages.~%~%# Whole number seconds TOW has been set~%bool tow~%~%# Week number has been set~%bool week_number~%~%# Both TOW and Week Number have been set~%bool time_valid~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MipSystemTimeSyncStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MipSystemTimeSyncStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'MipSystemTimeSyncStatus
    (cl:cons ':header (header msg))
    (cl:cons ':time_sync (time_sync msg))
    (cl:cons ':last_pps_rcvd (last_pps_rcvd msg))
))
