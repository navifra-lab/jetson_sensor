; Auto-generated. Do not edit!


(cl:in-package microstrain_inertial_msgs-msg)


;//! \htmlinclude MipFilterGnssPositionAidingStatus.msg.html

(cl:defclass <MipFilterGnssPositionAidingStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type microstrain_inertial_msgs-msg:MipHeader
    :initform (cl:make-instance 'microstrain_inertial_msgs-msg:MipHeader))
   (receiver_id
    :reader receiver_id
    :initarg :receiver_id
    :type cl:fixnum
    :initform 0)
   (time_of_week
    :reader time_of_week
    :initarg :time_of_week
    :type cl:float
    :initform 0.0)
   (status
    :reader status
    :initarg :status
    :type microstrain_inertial_msgs-msg:MipFilterGnssPositionAidingStatusStatus
    :initform (cl:make-instance 'microstrain_inertial_msgs-msg:MipFilterGnssPositionAidingStatusStatus)))
)

(cl:defclass MipFilterGnssPositionAidingStatus (<MipFilterGnssPositionAidingStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MipFilterGnssPositionAidingStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MipFilterGnssPositionAidingStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name microstrain_inertial_msgs-msg:<MipFilterGnssPositionAidingStatus> is deprecated: use microstrain_inertial_msgs-msg:MipFilterGnssPositionAidingStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MipFilterGnssPositionAidingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:header-val is deprecated.  Use microstrain_inertial_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'receiver_id-val :lambda-list '(m))
(cl:defmethod receiver_id-val ((m <MipFilterGnssPositionAidingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:receiver_id-val is deprecated.  Use microstrain_inertial_msgs-msg:receiver_id instead.")
  (receiver_id m))

(cl:ensure-generic-function 'time_of_week-val :lambda-list '(m))
(cl:defmethod time_of_week-val ((m <MipFilterGnssPositionAidingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:time_of_week-val is deprecated.  Use microstrain_inertial_msgs-msg:time_of_week instead.")
  (time_of_week m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <MipFilterGnssPositionAidingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:status-val is deprecated.  Use microstrain_inertial_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MipFilterGnssPositionAidingStatus>) ostream)
  "Serializes a message object of type '<MipFilterGnssPositionAidingStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'receiver_id)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'time_of_week))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MipFilterGnssPositionAidingStatus>) istream)
  "Deserializes a message object of type '<MipFilterGnssPositionAidingStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'receiver_id)) (cl:read-byte istream))
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MipFilterGnssPositionAidingStatus>)))
  "Returns string type for a message object of type '<MipFilterGnssPositionAidingStatus>"
  "microstrain_inertial_msgs/MipFilterGnssPositionAidingStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MipFilterGnssPositionAidingStatus)))
  "Returns string type for a message object of type 'MipFilterGnssPositionAidingStatus"
  "microstrain_inertial_msgs/MipFilterGnssPositionAidingStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MipFilterGnssPositionAidingStatus>)))
  "Returns md5sum for a message object of type '<MipFilterGnssPositionAidingStatus>"
  "97f8979b7a4f7e85d0f8ea4ee09129ed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MipFilterGnssPositionAidingStatus)))
  "Returns md5sum for a message object of type 'MipFilterGnssPositionAidingStatus"
  "97f8979b7a4f7e85d0f8ea4ee09129ed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MipFilterGnssPositionAidingStatus>)))
  "Returns full string definition for message of type '<MipFilterGnssPositionAidingStatus>"
  (cl:format cl:nil "# Message definition for the MIP field https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_gnss_pos_aid_status.htm~%~%# Header containing common information~%#   header.frame_id has no meaning in this message~%microstrain_inertial_msgs/MipHeader header~%~%# Receiver ID. For GQ7, this will be 1 for GNSS1 and 2 for GNSS2~%uint8 receiver_id~%~%# Last GNSS aiding measurement time of week (seconds)~%float64 time_of_week~%~%# Parsed out version of the status bit field~%microstrain_inertial_msgs/MipFilterGnssPositionAidingStatusStatus status~%================================================================================~%MSG: microstrain_inertial_msgs/MipHeader~%# Represents a standard header that all MIP fields should include at the beginning of their message definition~%#   Note: This message will never be published on it's own, only included in other messages~%~%# Standard ROS header.~%#   header.stamp will always be populated with the ROS time that this message was populated~%#   header.frame_id is dependent on the full message definition. Most messages will not use this~%std_msgs/Header header~%~%# If the message was triggered by an event, this will be set, otherwise it will be set to 0 (will be 0 most of the time)~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_event_source.htm~%uint8 event_source~%~%# Reference timestamp of when the data was sampled if the device supports it. For devices that do not support this, it will always be 0~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_reference_timestamp.htm~%uint64 reference_timestamp~%~%# GPS timestamp of when the data was sampled if the device supports it~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%# Note that this timestamp may be blank in certain messages, but there will often be equivalent fields in the messages~%microstrain_inertial_msgs/MipGpsTimestamp gps_timestamp~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestamp~%# Definition of a GPS timestamp.~%# For more information see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%#   Note: This message will never be published on it's own, only included in other messages~%~%# GPS time of week (seconds)~%float64 tow~%~%# GPS Week number since 1980 (weeks)~%uint16 week_number~%~%# Valid Flags bitfield~%microstrain_inertial_msgs/MipGpsTimestampValidFlags valid_flags~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestampValidFlags~%# Message definition for the valid_flags field of https://files.microstrain.com/CV7+Online/external_content/dcp/Data/0xff/data/0xd3.htm~%#   Note: This message will never be published on it's own, only included in other messages.~%~%# Whole number seconds TOW has been set~%bool tow~%~%# Week number has been set~%bool week_number~%~%# Both TOW and Week Number have been set~%bool time_valid~%================================================================================~%MSG: microstrain_inertial_msgs/MipFilterGnssPositionAidingStatusStatus~%# Message definition for the Status field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_gnss_pos_aid_status.htm?Highlight=gnss%20position%20aiding~%#   Note: This message will never be published on it's own, only included in other messages.~%~%bool tight_coupling  # If 1, the Kalman filter is processing raw range information from this GNSS module~%bool differential    # If 1, the Kalman filter is processing RTK corrections from this GNSS module~%bool integer_fix     # If 1, the Kalman filter has an RTK integer fix from this GNSS module, indicating the best position performance possible~%bool gps_l1          # If 1, the Kalman filter is using GPS L1 measurements~%bool gps_l2          # If 1, the Kalman filter is using GPS L2 measurements~%bool gps_l5          # If 1, the Kalman filter is using GPS L5 measurements~%bool glo_l1          # If 1, the Kalman filter is using GLONASS L1 measurements~%bool glo_l2          # If 1, the Kalman filter is using GLONASS L2 measurements~%bool gal_e1          # If 1, the Kalman filter is using Galileo E1 measurements~%bool gal_e5          # If 1, the Kalman filter is using Galileo E5 measurements~%bool gal_e6          # If 1, the Kalman filter is using Galileo E6 measurements~%bool bei_b1          # If 1, the Kalman filter is using Beidou B1 measurements (not enabled on GQ7 currently)~%bool bei_b2          # If 1, the Kalman filter is using Beidou B2 measurements (not enabled on GQ7 currently)~%bool bei_b3          # If 1, the Kalman filter is using Beidou B3 measurements (not enabled on GQ7 currently)~%bool no_fix          # If 1, this GNSS module is reporting no position fix~%bool config_error    # If 1, there is likely an issue with the antenna offset for this GNSS module~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MipFilterGnssPositionAidingStatus)))
  "Returns full string definition for message of type 'MipFilterGnssPositionAidingStatus"
  (cl:format cl:nil "# Message definition for the MIP field https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_gnss_pos_aid_status.htm~%~%# Header containing common information~%#   header.frame_id has no meaning in this message~%microstrain_inertial_msgs/MipHeader header~%~%# Receiver ID. For GQ7, this will be 1 for GNSS1 and 2 for GNSS2~%uint8 receiver_id~%~%# Last GNSS aiding measurement time of week (seconds)~%float64 time_of_week~%~%# Parsed out version of the status bit field~%microstrain_inertial_msgs/MipFilterGnssPositionAidingStatusStatus status~%================================================================================~%MSG: microstrain_inertial_msgs/MipHeader~%# Represents a standard header that all MIP fields should include at the beginning of their message definition~%#   Note: This message will never be published on it's own, only included in other messages~%~%# Standard ROS header.~%#   header.stamp will always be populated with the ROS time that this message was populated~%#   header.frame_id is dependent on the full message definition. Most messages will not use this~%std_msgs/Header header~%~%# If the message was triggered by an event, this will be set, otherwise it will be set to 0 (will be 0 most of the time)~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_event_source.htm~%uint8 event_source~%~%# Reference timestamp of when the data was sampled if the device supports it. For devices that do not support this, it will always be 0~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_reference_timestamp.htm~%uint64 reference_timestamp~%~%# GPS timestamp of when the data was sampled if the device supports it~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%# Note that this timestamp may be blank in certain messages, but there will often be equivalent fields in the messages~%microstrain_inertial_msgs/MipGpsTimestamp gps_timestamp~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestamp~%# Definition of a GPS timestamp.~%# For more information see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%#   Note: This message will never be published on it's own, only included in other messages~%~%# GPS time of week (seconds)~%float64 tow~%~%# GPS Week number since 1980 (weeks)~%uint16 week_number~%~%# Valid Flags bitfield~%microstrain_inertial_msgs/MipGpsTimestampValidFlags valid_flags~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestampValidFlags~%# Message definition for the valid_flags field of https://files.microstrain.com/CV7+Online/external_content/dcp/Data/0xff/data/0xd3.htm~%#   Note: This message will never be published on it's own, only included in other messages.~%~%# Whole number seconds TOW has been set~%bool tow~%~%# Week number has been set~%bool week_number~%~%# Both TOW and Week Number have been set~%bool time_valid~%================================================================================~%MSG: microstrain_inertial_msgs/MipFilterGnssPositionAidingStatusStatus~%# Message definition for the Status field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_gnss_pos_aid_status.htm?Highlight=gnss%20position%20aiding~%#   Note: This message will never be published on it's own, only included in other messages.~%~%bool tight_coupling  # If 1, the Kalman filter is processing raw range information from this GNSS module~%bool differential    # If 1, the Kalman filter is processing RTK corrections from this GNSS module~%bool integer_fix     # If 1, the Kalman filter has an RTK integer fix from this GNSS module, indicating the best position performance possible~%bool gps_l1          # If 1, the Kalman filter is using GPS L1 measurements~%bool gps_l2          # If 1, the Kalman filter is using GPS L2 measurements~%bool gps_l5          # If 1, the Kalman filter is using GPS L5 measurements~%bool glo_l1          # If 1, the Kalman filter is using GLONASS L1 measurements~%bool glo_l2          # If 1, the Kalman filter is using GLONASS L2 measurements~%bool gal_e1          # If 1, the Kalman filter is using Galileo E1 measurements~%bool gal_e5          # If 1, the Kalman filter is using Galileo E5 measurements~%bool gal_e6          # If 1, the Kalman filter is using Galileo E6 measurements~%bool bei_b1          # If 1, the Kalman filter is using Beidou B1 measurements (not enabled on GQ7 currently)~%bool bei_b2          # If 1, the Kalman filter is using Beidou B2 measurements (not enabled on GQ7 currently)~%bool bei_b3          # If 1, the Kalman filter is using Beidou B3 measurements (not enabled on GQ7 currently)~%bool no_fix          # If 1, this GNSS module is reporting no position fix~%bool config_error    # If 1, there is likely an issue with the antenna offset for this GNSS module~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MipFilterGnssPositionAidingStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MipFilterGnssPositionAidingStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'MipFilterGnssPositionAidingStatus
    (cl:cons ':header (header msg))
    (cl:cons ':receiver_id (receiver_id msg))
    (cl:cons ':time_of_week (time_of_week msg))
    (cl:cons ':status (status msg))
))
