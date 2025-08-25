; Auto-generated. Do not edit!


(cl:in-package microstrain_inertial_msgs-msg)


;//! \htmlinclude MipFilterStatus.msg.html

(cl:defclass <MipFilterStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type microstrain_inertial_msgs-msg:MipHeader
    :initform (cl:make-instance 'microstrain_inertial_msgs-msg:MipHeader))
   (filter_state
    :reader filter_state
    :initarg :filter_state
    :type cl:fixnum
    :initform 0)
   (dynamics_mode
    :reader dynamics_mode
    :initarg :dynamics_mode
    :type cl:fixnum
    :initform 0)
   (gx5_status_flags
    :reader gx5_status_flags
    :initarg :gx5_status_flags
    :type microstrain_inertial_msgs-msg:MipFilterStatusGx5StatusFlags
    :initform (cl:make-instance 'microstrain_inertial_msgs-msg:MipFilterStatusGx5StatusFlags))
   (gq7_status_flags
    :reader gq7_status_flags
    :initarg :gq7_status_flags
    :type microstrain_inertial_msgs-msg:MipFilterStatusGq7StatusFlags
    :initform (cl:make-instance 'microstrain_inertial_msgs-msg:MipFilterStatusGq7StatusFlags)))
)

(cl:defclass MipFilterStatus (<MipFilterStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MipFilterStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MipFilterStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name microstrain_inertial_msgs-msg:<MipFilterStatus> is deprecated: use microstrain_inertial_msgs-msg:MipFilterStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MipFilterStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:header-val is deprecated.  Use microstrain_inertial_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'filter_state-val :lambda-list '(m))
(cl:defmethod filter_state-val ((m <MipFilterStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:filter_state-val is deprecated.  Use microstrain_inertial_msgs-msg:filter_state instead.")
  (filter_state m))

(cl:ensure-generic-function 'dynamics_mode-val :lambda-list '(m))
(cl:defmethod dynamics_mode-val ((m <MipFilterStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:dynamics_mode-val is deprecated.  Use microstrain_inertial_msgs-msg:dynamics_mode instead.")
  (dynamics_mode m))

(cl:ensure-generic-function 'gx5_status_flags-val :lambda-list '(m))
(cl:defmethod gx5_status_flags-val ((m <MipFilterStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:gx5_status_flags-val is deprecated.  Use microstrain_inertial_msgs-msg:gx5_status_flags instead.")
  (gx5_status_flags m))

(cl:ensure-generic-function 'gq7_status_flags-val :lambda-list '(m))
(cl:defmethod gq7_status_flags-val ((m <MipFilterStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:gq7_status_flags-val is deprecated.  Use microstrain_inertial_msgs-msg:gq7_status_flags instead.")
  (gq7_status_flags m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MipFilterStatus>)))
    "Constants for message type '<MipFilterStatus>"
  '((:FILTER_STATE_GX5_STARTUP . 0)
    (:FILTER_STATE_GX5_INIT . 1)
    (:FILTER_STATE_GX5_RUN_SOLUTION_VALID . 2)
    (:FILTER_STATE_GX5_RUN_SOLUTION_ERROR . 3)
    (:FILTER_STATE_GQ7_INIT . 1)
    (:FILTER_STATE_GQ7_VERT_GYRO . 2)
    (:FILTER_STATE_GQ7_AHRS . 3)
    (:FILTER_STATE_GQ7_FULL_NAV . 4)
    (:DYNAMICS_MODE_GX5_PORTABLE . 1)
    (:DYNAMICS_MODE_GX5_AUTOMOTIVE . 2)
    (:DYNAMICS_MODE_GX5_AIRBORNE . 3)
    (:DYNAMICS_MODE_GQ7_DEFAULT . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MipFilterStatus)))
    "Constants for message type 'MipFilterStatus"
  '((:FILTER_STATE_GX5_STARTUP . 0)
    (:FILTER_STATE_GX5_INIT . 1)
    (:FILTER_STATE_GX5_RUN_SOLUTION_VALID . 2)
    (:FILTER_STATE_GX5_RUN_SOLUTION_ERROR . 3)
    (:FILTER_STATE_GQ7_INIT . 1)
    (:FILTER_STATE_GQ7_VERT_GYRO . 2)
    (:FILTER_STATE_GQ7_AHRS . 3)
    (:FILTER_STATE_GQ7_FULL_NAV . 4)
    (:DYNAMICS_MODE_GX5_PORTABLE . 1)
    (:DYNAMICS_MODE_GX5_AUTOMOTIVE . 2)
    (:DYNAMICS_MODE_GX5_AIRBORNE . 3)
    (:DYNAMICS_MODE_GQ7_DEFAULT . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MipFilterStatus>) ostream)
  "Serializes a message object of type '<MipFilterStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filter_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filter_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dynamics_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dynamics_mode)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gx5_status_flags) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gq7_status_flags) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MipFilterStatus>) istream)
  "Deserializes a message object of type '<MipFilterStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filter_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filter_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dynamics_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dynamics_mode)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gx5_status_flags) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gq7_status_flags) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MipFilterStatus>)))
  "Returns string type for a message object of type '<MipFilterStatus>"
  "microstrain_inertial_msgs/MipFilterStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MipFilterStatus)))
  "Returns string type for a message object of type 'MipFilterStatus"
  "microstrain_inertial_msgs/MipFilterStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MipFilterStatus>)))
  "Returns md5sum for a message object of type '<MipFilterStatus>"
  "4aa95a55ec5be9507ec04d6ed003846c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MipFilterStatus)))
  "Returns md5sum for a message object of type 'MipFilterStatus"
  "4aa95a55ec5be9507ec04d6ed003846c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MipFilterStatus>)))
  "Returns full string definition for message of type '<MipFilterStatus>"
  (cl:format cl:nil "# Message definition for the MIP field https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_status.htm~%~%# Header containing common information~%#   header.frame_id has no meaning in this message~%microstrain_inertial_msgs/MipHeader header~%~%# Device-specific filter state. Please consult the user manual for definition. See FILTER_STATE_* enums for possible values~%uint16 filter_state~%~%# Device-specific dynamics mode. Please consult the user manual for definition. See DYNAMICS_MODE_* enums for possible values~%# Note that for prospect devices (GQ7, CV7, etc), this field has a default value, and should be mostly ignored~%uint16 dynamics_mode~%~%# Parsed out version of the Status Flags bitfield when the connected device is a philo device (GX5, CX5, CV5, etc)~%microstrain_inertial_msgs/MipFilterStatusGx5StatusFlags gx5_status_flags~%~%# Parsed out version of the Status Flags bitfield when the connected device is a prospect device (GQ7, CV7, etc)~%microstrain_inertial_msgs/MipFilterStatusGq7StatusFlags gq7_status_flags~%~%# Possible values for filter_state when the connected device is a philo device (GX5, CX5, CV5, etc)~%uint16 FILTER_STATE_GX5_STARTUP            = 0~%uint16 FILTER_STATE_GX5_INIT               = 1~%uint16 FILTER_STATE_GX5_RUN_SOLUTION_VALID = 2~%uint16 FILTER_STATE_GX5_RUN_SOLUTION_ERROR = 3~%~%# Possible values for filter_state when the connected device is a prospect device (GQ7, CV7, etc)~%uint16 FILTER_STATE_GQ7_INIT      = 1~%uint16 FILTER_STATE_GQ7_VERT_GYRO = 2~%uint16 FILTER_STATE_GQ7_AHRS      = 3~%uint16 FILTER_STATE_GQ7_FULL_NAV  = 4~%~%# Possible values for dynamics_mode when the connected device is a philo device (GX5, CX5, CV5, etc)~%uint16 DYNAMICS_MODE_GX5_PORTABLE   = 1~%uint16 DYNAMICS_MODE_GX5_AUTOMOTIVE = 2~%uint16 DYNAMICS_MODE_GX5_AIRBORNE   = 3~%~%# Possible values for dynamics_mode when the connected device is a prospect device (GQ7, CV7, etc)~%# Note that on older firmware the GQ7 will often report 0 for it's dynamics mode, it is strongly advised to ignore this field~%uint16 DYNAMICS_MODE_GQ7_DEFAULT = 1~%================================================================================~%MSG: microstrain_inertial_msgs/MipHeader~%# Represents a standard header that all MIP fields should include at the beginning of their message definition~%#   Note: This message will never be published on it's own, only included in other messages~%~%# Standard ROS header.~%#   header.stamp will always be populated with the ROS time that this message was populated~%#   header.frame_id is dependent on the full message definition. Most messages will not use this~%std_msgs/Header header~%~%# If the message was triggered by an event, this will be set, otherwise it will be set to 0 (will be 0 most of the time)~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_event_source.htm~%uint8 event_source~%~%# Reference timestamp of when the data was sampled if the device supports it. For devices that do not support this, it will always be 0~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_reference_timestamp.htm~%uint64 reference_timestamp~%~%# GPS timestamp of when the data was sampled if the device supports it~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%# Note that this timestamp may be blank in certain messages, but there will often be equivalent fields in the messages~%microstrain_inertial_msgs/MipGpsTimestamp gps_timestamp~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestamp~%# Definition of a GPS timestamp.~%# For more information see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%#   Note: This message will never be published on it's own, only included in other messages~%~%# GPS time of week (seconds)~%float64 tow~%~%# GPS Week number since 1980 (weeks)~%uint16 week_number~%~%# Valid Flags bitfield~%microstrain_inertial_msgs/MipGpsTimestampValidFlags valid_flags~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestampValidFlags~%# Message definition for the valid_flags field of https://files.microstrain.com/CV7+Online/external_content/dcp/Data/0xff/data/0xd3.htm~%#   Note: This message will never be published on it's own, only included in other messages.~%~%# Whole number seconds TOW has been set~%bool tow~%~%# Week number has been set~%bool week_number~%~%# Both TOW and Week Number have been set~%bool time_valid~%================================================================================~%MSG: microstrain_inertial_msgs/MipFilterStatusGx5StatusFlags~%# Message definition for the Status Flags (GX5, CV5, CX5, etc.) field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_status.htm?Highlight=filter%20status~%#   Note: This message will never be published on it's own, only included in other messages.~%~%bool init_no_attitude~%bool init_no_position_velocity~%bool run_imu_unavailable~%bool run_gps_unavailable~%bool run_matrix_singularity~%bool run_position_covariance_warning~%bool run_velocity_covariance_warning~%bool run_attitude_covariance_warning~%bool run_nan_in_solution_warning~%bool run_gyro_bias_est_high_warning~%bool run_accel_bias_est_high_warning~%bool run_gyro_scale_factor_est_high_warning~%bool run_accel_scale_factor_est_high_warning~%bool run_mag_bias_est_high_warning~%bool run_ant_offset_correction_est_high_warning~%bool run_mag_hard_iron_est_high_warning~%bool run_mag_soft_iron_est_high_warning~%================================================================================~%MSG: microstrain_inertial_msgs/MipFilterStatusGq7StatusFlags~%# Message definition for the Status Flags (GQ7, CV7, etc.) field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_status.htm?Highlight=filter%20status~%#   Note: This message will never be published on it's own, only included in other messages.~%~%uint8 filter_condition  # See FILTER_CONDITION_* enums for possible values~%bool  roll_pitch_warning~%bool  heading_warning~%bool  position_warning~%bool  velocity_warning~%bool  imu_bias_warning~%bool  gnss_clk_warning~%bool  antenna_lever_arm_warning~%bool  mounting_transform_warning~%bool  time_sync_warning  # No time synchronization pulse detected~%bool  solution_error  # This includes all bits between 12 and 15, if any of them are set there is a GQ7 solution error~%~%# Possible values for filter_condition when the connected device is a prospect device (GQ7, CV7, etc)~%uint8 FILTER_CONDITION_STABLE     = 1~%uint8 FILTER_CONDITION_CONVERGING = 2~%uint8 FILTER_CONDITION_UNSTABLE   = 3~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MipFilterStatus)))
  "Returns full string definition for message of type 'MipFilterStatus"
  (cl:format cl:nil "# Message definition for the MIP field https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_status.htm~%~%# Header containing common information~%#   header.frame_id has no meaning in this message~%microstrain_inertial_msgs/MipHeader header~%~%# Device-specific filter state. Please consult the user manual for definition. See FILTER_STATE_* enums for possible values~%uint16 filter_state~%~%# Device-specific dynamics mode. Please consult the user manual for definition. See DYNAMICS_MODE_* enums for possible values~%# Note that for prospect devices (GQ7, CV7, etc), this field has a default value, and should be mostly ignored~%uint16 dynamics_mode~%~%# Parsed out version of the Status Flags bitfield when the connected device is a philo device (GX5, CX5, CV5, etc)~%microstrain_inertial_msgs/MipFilterStatusGx5StatusFlags gx5_status_flags~%~%# Parsed out version of the Status Flags bitfield when the connected device is a prospect device (GQ7, CV7, etc)~%microstrain_inertial_msgs/MipFilterStatusGq7StatusFlags gq7_status_flags~%~%# Possible values for filter_state when the connected device is a philo device (GX5, CX5, CV5, etc)~%uint16 FILTER_STATE_GX5_STARTUP            = 0~%uint16 FILTER_STATE_GX5_INIT               = 1~%uint16 FILTER_STATE_GX5_RUN_SOLUTION_VALID = 2~%uint16 FILTER_STATE_GX5_RUN_SOLUTION_ERROR = 3~%~%# Possible values for filter_state when the connected device is a prospect device (GQ7, CV7, etc)~%uint16 FILTER_STATE_GQ7_INIT      = 1~%uint16 FILTER_STATE_GQ7_VERT_GYRO = 2~%uint16 FILTER_STATE_GQ7_AHRS      = 3~%uint16 FILTER_STATE_GQ7_FULL_NAV  = 4~%~%# Possible values for dynamics_mode when the connected device is a philo device (GX5, CX5, CV5, etc)~%uint16 DYNAMICS_MODE_GX5_PORTABLE   = 1~%uint16 DYNAMICS_MODE_GX5_AUTOMOTIVE = 2~%uint16 DYNAMICS_MODE_GX5_AIRBORNE   = 3~%~%# Possible values for dynamics_mode when the connected device is a prospect device (GQ7, CV7, etc)~%# Note that on older firmware the GQ7 will often report 0 for it's dynamics mode, it is strongly advised to ignore this field~%uint16 DYNAMICS_MODE_GQ7_DEFAULT = 1~%================================================================================~%MSG: microstrain_inertial_msgs/MipHeader~%# Represents a standard header that all MIP fields should include at the beginning of their message definition~%#   Note: This message will never be published on it's own, only included in other messages~%~%# Standard ROS header.~%#   header.stamp will always be populated with the ROS time that this message was populated~%#   header.frame_id is dependent on the full message definition. Most messages will not use this~%std_msgs/Header header~%~%# If the message was triggered by an event, this will be set, otherwise it will be set to 0 (will be 0 most of the time)~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_event_source.htm~%uint8 event_source~%~%# Reference timestamp of when the data was sampled if the device supports it. For devices that do not support this, it will always be 0~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_reference_timestamp.htm~%uint64 reference_timestamp~%~%# GPS timestamp of when the data was sampled if the device supports it~%# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%# Note that this timestamp may be blank in certain messages, but there will often be equivalent fields in the messages~%microstrain_inertial_msgs/MipGpsTimestamp gps_timestamp~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestamp~%# Definition of a GPS timestamp.~%# For more information see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%#   Note: This message will never be published on it's own, only included in other messages~%~%# GPS time of week (seconds)~%float64 tow~%~%# GPS Week number since 1980 (weeks)~%uint16 week_number~%~%# Valid Flags bitfield~%microstrain_inertial_msgs/MipGpsTimestampValidFlags valid_flags~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestampValidFlags~%# Message definition for the valid_flags field of https://files.microstrain.com/CV7+Online/external_content/dcp/Data/0xff/data/0xd3.htm~%#   Note: This message will never be published on it's own, only included in other messages.~%~%# Whole number seconds TOW has been set~%bool tow~%~%# Week number has been set~%bool week_number~%~%# Both TOW and Week Number have been set~%bool time_valid~%================================================================================~%MSG: microstrain_inertial_msgs/MipFilterStatusGx5StatusFlags~%# Message definition for the Status Flags (GX5, CV5, CX5, etc.) field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_status.htm?Highlight=filter%20status~%#   Note: This message will never be published on it's own, only included in other messages.~%~%bool init_no_attitude~%bool init_no_position_velocity~%bool run_imu_unavailable~%bool run_gps_unavailable~%bool run_matrix_singularity~%bool run_position_covariance_warning~%bool run_velocity_covariance_warning~%bool run_attitude_covariance_warning~%bool run_nan_in_solution_warning~%bool run_gyro_bias_est_high_warning~%bool run_accel_bias_est_high_warning~%bool run_gyro_scale_factor_est_high_warning~%bool run_accel_scale_factor_est_high_warning~%bool run_mag_bias_est_high_warning~%bool run_ant_offset_correction_est_high_warning~%bool run_mag_hard_iron_est_high_warning~%bool run_mag_soft_iron_est_high_warning~%================================================================================~%MSG: microstrain_inertial_msgs/MipFilterStatusGq7StatusFlags~%# Message definition for the Status Flags (GQ7, CV7, etc.) field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_status.htm?Highlight=filter%20status~%#   Note: This message will never be published on it's own, only included in other messages.~%~%uint8 filter_condition  # See FILTER_CONDITION_* enums for possible values~%bool  roll_pitch_warning~%bool  heading_warning~%bool  position_warning~%bool  velocity_warning~%bool  imu_bias_warning~%bool  gnss_clk_warning~%bool  antenna_lever_arm_warning~%bool  mounting_transform_warning~%bool  time_sync_warning  # No time synchronization pulse detected~%bool  solution_error  # This includes all bits between 12 and 15, if any of them are set there is a GQ7 solution error~%~%# Possible values for filter_condition when the connected device is a prospect device (GQ7, CV7, etc)~%uint8 FILTER_CONDITION_STABLE     = 1~%uint8 FILTER_CONDITION_CONVERGING = 2~%uint8 FILTER_CONDITION_UNSTABLE   = 3~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MipFilterStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gx5_status_flags))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gq7_status_flags))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MipFilterStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'MipFilterStatus
    (cl:cons ':header (header msg))
    (cl:cons ':filter_state (filter_state msg))
    (cl:cons ':dynamics_mode (dynamics_mode msg))
    (cl:cons ':gx5_status_flags (gx5_status_flags msg))
    (cl:cons ':gq7_status_flags (gq7_status_flags msg))
))
