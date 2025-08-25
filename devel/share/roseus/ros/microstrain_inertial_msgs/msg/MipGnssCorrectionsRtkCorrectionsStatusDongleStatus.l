;; Auto-generated. Do not edit!


(when (boundp 'microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatusDongleStatus)
  (if (not (find-package "MICROSTRAIN_INERTIAL_MSGS"))
    (make-package "MICROSTRAIN_INERTIAL_MSGS"))
  (shadow 'MipGnssCorrectionsRtkCorrectionsStatusDongleStatus (find-package "MICROSTRAIN_INERTIAL_MSGS")))
(unless (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSCORRECTIONSRTKCORRECTIONSSTATUSDONGLESTATUS")
  (make-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSCORRECTIONSRTKCORRECTIONSSTATUSDONGLESTATUS"))

(in-package "ROS")
;;//! \htmlinclude MipGnssCorrectionsRtkCorrectionsStatusDongleStatus.msg.html


(intern "*MODEM_STATE_OFF*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSCORRECTIONSRTKCORRECTIONSSTATUSDONGLESTATUS"))
(shadow '*MODEM_STATE_OFF* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSCORRECTIONSRTKCORRECTIONSSTATUSDONGLESTATUS"))
(defconstant microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatusDongleStatus::*MODEM_STATE_OFF* 0)
(intern "*MODEM_STATE_NO_NETWORK*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSCORRECTIONSRTKCORRECTIONSSTATUSDONGLESTATUS"))
(shadow '*MODEM_STATE_NO_NETWORK* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSCORRECTIONSRTKCORRECTIONSSTATUSDONGLESTATUS"))
(defconstant microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatusDongleStatus::*MODEM_STATE_NO_NETWORK* 1)
(intern "*MODEM_STATE_NETWORK_CONNECTED*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSCORRECTIONSRTKCORRECTIONSSTATUSDONGLESTATUS"))
(shadow '*MODEM_STATE_NETWORK_CONNECTED* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSCORRECTIONSRTKCORRECTIONSSTATUSDONGLESTATUS"))
(defconstant microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatusDongleStatus::*MODEM_STATE_NETWORK_CONNECTED* 2)
(intern "*MODEM_STATE_CONFIGURING_DATA_CONTEXT*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSCORRECTIONSRTKCORRECTIONSSTATUSDONGLESTATUS"))
(shadow '*MODEM_STATE_CONFIGURING_DATA_CONTEXT* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSCORRECTIONSRTKCORRECTIONSSTATUSDONGLESTATUS"))
(defconstant microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatusDongleStatus::*MODEM_STATE_CONFIGURING_DATA_CONTEXT* 3)
(intern "*MODEM_STATE_ACTIVATING_DATA_CONTEXT*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSCORRECTIONSRTKCORRECTIONSSTATUSDONGLESTATUS"))
(shadow '*MODEM_STATE_ACTIVATING_DATA_CONTEXT* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSCORRECTIONSRTKCORRECTIONSSTATUSDONGLESTATUS"))
(defconstant microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatusDongleStatus::*MODEM_STATE_ACTIVATING_DATA_CONTEXT* 4)
(intern "*MODEM_STATE_CONFIGURING_SOCKET*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSCORRECTIONSRTKCORRECTIONSSTATUSDONGLESTATUS"))
(shadow '*MODEM_STATE_CONFIGURING_SOCKET* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSCORRECTIONSRTKCORRECTIONSSTATUSDONGLESTATUS"))
(defconstant microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatusDongleStatus::*MODEM_STATE_CONFIGURING_SOCKET* 5)
(intern "*MODEM_STATE_WAITING_ON_SERVER_HANDSHAKE*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSCORRECTIONSRTKCORRECTIONSSTATUSDONGLESTATUS"))
(shadow '*MODEM_STATE_WAITING_ON_SERVER_HANDSHAKE* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSCORRECTIONSRTKCORRECTIONSSTATUSDONGLESTATUS"))
(defconstant microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatusDongleStatus::*MODEM_STATE_WAITING_ON_SERVER_HANDSHAKE* 6)
(intern "*MODEM_STATE_CONNECTED_AND_IDLE*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSCORRECTIONSRTKCORRECTIONSSTATUSDONGLESTATUS"))
(shadow '*MODEM_STATE_CONNECTED_AND_IDLE* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSCORRECTIONSRTKCORRECTIONSSTATUSDONGLESTATUS"))
(defconstant microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatusDongleStatus::*MODEM_STATE_CONNECTED_AND_IDLE* 7)
(intern "*MODEM_STATE_CONNECTED_AND_STREAMING*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSCORRECTIONSRTKCORRECTIONSSTATUSDONGLESTATUS"))
(shadow '*MODEM_STATE_CONNECTED_AND_STREAMING* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSCORRECTIONSRTKCORRECTIONSSTATUSDONGLESTATUS"))
(defconstant microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatusDongleStatus::*MODEM_STATE_CONNECTED_AND_STREAMING* 8)
(intern "*CONNECTION_TYPE_NO_CONNECTION*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSCORRECTIONSRTKCORRECTIONSSTATUSDONGLESTATUS"))
(shadow '*CONNECTION_TYPE_NO_CONNECTION* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSCORRECTIONSRTKCORRECTIONSSTATUSDONGLESTATUS"))
(defconstant microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatusDongleStatus::*CONNECTION_TYPE_NO_CONNECTION* 0)
(intern "*CONNECTION_TYPE_CONNECTION_2G*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSCORRECTIONSRTKCORRECTIONSSTATUSDONGLESTATUS"))
(shadow '*CONNECTION_TYPE_CONNECTION_2G* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSCORRECTIONSRTKCORRECTIONSSTATUSDONGLESTATUS"))
(defconstant microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatusDongleStatus::*CONNECTION_TYPE_CONNECTION_2G* 2)
(intern "*CONNECTION_TYPE_CONNECTION_3G*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSCORRECTIONSRTKCORRECTIONSSTATUSDONGLESTATUS"))
(shadow '*CONNECTION_TYPE_CONNECTION_3G* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSCORRECTIONSRTKCORRECTIONSSTATUSDONGLESTATUS"))
(defconstant microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatusDongleStatus::*CONNECTION_TYPE_CONNECTION_3G* 3)
(intern "*CONNECTION_TYPE_CONNECTION_4G*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSCORRECTIONSRTKCORRECTIONSSTATUSDONGLESTATUS"))
(shadow '*CONNECTION_TYPE_CONNECTION_4G* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSCORRECTIONSRTKCORRECTIONSSTATUSDONGLESTATUS"))
(defconstant microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatusDongleStatus::*CONNECTION_TYPE_CONNECTION_4G* 4)
(intern "*CONNECTION_TYPE_CONNECTION_5G*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSCORRECTIONSRTKCORRECTIONSSTATUSDONGLESTATUS"))
(shadow '*CONNECTION_TYPE_CONNECTION_5G* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSCORRECTIONSRTKCORRECTIONSSTATUSDONGLESTATUS"))
(defconstant microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatusDongleStatus::*CONNECTION_TYPE_CONNECTION_5G* 5)

(defun microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatusDongleStatus-to-symbol (const)
  (cond
        ((= const 0) 'microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatusDongleStatus::*MODEM_STATE_OFF*)
        ((= const 1) 'microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatusDongleStatus::*MODEM_STATE_NO_NETWORK*)
        ((= const 2) 'microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatusDongleStatus::*MODEM_STATE_NETWORK_CONNECTED*)
        ((= const 3) 'microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatusDongleStatus::*MODEM_STATE_CONFIGURING_DATA_CONTEXT*)
        ((= const 4) 'microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatusDongleStatus::*MODEM_STATE_ACTIVATING_DATA_CONTEXT*)
        ((= const 5) 'microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatusDongleStatus::*MODEM_STATE_CONFIGURING_SOCKET*)
        ((= const 6) 'microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatusDongleStatus::*MODEM_STATE_WAITING_ON_SERVER_HANDSHAKE*)
        ((= const 7) 'microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatusDongleStatus::*MODEM_STATE_CONNECTED_AND_IDLE*)
        ((= const 8) 'microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatusDongleStatus::*MODEM_STATE_CONNECTED_AND_STREAMING*)
        ((= const 0) 'microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatusDongleStatus::*CONNECTION_TYPE_NO_CONNECTION*)
        ((= const 2) 'microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatusDongleStatus::*CONNECTION_TYPE_CONNECTION_2G*)
        ((= const 3) 'microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatusDongleStatus::*CONNECTION_TYPE_CONNECTION_3G*)
        ((= const 4) 'microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatusDongleStatus::*CONNECTION_TYPE_CONNECTION_4G*)
        ((= const 5) 'microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatusDongleStatus::*CONNECTION_TYPE_CONNECTION_5G*)
        (t nil)))

(defclass microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatusDongleStatus
  :super ros::object
  :slots (_modem_state _connection_type _rssi _signal_quality _tower_change_indicator _nmea_timeout_flag _server_timeout_flag _rtcm_timeout_flag _device_out_of_range_flag _corrections_unavailable_flag ))

(defmethod microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatusDongleStatus
  (:init
   (&key
    ((:modem_state __modem_state) 0)
    ((:connection_type __connection_type) 0)
    ((:rssi __rssi) 0)
    ((:signal_quality __signal_quality) 0)
    ((:tower_change_indicator __tower_change_indicator) 0)
    ((:nmea_timeout_flag __nmea_timeout_flag) nil)
    ((:server_timeout_flag __server_timeout_flag) nil)
    ((:rtcm_timeout_flag __rtcm_timeout_flag) nil)
    ((:device_out_of_range_flag __device_out_of_range_flag) nil)
    ((:corrections_unavailable_flag __corrections_unavailable_flag) nil)
    )
   (send-super :init)
   (setq _modem_state (round __modem_state))
   (setq _connection_type (round __connection_type))
   (setq _rssi (round __rssi))
   (setq _signal_quality (round __signal_quality))
   (setq _tower_change_indicator (round __tower_change_indicator))
   (setq _nmea_timeout_flag __nmea_timeout_flag)
   (setq _server_timeout_flag __server_timeout_flag)
   (setq _rtcm_timeout_flag __rtcm_timeout_flag)
   (setq _device_out_of_range_flag __device_out_of_range_flag)
   (setq _corrections_unavailable_flag __corrections_unavailable_flag)
   self)
  (:modem_state
   (&optional __modem_state)
   (if __modem_state (setq _modem_state __modem_state)) _modem_state)
  (:connection_type
   (&optional __connection_type)
   (if __connection_type (setq _connection_type __connection_type)) _connection_type)
  (:rssi
   (&optional __rssi)
   (if __rssi (setq _rssi __rssi)) _rssi)
  (:signal_quality
   (&optional __signal_quality)
   (if __signal_quality (setq _signal_quality __signal_quality)) _signal_quality)
  (:tower_change_indicator
   (&optional __tower_change_indicator)
   (if __tower_change_indicator (setq _tower_change_indicator __tower_change_indicator)) _tower_change_indicator)
  (:nmea_timeout_flag
   (&optional (__nmea_timeout_flag :null))
   (if (not (eq __nmea_timeout_flag :null)) (setq _nmea_timeout_flag __nmea_timeout_flag)) _nmea_timeout_flag)
  (:server_timeout_flag
   (&optional (__server_timeout_flag :null))
   (if (not (eq __server_timeout_flag :null)) (setq _server_timeout_flag __server_timeout_flag)) _server_timeout_flag)
  (:rtcm_timeout_flag
   (&optional (__rtcm_timeout_flag :null))
   (if (not (eq __rtcm_timeout_flag :null)) (setq _rtcm_timeout_flag __rtcm_timeout_flag)) _rtcm_timeout_flag)
  (:device_out_of_range_flag
   (&optional (__device_out_of_range_flag :null))
   (if (not (eq __device_out_of_range_flag :null)) (setq _device_out_of_range_flag __device_out_of_range_flag)) _device_out_of_range_flag)
  (:corrections_unavailable_flag
   (&optional (__corrections_unavailable_flag :null))
   (if (not (eq __corrections_unavailable_flag :null)) (setq _corrections_unavailable_flag __corrections_unavailable_flag)) _corrections_unavailable_flag)
  (:serialization-length
   ()
   (+
    ;; uint8 _modem_state
    1
    ;; uint8 _connection_type
    1
    ;; int8 _rssi
    1
    ;; uint8 _signal_quality
    1
    ;; uint8 _tower_change_indicator
    1
    ;; bool _nmea_timeout_flag
    1
    ;; bool _server_timeout_flag
    1
    ;; bool _rtcm_timeout_flag
    1
    ;; bool _device_out_of_range_flag
    1
    ;; bool _corrections_unavailable_flag
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _modem_state
       (write-byte _modem_state s)
     ;; uint8 _connection_type
       (write-byte _connection_type s)
     ;; int8 _rssi
       (write-byte _rssi s)
     ;; uint8 _signal_quality
       (write-byte _signal_quality s)
     ;; uint8 _tower_change_indicator
       (write-byte _tower_change_indicator s)
     ;; bool _nmea_timeout_flag
       (if _nmea_timeout_flag (write-byte -1 s) (write-byte 0 s))
     ;; bool _server_timeout_flag
       (if _server_timeout_flag (write-byte -1 s) (write-byte 0 s))
     ;; bool _rtcm_timeout_flag
       (if _rtcm_timeout_flag (write-byte -1 s) (write-byte 0 s))
     ;; bool _device_out_of_range_flag
       (if _device_out_of_range_flag (write-byte -1 s) (write-byte 0 s))
     ;; bool _corrections_unavailable_flag
       (if _corrections_unavailable_flag (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _modem_state
     (setq _modem_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _connection_type
     (setq _connection_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int8 _rssi
     (setq _rssi (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _rssi 127) (setq _rssi (- _rssi 256)))
   ;; uint8 _signal_quality
     (setq _signal_quality (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _tower_change_indicator
     (setq _tower_change_indicator (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _nmea_timeout_flag
     (setq _nmea_timeout_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _server_timeout_flag
     (setq _server_timeout_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _rtcm_timeout_flag
     (setq _rtcm_timeout_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _device_out_of_range_flag
     (setq _device_out_of_range_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _corrections_unavailable_flag
     (setq _corrections_unavailable_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatusDongleStatus :md5sum-) "c6b32ecff25b8d73f86e7e5db3fce5f8")
(setf (get microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatusDongleStatus :datatype-) "microstrain_inertial_msgs/MipGnssCorrectionsRtkCorrectionsStatusDongleStatus")
(setf (get microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatusDongleStatus :definition-)
      "# Message definition for the Dongle Status field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/gnss_corrections/data/mip_field_gnss_rtk_corrections_status.htm?Highlight=rtk%20status
#   Note: This message will never be published on it's own, only included in other messages.

# Modem State bits from the Dongle Status field. See MODEM_STATE_* enums for possible values
uint8 modem_state

# Connection Type bits from the Dongle Status field. See CONNECTION_TYPE_* enums for possible values
uint8 connection_type

# RSSI bits from the Dongle Status field. Units are in dBm
int8 rssi

# Signal Quality bits from the Dongle Status field.
# 0-10 indication of signal quality, 0 means unavailable/invalid/not connected, 1 is poor, 10 is excellent.
uint8 signal_quality

# Tower Change Indicator bits from the Dongle Status field.
# 4-bit value that increments each time a cell tower change occurs. Rolls over from 15 to 0.
uint8 tower_change_indicator

# NMEA Timeout Flag bit from the Dongle Status field.
# The device has not received a valid NMEA message from the GQ7 in the past 3 seconds
bool nmea_timeout_flag

# Server Timeout Flag bit from the Dongle Status field.
# The device has not received any communications with the server in the past 3 seconds.
bool server_timeout_flag

# RTCM Timeout Flag bit from the Dongle Status field.
# The device has not received a valid RTCM message from the server in the past 3 seconds.
bool rtcm_timeout_flag

# Device Out of Range Flag bit from the Dongle Status field
# The device's reported position is beyond the server-side configured distance to a base station and will not receive corrections
bool device_out_of_range_flag

# Corrections Unavailable Flag bit from the Dongle Status field
# The server is reporting that corrections are not available given the user's account settings
bool corrections_unavailable_flag

# Possible values for dongle_modem_state
uint8 MODEM_STATE_OFF = 0
uint8 MODEM_STATE_NO_NETWORK = 1
uint8 MODEM_STATE_NETWORK_CONNECTED = 2
uint8 MODEM_STATE_CONFIGURING_DATA_CONTEXT = 3
uint8 MODEM_STATE_ACTIVATING_DATA_CONTEXT = 4
uint8 MODEM_STATE_CONFIGURING_SOCKET = 5
uint8 MODEM_STATE_WAITING_ON_SERVER_HANDSHAKE = 6
uint8 MODEM_STATE_CONNECTED_AND_IDLE = 7
uint8 MODEM_STATE_CONNECTED_AND_STREAMING = 8

# Possible values for dongle_connection_type
uint8 CONNECTION_TYPE_NO_CONNECTION = 0
uint8 CONNECTION_TYPE_CONNECTION_2G = 2
uint8 CONNECTION_TYPE_CONNECTION_3G = 3
uint8 CONNECTION_TYPE_CONNECTION_4G = 4
uint8 CONNECTION_TYPE_CONNECTION_5G = 5
")



(provide :microstrain_inertial_msgs/MipGnssCorrectionsRtkCorrectionsStatusDongleStatus "c6b32ecff25b8d73f86e7e5db3fce5f8")


