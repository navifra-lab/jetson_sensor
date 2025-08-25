;; Auto-generated. Do not edit!


(when (boundp 'microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatus)
  (if (not (find-package "MICROSTRAIN_INERTIAL_MSGS"))
    (make-package "MICROSTRAIN_INERTIAL_MSGS"))
  (shadow 'MipGnssCorrectionsRtkCorrectionsStatus (find-package "MICROSTRAIN_INERTIAL_MSGS")))
(unless (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSCORRECTIONSRTKCORRECTIONSSTATUS")
  (make-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSCORRECTIONSRTKCORRECTIONSSTATUS"))

(in-package "ROS")
;;//! \htmlinclude MipGnssCorrectionsRtkCorrectionsStatus.msg.html


(defclass microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatus
  :super ros::object
  :slots (_header _time_of_week _week_number _epoch_status _dongle_status _gps_correction_latency _glonass_correction_latency _galileo_correction_latency _beidou_correction_latency ))

(defmethod microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatus
  (:init
   (&key
    ((:header __header) (instance microstrain_inertial_msgs::MipHeader :init))
    ((:time_of_week __time_of_week) 0.0)
    ((:week_number __week_number) 0)
    ((:epoch_status __epoch_status) (instance microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatusEpochStatus :init))
    ((:dongle_status __dongle_status) (instance microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatusDongleStatus :init))
    ((:gps_correction_latency __gps_correction_latency) 0.0)
    ((:glonass_correction_latency __glonass_correction_latency) 0.0)
    ((:galileo_correction_latency __galileo_correction_latency) 0.0)
    ((:beidou_correction_latency __beidou_correction_latency) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _time_of_week (float __time_of_week))
   (setq _week_number (round __week_number))
   (setq _epoch_status __epoch_status)
   (setq _dongle_status __dongle_status)
   (setq _gps_correction_latency (float __gps_correction_latency))
   (setq _glonass_correction_latency (float __glonass_correction_latency))
   (setq _galileo_correction_latency (float __galileo_correction_latency))
   (setq _beidou_correction_latency (float __beidou_correction_latency))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:time_of_week
   (&optional __time_of_week)
   (if __time_of_week (setq _time_of_week __time_of_week)) _time_of_week)
  (:week_number
   (&optional __week_number)
   (if __week_number (setq _week_number __week_number)) _week_number)
  (:epoch_status
   (&rest __epoch_status)
   (if (keywordp (car __epoch_status))
       (send* _epoch_status __epoch_status)
     (progn
       (if __epoch_status (setq _epoch_status (car __epoch_status)))
       _epoch_status)))
  (:dongle_status
   (&rest __dongle_status)
   (if (keywordp (car __dongle_status))
       (send* _dongle_status __dongle_status)
     (progn
       (if __dongle_status (setq _dongle_status (car __dongle_status)))
       _dongle_status)))
  (:gps_correction_latency
   (&optional __gps_correction_latency)
   (if __gps_correction_latency (setq _gps_correction_latency __gps_correction_latency)) _gps_correction_latency)
  (:glonass_correction_latency
   (&optional __glonass_correction_latency)
   (if __glonass_correction_latency (setq _glonass_correction_latency __glonass_correction_latency)) _glonass_correction_latency)
  (:galileo_correction_latency
   (&optional __galileo_correction_latency)
   (if __galileo_correction_latency (setq _galileo_correction_latency __galileo_correction_latency)) _galileo_correction_latency)
  (:beidou_correction_latency
   (&optional __beidou_correction_latency)
   (if __beidou_correction_latency (setq _beidou_correction_latency __beidou_correction_latency)) _beidou_correction_latency)
  (:serialization-length
   ()
   (+
    ;; microstrain_inertial_msgs/MipHeader _header
    (send _header :serialization-length)
    ;; float64 _time_of_week
    8
    ;; uint16 _week_number
    2
    ;; microstrain_inertial_msgs/MipGnssCorrectionsRtkCorrectionsStatusEpochStatus _epoch_status
    (send _epoch_status :serialization-length)
    ;; microstrain_inertial_msgs/MipGnssCorrectionsRtkCorrectionsStatusDongleStatus _dongle_status
    (send _dongle_status :serialization-length)
    ;; float32 _gps_correction_latency
    4
    ;; float32 _glonass_correction_latency
    4
    ;; float32 _galileo_correction_latency
    4
    ;; float32 _beidou_correction_latency
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; microstrain_inertial_msgs/MipHeader _header
       (send _header :serialize s)
     ;; float64 _time_of_week
       (sys::poke _time_of_week (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint16 _week_number
       (write-word _week_number s)
     ;; microstrain_inertial_msgs/MipGnssCorrectionsRtkCorrectionsStatusEpochStatus _epoch_status
       (send _epoch_status :serialize s)
     ;; microstrain_inertial_msgs/MipGnssCorrectionsRtkCorrectionsStatusDongleStatus _dongle_status
       (send _dongle_status :serialize s)
     ;; float32 _gps_correction_latency
       (sys::poke _gps_correction_latency (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _glonass_correction_latency
       (sys::poke _glonass_correction_latency (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _galileo_correction_latency
       (sys::poke _galileo_correction_latency (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _beidou_correction_latency
       (sys::poke _beidou_correction_latency (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; microstrain_inertial_msgs/MipHeader _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _time_of_week
     (setq _time_of_week (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint16 _week_number
     (setq _week_number (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; microstrain_inertial_msgs/MipGnssCorrectionsRtkCorrectionsStatusEpochStatus _epoch_status
     (send _epoch_status :deserialize buf ptr-) (incf ptr- (send _epoch_status :serialization-length))
   ;; microstrain_inertial_msgs/MipGnssCorrectionsRtkCorrectionsStatusDongleStatus _dongle_status
     (send _dongle_status :deserialize buf ptr-) (incf ptr- (send _dongle_status :serialization-length))
   ;; float32 _gps_correction_latency
     (setq _gps_correction_latency (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _glonass_correction_latency
     (setq _glonass_correction_latency (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _galileo_correction_latency
     (setq _galileo_correction_latency (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _beidou_correction_latency
     (setq _beidou_correction_latency (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatus :md5sum-) "a2de1c3721150da51fc4cbcdbe40ed22")
(setf (get microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatus :datatype-) "microstrain_inertial_msgs/MipGnssCorrectionsRtkCorrectionsStatus")
(setf (get microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatus :definition-)
      "# Message definition for the MIP field https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/gnss_corrections/data/mip_field_gnss_rtk_corrections_status.htm

# Header containing common information
#   header.frame_id has no meaning in this message
microstrain_inertial_msgs/MipHeader header

# GPS time of week (seconds)
float64 time_of_week

# GPS weeks since 1980 (weeks)
uint16 week_number

# Parsed out version of the Epoch Status bitfield
microstrain_inertial_msgs/MipGnssCorrectionsRtkCorrectionsStatusEpochStatus epoch_status

# Parsed out version of the Dongle Status bitfield
microstrain_inertial_msgs/MipGnssCorrectionsRtkCorrectionsStatusDongleStatus dongle_status

# Latency of last GPS correction (seconds)
float32 gps_correction_latency

# Latency of last GLONASS correction (seconds)
float32 glonass_correction_latency

# Latency of last Galileo correction (seconds)
float32 galileo_correction_latency

# Latency of last Beidou correction (seconds)
float32 beidou_correction_latency

================================================================================
MSG: microstrain_inertial_msgs/MipHeader
# Represents a standard header that all MIP fields should include at the beginning of their message definition
#   Note: This message will never be published on it's own, only included in other messages

# Standard ROS header.
#   header.stamp will always be populated with the ROS time that this message was populated
#   header.frame_id is dependent on the full message definition. Most messages will not use this
std_msgs/Header header

# If the message was triggered by an event, this will be set, otherwise it will be set to 0 (will be 0 most of the time)
# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_event_source.htm
uint8 event_source

# Reference timestamp of when the data was sampled if the device supports it. For devices that do not support this, it will always be 0
# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_reference_timestamp.htm
uint64 reference_timestamp

# GPS timestamp of when the data was sampled if the device supports it
# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm
# Note that this timestamp may be blank in certain messages, but there will often be equivalent fields in the messages
microstrain_inertial_msgs/MipGpsTimestamp gps_timestamp
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: microstrain_inertial_msgs/MipGpsTimestamp
# Definition of a GPS timestamp.
# For more information see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm
#   Note: This message will never be published on it's own, only included in other messages

# GPS time of week (seconds)
float64 tow

# GPS Week number since 1980 (weeks)
uint16 week_number

# Valid Flags bitfield
microstrain_inertial_msgs/MipGpsTimestampValidFlags valid_flags
================================================================================
MSG: microstrain_inertial_msgs/MipGpsTimestampValidFlags
# Message definition for the valid_flags field of https://files.microstrain.com/CV7+Online/external_content/dcp/Data/0xff/data/0xd3.htm
#   Note: This message will never be published on it's own, only included in other messages.

# Whole number seconds TOW has been set
bool tow

# Week number has been set
bool week_number

# Both TOW and Week Number have been set
bool time_valid
================================================================================
MSG: microstrain_inertial_msgs/MipGnssCorrectionsRtkCorrectionsStatusEpochStatus
# Message definition for the Epoch Status field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/gnss_corrections/data/mip_field_gnss_rtk_corrections_status.htm?Highlight=rtk%20status
#   Note: This message will never be published on it's own, only included in other messages.

bool antenna_location_received
bool antenna_description_received
bool gps_received
bool galileo_received
bool glonass_received
bool beidou_received
bool using_gps_msm_messages  # Using MSM messages for GPS corrections instead of RTCM messages 1001-1004
bool using_glonass_msm_messages  # Using MSM messages for GLONASS corrections instead of RTCM messages 1009-1012
bool dongle_status_read_failed  # A read of the dongle status was attempted, but failed
================================================================================
MSG: microstrain_inertial_msgs/MipGnssCorrectionsRtkCorrectionsStatusDongleStatus
# Message definition for the Dongle Status field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/gnss_corrections/data/mip_field_gnss_rtk_corrections_status.htm?Highlight=rtk%20status
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



(provide :microstrain_inertial_msgs/MipGnssCorrectionsRtkCorrectionsStatus "a2de1c3721150da51fc4cbcdbe40ed22")


