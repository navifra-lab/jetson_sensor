; Auto-generated. Do not edit!


(cl:in-package microstrain_inertial_msgs-msg)


;//! \htmlinclude MipGnssCorrectionsRtkCorrectionsStatusDongleStatus.msg.html

(cl:defclass <MipGnssCorrectionsRtkCorrectionsStatusDongleStatus> (roslisp-msg-protocol:ros-message)
  ((modem_state
    :reader modem_state
    :initarg :modem_state
    :type cl:fixnum
    :initform 0)
   (connection_type
    :reader connection_type
    :initarg :connection_type
    :type cl:fixnum
    :initform 0)
   (rssi
    :reader rssi
    :initarg :rssi
    :type cl:fixnum
    :initform 0)
   (signal_quality
    :reader signal_quality
    :initarg :signal_quality
    :type cl:fixnum
    :initform 0)
   (tower_change_indicator
    :reader tower_change_indicator
    :initarg :tower_change_indicator
    :type cl:fixnum
    :initform 0)
   (nmea_timeout_flag
    :reader nmea_timeout_flag
    :initarg :nmea_timeout_flag
    :type cl:boolean
    :initform cl:nil)
   (server_timeout_flag
    :reader server_timeout_flag
    :initarg :server_timeout_flag
    :type cl:boolean
    :initform cl:nil)
   (rtcm_timeout_flag
    :reader rtcm_timeout_flag
    :initarg :rtcm_timeout_flag
    :type cl:boolean
    :initform cl:nil)
   (device_out_of_range_flag
    :reader device_out_of_range_flag
    :initarg :device_out_of_range_flag
    :type cl:boolean
    :initform cl:nil)
   (corrections_unavailable_flag
    :reader corrections_unavailable_flag
    :initarg :corrections_unavailable_flag
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MipGnssCorrectionsRtkCorrectionsStatusDongleStatus (<MipGnssCorrectionsRtkCorrectionsStatusDongleStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MipGnssCorrectionsRtkCorrectionsStatusDongleStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MipGnssCorrectionsRtkCorrectionsStatusDongleStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name microstrain_inertial_msgs-msg:<MipGnssCorrectionsRtkCorrectionsStatusDongleStatus> is deprecated: use microstrain_inertial_msgs-msg:MipGnssCorrectionsRtkCorrectionsStatusDongleStatus instead.")))

(cl:ensure-generic-function 'modem_state-val :lambda-list '(m))
(cl:defmethod modem_state-val ((m <MipGnssCorrectionsRtkCorrectionsStatusDongleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:modem_state-val is deprecated.  Use microstrain_inertial_msgs-msg:modem_state instead.")
  (modem_state m))

(cl:ensure-generic-function 'connection_type-val :lambda-list '(m))
(cl:defmethod connection_type-val ((m <MipGnssCorrectionsRtkCorrectionsStatusDongleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:connection_type-val is deprecated.  Use microstrain_inertial_msgs-msg:connection_type instead.")
  (connection_type m))

(cl:ensure-generic-function 'rssi-val :lambda-list '(m))
(cl:defmethod rssi-val ((m <MipGnssCorrectionsRtkCorrectionsStatusDongleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:rssi-val is deprecated.  Use microstrain_inertial_msgs-msg:rssi instead.")
  (rssi m))

(cl:ensure-generic-function 'signal_quality-val :lambda-list '(m))
(cl:defmethod signal_quality-val ((m <MipGnssCorrectionsRtkCorrectionsStatusDongleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:signal_quality-val is deprecated.  Use microstrain_inertial_msgs-msg:signal_quality instead.")
  (signal_quality m))

(cl:ensure-generic-function 'tower_change_indicator-val :lambda-list '(m))
(cl:defmethod tower_change_indicator-val ((m <MipGnssCorrectionsRtkCorrectionsStatusDongleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:tower_change_indicator-val is deprecated.  Use microstrain_inertial_msgs-msg:tower_change_indicator instead.")
  (tower_change_indicator m))

(cl:ensure-generic-function 'nmea_timeout_flag-val :lambda-list '(m))
(cl:defmethod nmea_timeout_flag-val ((m <MipGnssCorrectionsRtkCorrectionsStatusDongleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:nmea_timeout_flag-val is deprecated.  Use microstrain_inertial_msgs-msg:nmea_timeout_flag instead.")
  (nmea_timeout_flag m))

(cl:ensure-generic-function 'server_timeout_flag-val :lambda-list '(m))
(cl:defmethod server_timeout_flag-val ((m <MipGnssCorrectionsRtkCorrectionsStatusDongleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:server_timeout_flag-val is deprecated.  Use microstrain_inertial_msgs-msg:server_timeout_flag instead.")
  (server_timeout_flag m))

(cl:ensure-generic-function 'rtcm_timeout_flag-val :lambda-list '(m))
(cl:defmethod rtcm_timeout_flag-val ((m <MipGnssCorrectionsRtkCorrectionsStatusDongleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:rtcm_timeout_flag-val is deprecated.  Use microstrain_inertial_msgs-msg:rtcm_timeout_flag instead.")
  (rtcm_timeout_flag m))

(cl:ensure-generic-function 'device_out_of_range_flag-val :lambda-list '(m))
(cl:defmethod device_out_of_range_flag-val ((m <MipGnssCorrectionsRtkCorrectionsStatusDongleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:device_out_of_range_flag-val is deprecated.  Use microstrain_inertial_msgs-msg:device_out_of_range_flag instead.")
  (device_out_of_range_flag m))

(cl:ensure-generic-function 'corrections_unavailable_flag-val :lambda-list '(m))
(cl:defmethod corrections_unavailable_flag-val ((m <MipGnssCorrectionsRtkCorrectionsStatusDongleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:corrections_unavailable_flag-val is deprecated.  Use microstrain_inertial_msgs-msg:corrections_unavailable_flag instead.")
  (corrections_unavailable_flag m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MipGnssCorrectionsRtkCorrectionsStatusDongleStatus>)))
    "Constants for message type '<MipGnssCorrectionsRtkCorrectionsStatusDongleStatus>"
  '((:MODEM_STATE_OFF . 0)
    (:MODEM_STATE_NO_NETWORK . 1)
    (:MODEM_STATE_NETWORK_CONNECTED . 2)
    (:MODEM_STATE_CONFIGURING_DATA_CONTEXT . 3)
    (:MODEM_STATE_ACTIVATING_DATA_CONTEXT . 4)
    (:MODEM_STATE_CONFIGURING_SOCKET . 5)
    (:MODEM_STATE_WAITING_ON_SERVER_HANDSHAKE . 6)
    (:MODEM_STATE_CONNECTED_AND_IDLE . 7)
    (:MODEM_STATE_CONNECTED_AND_STREAMING . 8)
    (:CONNECTION_TYPE_NO_CONNECTION . 0)
    (:CONNECTION_TYPE_CONNECTION_2G . 2)
    (:CONNECTION_TYPE_CONNECTION_3G . 3)
    (:CONNECTION_TYPE_CONNECTION_4G . 4)
    (:CONNECTION_TYPE_CONNECTION_5G . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MipGnssCorrectionsRtkCorrectionsStatusDongleStatus)))
    "Constants for message type 'MipGnssCorrectionsRtkCorrectionsStatusDongleStatus"
  '((:MODEM_STATE_OFF . 0)
    (:MODEM_STATE_NO_NETWORK . 1)
    (:MODEM_STATE_NETWORK_CONNECTED . 2)
    (:MODEM_STATE_CONFIGURING_DATA_CONTEXT . 3)
    (:MODEM_STATE_ACTIVATING_DATA_CONTEXT . 4)
    (:MODEM_STATE_CONFIGURING_SOCKET . 5)
    (:MODEM_STATE_WAITING_ON_SERVER_HANDSHAKE . 6)
    (:MODEM_STATE_CONNECTED_AND_IDLE . 7)
    (:MODEM_STATE_CONNECTED_AND_STREAMING . 8)
    (:CONNECTION_TYPE_NO_CONNECTION . 0)
    (:CONNECTION_TYPE_CONNECTION_2G . 2)
    (:CONNECTION_TYPE_CONNECTION_3G . 3)
    (:CONNECTION_TYPE_CONNECTION_4G . 4)
    (:CONNECTION_TYPE_CONNECTION_5G . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MipGnssCorrectionsRtkCorrectionsStatusDongleStatus>) ostream)
  "Serializes a message object of type '<MipGnssCorrectionsRtkCorrectionsStatusDongleStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'modem_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'connection_type)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'rssi)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'signal_quality)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tower_change_indicator)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'nmea_timeout_flag) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'server_timeout_flag) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rtcm_timeout_flag) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'device_out_of_range_flag) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'corrections_unavailable_flag) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MipGnssCorrectionsRtkCorrectionsStatusDongleStatus>) istream)
  "Deserializes a message object of type '<MipGnssCorrectionsRtkCorrectionsStatusDongleStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'modem_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'connection_type)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rssi) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'signal_quality)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tower_change_indicator)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'nmea_timeout_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'server_timeout_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'rtcm_timeout_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'device_out_of_range_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'corrections_unavailable_flag) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MipGnssCorrectionsRtkCorrectionsStatusDongleStatus>)))
  "Returns string type for a message object of type '<MipGnssCorrectionsRtkCorrectionsStatusDongleStatus>"
  "microstrain_inertial_msgs/MipGnssCorrectionsRtkCorrectionsStatusDongleStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MipGnssCorrectionsRtkCorrectionsStatusDongleStatus)))
  "Returns string type for a message object of type 'MipGnssCorrectionsRtkCorrectionsStatusDongleStatus"
  "microstrain_inertial_msgs/MipGnssCorrectionsRtkCorrectionsStatusDongleStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MipGnssCorrectionsRtkCorrectionsStatusDongleStatus>)))
  "Returns md5sum for a message object of type '<MipGnssCorrectionsRtkCorrectionsStatusDongleStatus>"
  "c6b32ecff25b8d73f86e7e5db3fce5f8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MipGnssCorrectionsRtkCorrectionsStatusDongleStatus)))
  "Returns md5sum for a message object of type 'MipGnssCorrectionsRtkCorrectionsStatusDongleStatus"
  "c6b32ecff25b8d73f86e7e5db3fce5f8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MipGnssCorrectionsRtkCorrectionsStatusDongleStatus>)))
  "Returns full string definition for message of type '<MipGnssCorrectionsRtkCorrectionsStatusDongleStatus>"
  (cl:format cl:nil "# Message definition for the Dongle Status field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/gnss_corrections/data/mip_field_gnss_rtk_corrections_status.htm?Highlight=rtk%20status~%#   Note: This message will never be published on it's own, only included in other messages.~%~%# Modem State bits from the Dongle Status field. See MODEM_STATE_* enums for possible values~%uint8 modem_state~%~%# Connection Type bits from the Dongle Status field. See CONNECTION_TYPE_* enums for possible values~%uint8 connection_type~%~%# RSSI bits from the Dongle Status field. Units are in dBm~%int8 rssi~%~%# Signal Quality bits from the Dongle Status field.~%# 0-10 indication of signal quality, 0 means unavailable/invalid/not connected, 1 is poor, 10 is excellent.~%uint8 signal_quality~%~%# Tower Change Indicator bits from the Dongle Status field.~%# 4-bit value that increments each time a cell tower change occurs. Rolls over from 15 to 0.~%uint8 tower_change_indicator~%~%# NMEA Timeout Flag bit from the Dongle Status field.~%# The device has not received a valid NMEA message from the GQ7 in the past 3 seconds~%bool nmea_timeout_flag~%~%# Server Timeout Flag bit from the Dongle Status field.~%# The device has not received any communications with the server in the past 3 seconds.~%bool server_timeout_flag~%~%# RTCM Timeout Flag bit from the Dongle Status field.~%# The device has not received a valid RTCM message from the server in the past 3 seconds.~%bool rtcm_timeout_flag~%~%# Device Out of Range Flag bit from the Dongle Status field~%# The device's reported position is beyond the server-side configured distance to a base station and will not receive corrections~%bool device_out_of_range_flag~%~%# Corrections Unavailable Flag bit from the Dongle Status field~%# The server is reporting that corrections are not available given the user's account settings~%bool corrections_unavailable_flag~%~%# Possible values for dongle_modem_state~%uint8 MODEM_STATE_OFF = 0~%uint8 MODEM_STATE_NO_NETWORK = 1~%uint8 MODEM_STATE_NETWORK_CONNECTED = 2~%uint8 MODEM_STATE_CONFIGURING_DATA_CONTEXT = 3~%uint8 MODEM_STATE_ACTIVATING_DATA_CONTEXT = 4~%uint8 MODEM_STATE_CONFIGURING_SOCKET = 5~%uint8 MODEM_STATE_WAITING_ON_SERVER_HANDSHAKE = 6~%uint8 MODEM_STATE_CONNECTED_AND_IDLE = 7~%uint8 MODEM_STATE_CONNECTED_AND_STREAMING = 8~%~%# Possible values for dongle_connection_type~%uint8 CONNECTION_TYPE_NO_CONNECTION = 0~%uint8 CONNECTION_TYPE_CONNECTION_2G = 2~%uint8 CONNECTION_TYPE_CONNECTION_3G = 3~%uint8 CONNECTION_TYPE_CONNECTION_4G = 4~%uint8 CONNECTION_TYPE_CONNECTION_5G = 5~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MipGnssCorrectionsRtkCorrectionsStatusDongleStatus)))
  "Returns full string definition for message of type 'MipGnssCorrectionsRtkCorrectionsStatusDongleStatus"
  (cl:format cl:nil "# Message definition for the Dongle Status field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/gnss_corrections/data/mip_field_gnss_rtk_corrections_status.htm?Highlight=rtk%20status~%#   Note: This message will never be published on it's own, only included in other messages.~%~%# Modem State bits from the Dongle Status field. See MODEM_STATE_* enums for possible values~%uint8 modem_state~%~%# Connection Type bits from the Dongle Status field. See CONNECTION_TYPE_* enums for possible values~%uint8 connection_type~%~%# RSSI bits from the Dongle Status field. Units are in dBm~%int8 rssi~%~%# Signal Quality bits from the Dongle Status field.~%# 0-10 indication of signal quality, 0 means unavailable/invalid/not connected, 1 is poor, 10 is excellent.~%uint8 signal_quality~%~%# Tower Change Indicator bits from the Dongle Status field.~%# 4-bit value that increments each time a cell tower change occurs. Rolls over from 15 to 0.~%uint8 tower_change_indicator~%~%# NMEA Timeout Flag bit from the Dongle Status field.~%# The device has not received a valid NMEA message from the GQ7 in the past 3 seconds~%bool nmea_timeout_flag~%~%# Server Timeout Flag bit from the Dongle Status field.~%# The device has not received any communications with the server in the past 3 seconds.~%bool server_timeout_flag~%~%# RTCM Timeout Flag bit from the Dongle Status field.~%# The device has not received a valid RTCM message from the server in the past 3 seconds.~%bool rtcm_timeout_flag~%~%# Device Out of Range Flag bit from the Dongle Status field~%# The device's reported position is beyond the server-side configured distance to a base station and will not receive corrections~%bool device_out_of_range_flag~%~%# Corrections Unavailable Flag bit from the Dongle Status field~%# The server is reporting that corrections are not available given the user's account settings~%bool corrections_unavailable_flag~%~%# Possible values for dongle_modem_state~%uint8 MODEM_STATE_OFF = 0~%uint8 MODEM_STATE_NO_NETWORK = 1~%uint8 MODEM_STATE_NETWORK_CONNECTED = 2~%uint8 MODEM_STATE_CONFIGURING_DATA_CONTEXT = 3~%uint8 MODEM_STATE_ACTIVATING_DATA_CONTEXT = 4~%uint8 MODEM_STATE_CONFIGURING_SOCKET = 5~%uint8 MODEM_STATE_WAITING_ON_SERVER_HANDSHAKE = 6~%uint8 MODEM_STATE_CONNECTED_AND_IDLE = 7~%uint8 MODEM_STATE_CONNECTED_AND_STREAMING = 8~%~%# Possible values for dongle_connection_type~%uint8 CONNECTION_TYPE_NO_CONNECTION = 0~%uint8 CONNECTION_TYPE_CONNECTION_2G = 2~%uint8 CONNECTION_TYPE_CONNECTION_3G = 3~%uint8 CONNECTION_TYPE_CONNECTION_4G = 4~%uint8 CONNECTION_TYPE_CONNECTION_5G = 5~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MipGnssCorrectionsRtkCorrectionsStatusDongleStatus>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MipGnssCorrectionsRtkCorrectionsStatusDongleStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'MipGnssCorrectionsRtkCorrectionsStatusDongleStatus
    (cl:cons ':modem_state (modem_state msg))
    (cl:cons ':connection_type (connection_type msg))
    (cl:cons ':rssi (rssi msg))
    (cl:cons ':signal_quality (signal_quality msg))
    (cl:cons ':tower_change_indicator (tower_change_indicator msg))
    (cl:cons ':nmea_timeout_flag (nmea_timeout_flag msg))
    (cl:cons ':server_timeout_flag (server_timeout_flag msg))
    (cl:cons ':rtcm_timeout_flag (rtcm_timeout_flag msg))
    (cl:cons ':device_out_of_range_flag (device_out_of_range_flag msg))
    (cl:cons ':corrections_unavailable_flag (corrections_unavailable_flag msg))
))
