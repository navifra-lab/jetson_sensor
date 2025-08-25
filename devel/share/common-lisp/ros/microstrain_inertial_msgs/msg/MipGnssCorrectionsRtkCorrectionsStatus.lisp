; Auto-generated. Do not edit!


(cl:in-package microstrain_inertial_msgs-msg)


;//! \htmlinclude MipGnssCorrectionsRtkCorrectionsStatus.msg.html

(cl:defclass <MipGnssCorrectionsRtkCorrectionsStatus> (roslisp-msg-protocol:ros-message)
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
   (epoch_status
    :reader epoch_status
    :initarg :epoch_status
    :type microstrain_inertial_msgs-msg:MipGnssCorrectionsRtkCorrectionsStatusEpochStatus
    :initform (cl:make-instance 'microstrain_inertial_msgs-msg:MipGnssCorrectionsRtkCorrectionsStatusEpochStatus))
   (dongle_status
    :reader dongle_status
    :initarg :dongle_status
    :type microstrain_inertial_msgs-msg:MipGnssCorrectionsRtkCorrectionsStatusDongleStatus
    :initform (cl:make-instance 'microstrain_inertial_msgs-msg:MipGnssCorrectionsRtkCorrectionsStatusDongleStatus))
   (gps_correction_latency
    :reader gps_correction_latency
    :initarg :gps_correction_latency
    :type cl:float
    :initform 0.0)
   (glonass_correction_latency
    :reader glonass_correction_latency
    :initarg :glonass_correction_latency
    :type cl:float
    :initform 0.0)
   (galileo_correction_latency
    :reader galileo_correction_latency
    :initarg :galileo_correction_latency
    :type cl:float
    :initform 0.0)
   (beidou_correction_latency
    :reader beidou_correction_latency
    :initarg :beidou_correction_latency
    :type cl:float
    :initform 0.0))
)

(cl:defclass MipGnssCorrectionsRtkCorrectionsStatus (<MipGnssCorrectionsRtkCorrectionsStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MipGnssCorrectionsRtkCorrectionsStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MipGnssCorrectionsRtkCorrectionsStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name microstrain_inertial_msgs-msg:<MipGnssCorrectionsRtkCorrectionsStatus> is deprecated: use microstrain_inertial_msgs-msg:MipGnssCorrectionsRtkCorrectionsStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MipGnssCorrectionsRtkCorrectionsStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:header-val is deprecated.  Use microstrain_inertial_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'time_of_week-val :lambda-list '(m))
(cl:defmethod time_of_week-val ((m <MipGnssCorrectionsRtkCorrectionsStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:time_of_week-val is deprecated.  Use microstrain_inertial_msgs-msg:time_of_week instead.")
  (time_of_week m))

(cl:ensure-generic-function 'week_number-val :lambda-list '(m))
(cl:defmethod week_number-val ((m <MipGnssCorrectionsRtkCorrectionsStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:week_number-val is deprecated.  Use microstrain_inertial_msgs-msg:week_number instead.")
  (week_number m))

(cl:ensure-generic-function 'epoch_status-val :lambda-list '(m))
(cl:defmethod epoch_status-val ((m <MipGnssCorrectionsRtkCorrectionsStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:epoch_status-val is deprecated.  Use microstrain_inertial_msgs-msg:epoch_status instead.")
  (epoch_status m))

(cl:ensure-generic-function 'dongle_status-val :lambda-list '(m))
(cl:defmethod dongle_status-val ((m <MipGnssCorrectionsRtkCorrectionsStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:dongle_status-val is deprecated.  Use microstrain_inertial_msgs-msg:dongle_status instead.")
  (dongle_status m))

(cl:ensure-generic-function 'gps_correction_latency-val :lambda-list '(m))
(cl:defmethod gps_correction_latency-val ((m <MipGnssCorrectionsRtkCorrectionsStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:gps_correction_latency-val is deprecated.  Use microstrain_inertial_msgs-msg:gps_correction_latency instead.")
  (gps_correction_latency m))

(cl:ensure-generic-function 'glonass_correction_latency-val :lambda-list '(m))
(cl:defmethod glonass_correction_latency-val ((m <MipGnssCorrectionsRtkCorrectionsStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:glonass_correction_latency-val is deprecated.  Use microstrain_inertial_msgs-msg:glonass_correction_latency instead.")
  (glonass_correction_latency m))

(cl:ensure-generic-function 'galileo_correction_latency-val :lambda-list '(m))
(cl:defmethod galileo_correction_latency-val ((m <MipGnssCorrectionsRtkCorrectionsStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:galileo_correction_latency-val is deprecated.  Use microstrain_inertial_msgs-msg:galileo_correction_latency instead.")
  (galileo_correction_latency m))

(cl:ensure-generic-function 'beidou_correction_latency-val :lambda-list '(m))
(cl:defmethod beidou_correction_latency-val ((m <MipGnssCorrectionsRtkCorrectionsStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:beidou_correction_latency-val is deprecated.  Use microstrain_inertial_msgs-msg:beidou_correction_latency instead.")
  (beidou_correction_latency m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MipGnssCorrectionsRtkCorrectionsStatus>) ostream)
  "Serializes a message object of type '<MipGnssCorrectionsRtkCorrectionsStatus>"
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'epoch_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dongle_status) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gps_correction_latency))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'glonass_correction_latency))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'galileo_correction_latency))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'beidou_correction_latency))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MipGnssCorrectionsRtkCorrectionsStatus>) istream)
  "Deserializes a message object of type '<MipGnssCorrectionsRtkCorrectionsStatus>"
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'epoch_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dongle_status) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gps_correction_latency) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'glonass_correction_latency) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'galileo_correction_latency) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'beidou_correction_latency) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MipGnssCorrectionsRtkCorrectionsStatus>)))
  "Returns string type for a message object of type '<MipGnssCorrectionsRtkCorrectionsStatus>"
  "microstrain_inertial_msgs/MipGnssCorrectionsRtkCorrectionsStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MipGnssCorrectionsRtkCorrectionsStatus)))
  "Returns string type for a message object of type 'MipGnssCorrectionsRtkCorrectionsStatus"
  "microstrain_inertial_msgs/MipGnssCorrectionsRtkCorrectionsStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MipGnssCorrectionsRtkCorrectionsStatus>)))
  "Returns md5sum for a message object of type '<MipGnssCorrectionsRtkCorrectionsStatus>"
  "a2de1c3721150da51fc4cbcdbe40ed22")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MipGnssCorrectionsRtkCorrectionsStatus)))
  "Returns md5sum for a message object of type 'MipGnssCorrectionsRtkCorrectionsStatus"
  "a2de1c3721150da51fc4cbcdbe40ed22")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MipGnssCorrectionsRtkCorrectionsStatus>)))
  "Returns full string definition for message of type '<MipGnssCorrectionsRtkCorrectionsStatus>"
  (cl:format cl:nil "# Message definition for the MIP field https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/gnss_corrections/data/mip_field_gnss_rtk_corrections_status.htm~%~%# Header containing common information~%#   header.frame_id has no meaning in this message~%microstrain_inertial_msgs/MipHeader header~%~%# GPS time of week (seconds)~%float64 time_of_week~%~%# GPS weeks since 1980 (weeks)~%uint16 week_number~%~%# Parsed out version of the Epoch Status bitfield~%microstrain_inertial_msgs/MipGnssCorrectionsRtkCorrectionsStatusEpochStatus epoch_status~%~%# Parsed out version of the Dongle Status bitfield~%microstrain_inertial_msgs/MipGnssCorrectionsRtkCorrectionsStatusDongleStatus dongle_status~%~%# Latency of last GPS correction (seconds)~%float32 gps_correction_latency~%~%# Latency of last GLONASS correction (seconds)~%float32 glonass_correction_latency~%~%# Latency of last Galileo correction (seconds)~%float32 galileo_correction_latency~%~%# Latency of last Beidou correction (seconds)~%float32 beidou_correction_latency~%~%================================================================================~%MSG: microstrain_inertial_msgs/MipHeader~%# Represents a standard header that all MIP fields should include at the beginning of their message definition~%#   Note: This message will never be published on it's own, only included in other messages~%~%# Standard ROS header.~%#   header.stamp will always be populated with the ROS time that this message was populated~%#   header.frame_id is dependent on the full message definition. Most messages will not use this~%std_msgs/Header header~%~%# If the message was triggered by an event, this will be set, otherwise it will be set to 0 (will be 0 most of the time)~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_event_source.htm~%uint8 event_source~%~%# Reference timestamp of when the data was sampled if the device supports it. For devices that do not support this, it will always be 0~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_reference_timestamp.htm~%uint64 reference_timestamp~%~%# GPS timestamp of when the data was sampled if the device supports it~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%# Note that this timestamp may be blank in certain messages, but there will often be equivalent fields in the messages~%microstrain_inertial_msgs/MipGpsTimestamp gps_timestamp~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestamp~%# Definition of a GPS timestamp.~%# For more information see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%#   Note: This message will never be published on it's own, only included in other messages~%~%# GPS time of week (seconds)~%float64 tow~%~%# GPS Week number since 1980 (weeks)~%uint16 week_number~%~%# Valid Flags bitfield~%microstrain_inertial_msgs/MipGpsTimestampValidFlags valid_flags~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestampValidFlags~%# Message definition for the valid_flags field of https://files.microstrain.com/CV7+Online/external_content/dcp/Data/0xff/data/0xd3.htm~%#   Note: This message will never be published on it's own, only included in other messages.~%~%# Whole number seconds TOW has been set~%bool tow~%~%# Week number has been set~%bool week_number~%~%# Both TOW and Week Number have been set~%bool time_valid~%================================================================================~%MSG: microstrain_inertial_msgs/MipGnssCorrectionsRtkCorrectionsStatusEpochStatus~%# Message definition for the Epoch Status field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/gnss_corrections/data/mip_field_gnss_rtk_corrections_status.htm?Highlight=rtk%20status~%#   Note: This message will never be published on it's own, only included in other messages.~%~%bool antenna_location_received~%bool antenna_description_received~%bool gps_received~%bool galileo_received~%bool glonass_received~%bool beidou_received~%bool using_gps_msm_messages  # Using MSM messages for GPS corrections instead of RTCM messages 1001-1004~%bool using_glonass_msm_messages  # Using MSM messages for GLONASS corrections instead of RTCM messages 1009-1012~%bool dongle_status_read_failed  # A read of the dongle status was attempted, but failed~%================================================================================~%MSG: microstrain_inertial_msgs/MipGnssCorrectionsRtkCorrectionsStatusDongleStatus~%# Message definition for the Dongle Status field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/gnss_corrections/data/mip_field_gnss_rtk_corrections_status.htm?Highlight=rtk%20status~%#   Note: This message will never be published on it's own, only included in other messages.~%~%# Modem State bits from the Dongle Status field. See MODEM_STATE_* enums for possible values~%uint8 modem_state~%~%# Connection Type bits from the Dongle Status field. See CONNECTION_TYPE_* enums for possible values~%uint8 connection_type~%~%# RSSI bits from the Dongle Status field. Units are in dBm~%int8 rssi~%~%# Signal Quality bits from the Dongle Status field.~%# 0-10 indication of signal quality, 0 means unavailable/invalid/not connected, 1 is poor, 10 is excellent.~%uint8 signal_quality~%~%# Tower Change Indicator bits from the Dongle Status field.~%# 4-bit value that increments each time a cell tower change occurs. Rolls over from 15 to 0.~%uint8 tower_change_indicator~%~%# NMEA Timeout Flag bit from the Dongle Status field.~%# The device has not received a valid NMEA message from the GQ7 in the past 3 seconds~%bool nmea_timeout_flag~%~%# Server Timeout Flag bit from the Dongle Status field.~%# The device has not received any communications with the server in the past 3 seconds.~%bool server_timeout_flag~%~%# RTCM Timeout Flag bit from the Dongle Status field.~%# The device has not received a valid RTCM message from the server in the past 3 seconds.~%bool rtcm_timeout_flag~%~%# Device Out of Range Flag bit from the Dongle Status field~%# The device's reported position is beyond the server-side configured distance to a base station and will not receive corrections~%bool device_out_of_range_flag~%~%# Corrections Unavailable Flag bit from the Dongle Status field~%# The server is reporting that corrections are not available given the user's account settings~%bool corrections_unavailable_flag~%~%# Possible values for dongle_modem_state~%uint8 MODEM_STATE_OFF = 0~%uint8 MODEM_STATE_NO_NETWORK = 1~%uint8 MODEM_STATE_NETWORK_CONNECTED = 2~%uint8 MODEM_STATE_CONFIGURING_DATA_CONTEXT = 3~%uint8 MODEM_STATE_ACTIVATING_DATA_CONTEXT = 4~%uint8 MODEM_STATE_CONFIGURING_SOCKET = 5~%uint8 MODEM_STATE_WAITING_ON_SERVER_HANDSHAKE = 6~%uint8 MODEM_STATE_CONNECTED_AND_IDLE = 7~%uint8 MODEM_STATE_CONNECTED_AND_STREAMING = 8~%~%# Possible values for dongle_connection_type~%uint8 CONNECTION_TYPE_NO_CONNECTION = 0~%uint8 CONNECTION_TYPE_CONNECTION_2G = 2~%uint8 CONNECTION_TYPE_CONNECTION_3G = 3~%uint8 CONNECTION_TYPE_CONNECTION_4G = 4~%uint8 CONNECTION_TYPE_CONNECTION_5G = 5~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MipGnssCorrectionsRtkCorrectionsStatus)))
  "Returns full string definition for message of type 'MipGnssCorrectionsRtkCorrectionsStatus"
  (cl:format cl:nil "# Message definition for the MIP field https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/gnss_corrections/data/mip_field_gnss_rtk_corrections_status.htm~%~%# Header containing common information~%#   header.frame_id has no meaning in this message~%microstrain_inertial_msgs/MipHeader header~%~%# GPS time of week (seconds)~%float64 time_of_week~%~%# GPS weeks since 1980 (weeks)~%uint16 week_number~%~%# Parsed out version of the Epoch Status bitfield~%microstrain_inertial_msgs/MipGnssCorrectionsRtkCorrectionsStatusEpochStatus epoch_status~%~%# Parsed out version of the Dongle Status bitfield~%microstrain_inertial_msgs/MipGnssCorrectionsRtkCorrectionsStatusDongleStatus dongle_status~%~%# Latency of last GPS correction (seconds)~%float32 gps_correction_latency~%~%# Latency of last GLONASS correction (seconds)~%float32 glonass_correction_latency~%~%# Latency of last Galileo correction (seconds)~%float32 galileo_correction_latency~%~%# Latency of last Beidou correction (seconds)~%float32 beidou_correction_latency~%~%================================================================================~%MSG: microstrain_inertial_msgs/MipHeader~%# Represents a standard header that all MIP fields should include at the beginning of their message definition~%#   Note: This message will never be published on it's own, only included in other messages~%~%# Standard ROS header.~%#   header.stamp will always be populated with the ROS time that this message was populated~%#   header.frame_id is dependent on the full message definition. Most messages will not use this~%std_msgs/Header header~%~%# If the message was triggered by an event, this will be set, otherwise it will be set to 0 (will be 0 most of the time)~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_event_source.htm~%uint8 event_source~%~%# Reference timestamp of when the data was sampled if the device supports it. For devices that do not support this, it will always be 0~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_reference_timestamp.htm~%uint64 reference_timestamp~%~%# GPS timestamp of when the data was sampled if the device supports it~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%# Note that this timestamp may be blank in certain messages, but there will often be equivalent fields in the messages~%microstrain_inertial_msgs/MipGpsTimestamp gps_timestamp~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestamp~%# Definition of a GPS timestamp.~%# For more information see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%#   Note: This message will never be published on it's own, only included in other messages~%~%# GPS time of week (seconds)~%float64 tow~%~%# GPS Week number since 1980 (weeks)~%uint16 week_number~%~%# Valid Flags bitfield~%microstrain_inertial_msgs/MipGpsTimestampValidFlags valid_flags~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestampValidFlags~%# Message definition for the valid_flags field of https://files.microstrain.com/CV7+Online/external_content/dcp/Data/0xff/data/0xd3.htm~%#   Note: This message will never be published on it's own, only included in other messages.~%~%# Whole number seconds TOW has been set~%bool tow~%~%# Week number has been set~%bool week_number~%~%# Both TOW and Week Number have been set~%bool time_valid~%================================================================================~%MSG: microstrain_inertial_msgs/MipGnssCorrectionsRtkCorrectionsStatusEpochStatus~%# Message definition for the Epoch Status field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/gnss_corrections/data/mip_field_gnss_rtk_corrections_status.htm?Highlight=rtk%20status~%#   Note: This message will never be published on it's own, only included in other messages.~%~%bool antenna_location_received~%bool antenna_description_received~%bool gps_received~%bool galileo_received~%bool glonass_received~%bool beidou_received~%bool using_gps_msm_messages  # Using MSM messages for GPS corrections instead of RTCM messages 1001-1004~%bool using_glonass_msm_messages  # Using MSM messages for GLONASS corrections instead of RTCM messages 1009-1012~%bool dongle_status_read_failed  # A read of the dongle status was attempted, but failed~%================================================================================~%MSG: microstrain_inertial_msgs/MipGnssCorrectionsRtkCorrectionsStatusDongleStatus~%# Message definition for the Dongle Status field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/gnss_corrections/data/mip_field_gnss_rtk_corrections_status.htm?Highlight=rtk%20status~%#   Note: This message will never be published on it's own, only included in other messages.~%~%# Modem State bits from the Dongle Status field. See MODEM_STATE_* enums for possible values~%uint8 modem_state~%~%# Connection Type bits from the Dongle Status field. See CONNECTION_TYPE_* enums for possible values~%uint8 connection_type~%~%# RSSI bits from the Dongle Status field. Units are in dBm~%int8 rssi~%~%# Signal Quality bits from the Dongle Status field.~%# 0-10 indication of signal quality, 0 means unavailable/invalid/not connected, 1 is poor, 10 is excellent.~%uint8 signal_quality~%~%# Tower Change Indicator bits from the Dongle Status field.~%# 4-bit value that increments each time a cell tower change occurs. Rolls over from 15 to 0.~%uint8 tower_change_indicator~%~%# NMEA Timeout Flag bit from the Dongle Status field.~%# The device has not received a valid NMEA message from the GQ7 in the past 3 seconds~%bool nmea_timeout_flag~%~%# Server Timeout Flag bit from the Dongle Status field.~%# The device has not received any communications with the server in the past 3 seconds.~%bool server_timeout_flag~%~%# RTCM Timeout Flag bit from the Dongle Status field.~%# The device has not received a valid RTCM message from the server in the past 3 seconds.~%bool rtcm_timeout_flag~%~%# Device Out of Range Flag bit from the Dongle Status field~%# The device's reported position is beyond the server-side configured distance to a base station and will not receive corrections~%bool device_out_of_range_flag~%~%# Corrections Unavailable Flag bit from the Dongle Status field~%# The server is reporting that corrections are not available given the user's account settings~%bool corrections_unavailable_flag~%~%# Possible values for dongle_modem_state~%uint8 MODEM_STATE_OFF = 0~%uint8 MODEM_STATE_NO_NETWORK = 1~%uint8 MODEM_STATE_NETWORK_CONNECTED = 2~%uint8 MODEM_STATE_CONFIGURING_DATA_CONTEXT = 3~%uint8 MODEM_STATE_ACTIVATING_DATA_CONTEXT = 4~%uint8 MODEM_STATE_CONFIGURING_SOCKET = 5~%uint8 MODEM_STATE_WAITING_ON_SERVER_HANDSHAKE = 6~%uint8 MODEM_STATE_CONNECTED_AND_IDLE = 7~%uint8 MODEM_STATE_CONNECTED_AND_STREAMING = 8~%~%# Possible values for dongle_connection_type~%uint8 CONNECTION_TYPE_NO_CONNECTION = 0~%uint8 CONNECTION_TYPE_CONNECTION_2G = 2~%uint8 CONNECTION_TYPE_CONNECTION_3G = 3~%uint8 CONNECTION_TYPE_CONNECTION_4G = 4~%uint8 CONNECTION_TYPE_CONNECTION_5G = 5~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MipGnssCorrectionsRtkCorrectionsStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'epoch_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dongle_status))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MipGnssCorrectionsRtkCorrectionsStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'MipGnssCorrectionsRtkCorrectionsStatus
    (cl:cons ':header (header msg))
    (cl:cons ':time_of_week (time_of_week msg))
    (cl:cons ':week_number (week_number msg))
    (cl:cons ':epoch_status (epoch_status msg))
    (cl:cons ':dongle_status (dongle_status msg))
    (cl:cons ':gps_correction_latency (gps_correction_latency msg))
    (cl:cons ':glonass_correction_latency (glonass_correction_latency msg))
    (cl:cons ':galileo_correction_latency (galileo_correction_latency msg))
    (cl:cons ':beidou_correction_latency (beidou_correction_latency msg))
))
