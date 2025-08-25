; Auto-generated. Do not edit!


(cl:in-package microstrain_inertial_msgs-msg)


;//! \htmlinclude MipGnssRfErrorDetection.msg.html

(cl:defclass <MipGnssRfErrorDetection> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type microstrain_inertial_msgs-msg:MipHeader
    :initform (cl:make-instance 'microstrain_inertial_msgs-msg:MipHeader))
   (rf_band
    :reader rf_band
    :initarg :rf_band
    :type cl:fixnum
    :initform 0)
   (jamming_state
    :reader jamming_state
    :initarg :jamming_state
    :type cl:fixnum
    :initform 0)
   (spoofing_state
    :reader spoofing_state
    :initarg :spoofing_state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MipGnssRfErrorDetection (<MipGnssRfErrorDetection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MipGnssRfErrorDetection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MipGnssRfErrorDetection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name microstrain_inertial_msgs-msg:<MipGnssRfErrorDetection> is deprecated: use microstrain_inertial_msgs-msg:MipGnssRfErrorDetection instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MipGnssRfErrorDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:header-val is deprecated.  Use microstrain_inertial_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'rf_band-val :lambda-list '(m))
(cl:defmethod rf_band-val ((m <MipGnssRfErrorDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:rf_band-val is deprecated.  Use microstrain_inertial_msgs-msg:rf_band instead.")
  (rf_band m))

(cl:ensure-generic-function 'jamming_state-val :lambda-list '(m))
(cl:defmethod jamming_state-val ((m <MipGnssRfErrorDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:jamming_state-val is deprecated.  Use microstrain_inertial_msgs-msg:jamming_state instead.")
  (jamming_state m))

(cl:ensure-generic-function 'spoofing_state-val :lambda-list '(m))
(cl:defmethod spoofing_state-val ((m <MipGnssRfErrorDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:spoofing_state-val is deprecated.  Use microstrain_inertial_msgs-msg:spoofing_state instead.")
  (spoofing_state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MipGnssRfErrorDetection>)))
    "Constants for message type '<MipGnssRfErrorDetection>"
  '((:RF_BAND_UNKNOWN . 0)
    (:RF_BAND_L1 . 1)
    (:RF_BAND_L2 . 2)
    (:RF_BAND_L5 . 5)
    (:JAMMING_STATE_UNKNOWN . 0)
    (:JAMMING_STATE_NONE . 1)
    (:JAMMING_STATE_PARTIAL . 2)
    (:JAMMING_STATE_SIGNIFICANT . 3)
    (:SPOOFING_STATE_UNKNOWN . 0)
    (:SPOOFING_STATE_NONE . 1)
    (:SPOOFING_STATE_PARTIAL . 2)
    (:SPOOFING_STATE_SIGNIFICANT . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MipGnssRfErrorDetection)))
    "Constants for message type 'MipGnssRfErrorDetection"
  '((:RF_BAND_UNKNOWN . 0)
    (:RF_BAND_L1 . 1)
    (:RF_BAND_L2 . 2)
    (:RF_BAND_L5 . 5)
    (:JAMMING_STATE_UNKNOWN . 0)
    (:JAMMING_STATE_NONE . 1)
    (:JAMMING_STATE_PARTIAL . 2)
    (:JAMMING_STATE_SIGNIFICANT . 3)
    (:SPOOFING_STATE_UNKNOWN . 0)
    (:SPOOFING_STATE_NONE . 1)
    (:SPOOFING_STATE_PARTIAL . 2)
    (:SPOOFING_STATE_SIGNIFICANT . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MipGnssRfErrorDetection>) ostream)
  "Serializes a message object of type '<MipGnssRfErrorDetection>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rf_band)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'jamming_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'spoofing_state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MipGnssRfErrorDetection>) istream)
  "Deserializes a message object of type '<MipGnssRfErrorDetection>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rf_band)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'jamming_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'spoofing_state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MipGnssRfErrorDetection>)))
  "Returns string type for a message object of type '<MipGnssRfErrorDetection>"
  "microstrain_inertial_msgs/MipGnssRfErrorDetection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MipGnssRfErrorDetection)))
  "Returns string type for a message object of type 'MipGnssRfErrorDetection"
  "microstrain_inertial_msgs/MipGnssRfErrorDetection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MipGnssRfErrorDetection>)))
  "Returns md5sum for a message object of type '<MipGnssRfErrorDetection>"
  "31a70c5661fd36dfd41faec104fad00d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MipGnssRfErrorDetection)))
  "Returns md5sum for a message object of type 'MipGnssRfErrorDetection"
  "31a70c5661fd36dfd41faec104fad00d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MipGnssRfErrorDetection>)))
  "Returns full string definition for message of type '<MipGnssRfErrorDetection>"
  (cl:format cl:nil "# Message definition for the MIP field https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/gnss_recv_1/data/mip_field_gnss_rf_error_detection.htm~%~%# Header containing common information~%#   header.frame_id has no meaning in this message~%microstrain_inertial_msgs/MipHeader header~%~%# RF Band of the reported information. See RF_BAND_* enums for possible values~%uint8 rf_band~%~%# GNSS Jamming State (as reported by the GNSS module). See JAMMING_STATE_* enums for possible values~%uint8 jamming_state~%~%# GNSS Spoofing State (as reported by the GNSS module). See SPOOFING_STATE_* enums for possible values~%uint8 spoofing_state~%~%# Enum values for rf_band field~%uint8 RF_BAND_UNKNOWN = 0~%uint8 RF_BAND_L1      = 1~%uint8 RF_BAND_L2      = 2~%uint8 RF_BAND_L5      = 5~%~%# Enum values for jamming_state field~%uint8 JAMMING_STATE_UNKNOWN     = 0~%uint8 JAMMING_STATE_NONE        = 1~%uint8 JAMMING_STATE_PARTIAL     = 2~%uint8 JAMMING_STATE_SIGNIFICANT = 3~%~%# Enum values for spoofing_state field~%uint8 SPOOFING_STATE_UNKNOWN     = 0~%uint8 SPOOFING_STATE_NONE        = 1~%uint8 SPOOFING_STATE_PARTIAL     = 2~%uint8 SPOOFING_STATE_SIGNIFICANT = 3~%================================================================================~%MSG: microstrain_inertial_msgs/MipHeader~%# Represents a standard header that all MIP fields should include at the beginning of their message definition~%#   Note: This message will never be published on it's own, only included in other messages~%~%# Standard ROS header.~%#   header.stamp will always be populated with the ROS time that this message was populated~%#   header.frame_id is dependent on the full message definition. Most messages will not use this~%std_msgs/Header header~%~%# If the message was triggered by an event, this will be set, otherwise it will be set to 0 (will be 0 most of the time)~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_event_source.htm~%uint8 event_source~%~%# Reference timestamp of when the data was sampled if the device supports it. For devices that do not support this, it will always be 0~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_reference_timestamp.htm~%uint64 reference_timestamp~%~%# GPS timestamp of when the data was sampled if the device supports it~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%# Note that this timestamp may be blank in certain messages, but there will often be equivalent fields in the messages~%microstrain_inertial_msgs/MipGpsTimestamp gps_timestamp~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestamp~%# Definition of a GPS timestamp.~%# For more information see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%#   Note: This message will never be published on it's own, only included in other messages~%~%# GPS time of week (seconds)~%float64 tow~%~%# GPS Week number since 1980 (weeks)~%uint16 week_number~%~%# Valid Flags bitfield~%microstrain_inertial_msgs/MipGpsTimestampValidFlags valid_flags~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestampValidFlags~%# Message definition for the valid_flags field of https://files.microstrain.com/CV7+Online/external_content/dcp/Data/0xff/data/0xd3.htm~%#   Note: This message will never be published on it's own, only included in other messages.~%~%# Whole number seconds TOW has been set~%bool tow~%~%# Week number has been set~%bool week_number~%~%# Both TOW and Week Number have been set~%bool time_valid~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MipGnssRfErrorDetection)))
  "Returns full string definition for message of type 'MipGnssRfErrorDetection"
  (cl:format cl:nil "# Message definition for the MIP field https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/gnss_recv_1/data/mip_field_gnss_rf_error_detection.htm~%~%# Header containing common information~%#   header.frame_id has no meaning in this message~%microstrain_inertial_msgs/MipHeader header~%~%# RF Band of the reported information. See RF_BAND_* enums for possible values~%uint8 rf_band~%~%# GNSS Jamming State (as reported by the GNSS module). See JAMMING_STATE_* enums for possible values~%uint8 jamming_state~%~%# GNSS Spoofing State (as reported by the GNSS module). See SPOOFING_STATE_* enums for possible values~%uint8 spoofing_state~%~%# Enum values for rf_band field~%uint8 RF_BAND_UNKNOWN = 0~%uint8 RF_BAND_L1      = 1~%uint8 RF_BAND_L2      = 2~%uint8 RF_BAND_L5      = 5~%~%# Enum values for jamming_state field~%uint8 JAMMING_STATE_UNKNOWN     = 0~%uint8 JAMMING_STATE_NONE        = 1~%uint8 JAMMING_STATE_PARTIAL     = 2~%uint8 JAMMING_STATE_SIGNIFICANT = 3~%~%# Enum values for spoofing_state field~%uint8 SPOOFING_STATE_UNKNOWN     = 0~%uint8 SPOOFING_STATE_NONE        = 1~%uint8 SPOOFING_STATE_PARTIAL     = 2~%uint8 SPOOFING_STATE_SIGNIFICANT = 3~%================================================================================~%MSG: microstrain_inertial_msgs/MipHeader~%# Represents a standard header that all MIP fields should include at the beginning of their message definition~%#   Note: This message will never be published on it's own, only included in other messages~%~%# Standard ROS header.~%#   header.stamp will always be populated with the ROS time that this message was populated~%#   header.frame_id is dependent on the full message definition. Most messages will not use this~%std_msgs/Header header~%~%# If the message was triggered by an event, this will be set, otherwise it will be set to 0 (will be 0 most of the time)~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_event_source.htm~%uint8 event_source~%~%# Reference timestamp of when the data was sampled if the device supports it. For devices that do not support this, it will always be 0~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_reference_timestamp.htm~%uint64 reference_timestamp~%~%# GPS timestamp of when the data was sampled if the device supports it~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%# Note that this timestamp may be blank in certain messages, but there will often be equivalent fields in the messages~%microstrain_inertial_msgs/MipGpsTimestamp gps_timestamp~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestamp~%# Definition of a GPS timestamp.~%# For more information see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%#   Note: This message will never be published on it's own, only included in other messages~%~%# GPS time of week (seconds)~%float64 tow~%~%# GPS Week number since 1980 (weeks)~%uint16 week_number~%~%# Valid Flags bitfield~%microstrain_inertial_msgs/MipGpsTimestampValidFlags valid_flags~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestampValidFlags~%# Message definition for the valid_flags field of https://files.microstrain.com/CV7+Online/external_content/dcp/Data/0xff/data/0xd3.htm~%#   Note: This message will never be published on it's own, only included in other messages.~%~%# Whole number seconds TOW has been set~%bool tow~%~%# Week number has been set~%bool week_number~%~%# Both TOW and Week Number have been set~%bool time_valid~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MipGnssRfErrorDetection>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MipGnssRfErrorDetection>))
  "Converts a ROS message object to a list"
  (cl:list 'MipGnssRfErrorDetection
    (cl:cons ':header (header msg))
    (cl:cons ':rf_band (rf_band msg))
    (cl:cons ':jamming_state (jamming_state msg))
    (cl:cons ':spoofing_state (spoofing_state msg))
))
