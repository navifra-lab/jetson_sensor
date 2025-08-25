;; Auto-generated. Do not edit!


(when (boundp 'microstrain_inertial_msgs::MipFilterStatus)
  (if (not (find-package "MICROSTRAIN_INERTIAL_MSGS"))
    (make-package "MICROSTRAIN_INERTIAL_MSGS"))
  (shadow 'MipFilterStatus (find-package "MICROSTRAIN_INERTIAL_MSGS")))
(unless (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERSTATUS")
  (make-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERSTATUS"))

(in-package "ROS")
;;//! \htmlinclude MipFilterStatus.msg.html


(intern "*FILTER_STATE_GX5_STARTUP*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERSTATUS"))
(shadow '*FILTER_STATE_GX5_STARTUP* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERSTATUS"))
(defconstant microstrain_inertial_msgs::MipFilterStatus::*FILTER_STATE_GX5_STARTUP* 0)
(intern "*FILTER_STATE_GX5_INIT*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERSTATUS"))
(shadow '*FILTER_STATE_GX5_INIT* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERSTATUS"))
(defconstant microstrain_inertial_msgs::MipFilterStatus::*FILTER_STATE_GX5_INIT* 1)
(intern "*FILTER_STATE_GX5_RUN_SOLUTION_VALID*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERSTATUS"))
(shadow '*FILTER_STATE_GX5_RUN_SOLUTION_VALID* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERSTATUS"))
(defconstant microstrain_inertial_msgs::MipFilterStatus::*FILTER_STATE_GX5_RUN_SOLUTION_VALID* 2)
(intern "*FILTER_STATE_GX5_RUN_SOLUTION_ERROR*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERSTATUS"))
(shadow '*FILTER_STATE_GX5_RUN_SOLUTION_ERROR* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERSTATUS"))
(defconstant microstrain_inertial_msgs::MipFilterStatus::*FILTER_STATE_GX5_RUN_SOLUTION_ERROR* 3)
(intern "*FILTER_STATE_GQ7_INIT*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERSTATUS"))
(shadow '*FILTER_STATE_GQ7_INIT* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERSTATUS"))
(defconstant microstrain_inertial_msgs::MipFilterStatus::*FILTER_STATE_GQ7_INIT* 1)
(intern "*FILTER_STATE_GQ7_VERT_GYRO*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERSTATUS"))
(shadow '*FILTER_STATE_GQ7_VERT_GYRO* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERSTATUS"))
(defconstant microstrain_inertial_msgs::MipFilterStatus::*FILTER_STATE_GQ7_VERT_GYRO* 2)
(intern "*FILTER_STATE_GQ7_AHRS*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERSTATUS"))
(shadow '*FILTER_STATE_GQ7_AHRS* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERSTATUS"))
(defconstant microstrain_inertial_msgs::MipFilterStatus::*FILTER_STATE_GQ7_AHRS* 3)
(intern "*FILTER_STATE_GQ7_FULL_NAV*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERSTATUS"))
(shadow '*FILTER_STATE_GQ7_FULL_NAV* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERSTATUS"))
(defconstant microstrain_inertial_msgs::MipFilterStatus::*FILTER_STATE_GQ7_FULL_NAV* 4)
(intern "*DYNAMICS_MODE_GX5_PORTABLE*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERSTATUS"))
(shadow '*DYNAMICS_MODE_GX5_PORTABLE* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERSTATUS"))
(defconstant microstrain_inertial_msgs::MipFilterStatus::*DYNAMICS_MODE_GX5_PORTABLE* 1)
(intern "*DYNAMICS_MODE_GX5_AUTOMOTIVE*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERSTATUS"))
(shadow '*DYNAMICS_MODE_GX5_AUTOMOTIVE* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERSTATUS"))
(defconstant microstrain_inertial_msgs::MipFilterStatus::*DYNAMICS_MODE_GX5_AUTOMOTIVE* 2)
(intern "*DYNAMICS_MODE_GX5_AIRBORNE*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERSTATUS"))
(shadow '*DYNAMICS_MODE_GX5_AIRBORNE* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERSTATUS"))
(defconstant microstrain_inertial_msgs::MipFilterStatus::*DYNAMICS_MODE_GX5_AIRBORNE* 3)
(intern "*DYNAMICS_MODE_GQ7_DEFAULT*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERSTATUS"))
(shadow '*DYNAMICS_MODE_GQ7_DEFAULT* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERSTATUS"))
(defconstant microstrain_inertial_msgs::MipFilterStatus::*DYNAMICS_MODE_GQ7_DEFAULT* 1)

(defun microstrain_inertial_msgs::MipFilterStatus-to-symbol (const)
  (cond
        ((= const 0) 'microstrain_inertial_msgs::MipFilterStatus::*FILTER_STATE_GX5_STARTUP*)
        ((= const 1) 'microstrain_inertial_msgs::MipFilterStatus::*FILTER_STATE_GX5_INIT*)
        ((= const 2) 'microstrain_inertial_msgs::MipFilterStatus::*FILTER_STATE_GX5_RUN_SOLUTION_VALID*)
        ((= const 3) 'microstrain_inertial_msgs::MipFilterStatus::*FILTER_STATE_GX5_RUN_SOLUTION_ERROR*)
        ((= const 1) 'microstrain_inertial_msgs::MipFilterStatus::*FILTER_STATE_GQ7_INIT*)
        ((= const 2) 'microstrain_inertial_msgs::MipFilterStatus::*FILTER_STATE_GQ7_VERT_GYRO*)
        ((= const 3) 'microstrain_inertial_msgs::MipFilterStatus::*FILTER_STATE_GQ7_AHRS*)
        ((= const 4) 'microstrain_inertial_msgs::MipFilterStatus::*FILTER_STATE_GQ7_FULL_NAV*)
        ((= const 1) 'microstrain_inertial_msgs::MipFilterStatus::*DYNAMICS_MODE_GX5_PORTABLE*)
        ((= const 2) 'microstrain_inertial_msgs::MipFilterStatus::*DYNAMICS_MODE_GX5_AUTOMOTIVE*)
        ((= const 3) 'microstrain_inertial_msgs::MipFilterStatus::*DYNAMICS_MODE_GX5_AIRBORNE*)
        ((= const 1) 'microstrain_inertial_msgs::MipFilterStatus::*DYNAMICS_MODE_GQ7_DEFAULT*)
        (t nil)))

(defclass microstrain_inertial_msgs::MipFilterStatus
  :super ros::object
  :slots (_header _filter_state _dynamics_mode _gx5_status_flags _gq7_status_flags ))

(defmethod microstrain_inertial_msgs::MipFilterStatus
  (:init
   (&key
    ((:header __header) (instance microstrain_inertial_msgs::MipHeader :init))
    ((:filter_state __filter_state) 0)
    ((:dynamics_mode __dynamics_mode) 0)
    ((:gx5_status_flags __gx5_status_flags) (instance microstrain_inertial_msgs::MipFilterStatusGx5StatusFlags :init))
    ((:gq7_status_flags __gq7_status_flags) (instance microstrain_inertial_msgs::MipFilterStatusGq7StatusFlags :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _filter_state (round __filter_state))
   (setq _dynamics_mode (round __dynamics_mode))
   (setq _gx5_status_flags __gx5_status_flags)
   (setq _gq7_status_flags __gq7_status_flags)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:filter_state
   (&optional __filter_state)
   (if __filter_state (setq _filter_state __filter_state)) _filter_state)
  (:dynamics_mode
   (&optional __dynamics_mode)
   (if __dynamics_mode (setq _dynamics_mode __dynamics_mode)) _dynamics_mode)
  (:gx5_status_flags
   (&rest __gx5_status_flags)
   (if (keywordp (car __gx5_status_flags))
       (send* _gx5_status_flags __gx5_status_flags)
     (progn
       (if __gx5_status_flags (setq _gx5_status_flags (car __gx5_status_flags)))
       _gx5_status_flags)))
  (:gq7_status_flags
   (&rest __gq7_status_flags)
   (if (keywordp (car __gq7_status_flags))
       (send* _gq7_status_flags __gq7_status_flags)
     (progn
       (if __gq7_status_flags (setq _gq7_status_flags (car __gq7_status_flags)))
       _gq7_status_flags)))
  (:serialization-length
   ()
   (+
    ;; microstrain_inertial_msgs/MipHeader _header
    (send _header :serialization-length)
    ;; uint16 _filter_state
    2
    ;; uint16 _dynamics_mode
    2
    ;; microstrain_inertial_msgs/MipFilterStatusGx5StatusFlags _gx5_status_flags
    (send _gx5_status_flags :serialization-length)
    ;; microstrain_inertial_msgs/MipFilterStatusGq7StatusFlags _gq7_status_flags
    (send _gq7_status_flags :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; microstrain_inertial_msgs/MipHeader _header
       (send _header :serialize s)
     ;; uint16 _filter_state
       (write-word _filter_state s)
     ;; uint16 _dynamics_mode
       (write-word _dynamics_mode s)
     ;; microstrain_inertial_msgs/MipFilterStatusGx5StatusFlags _gx5_status_flags
       (send _gx5_status_flags :serialize s)
     ;; microstrain_inertial_msgs/MipFilterStatusGq7StatusFlags _gq7_status_flags
       (send _gq7_status_flags :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; microstrain_inertial_msgs/MipHeader _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint16 _filter_state
     (setq _filter_state (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _dynamics_mode
     (setq _dynamics_mode (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; microstrain_inertial_msgs/MipFilterStatusGx5StatusFlags _gx5_status_flags
     (send _gx5_status_flags :deserialize buf ptr-) (incf ptr- (send _gx5_status_flags :serialization-length))
   ;; microstrain_inertial_msgs/MipFilterStatusGq7StatusFlags _gq7_status_flags
     (send _gq7_status_flags :deserialize buf ptr-) (incf ptr- (send _gq7_status_flags :serialization-length))
   ;;
   self)
  )

(setf (get microstrain_inertial_msgs::MipFilterStatus :md5sum-) "4aa95a55ec5be9507ec04d6ed003846c")
(setf (get microstrain_inertial_msgs::MipFilterStatus :datatype-) "microstrain_inertial_msgs/MipFilterStatus")
(setf (get microstrain_inertial_msgs::MipFilterStatus :definition-)
      "# Message definition for the MIP field https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_status.htm

# Header containing common information
#   header.frame_id has no meaning in this message
microstrain_inertial_msgs/MipHeader header

# Device-specific filter state. Please consult the user manual for definition. See FILTER_STATE_* enums for possible values
uint16 filter_state

# Device-specific dynamics mode. Please consult the user manual for definition. See DYNAMICS_MODE_* enums for possible values
# Note that for prospect devices (GQ7, CV7, etc), this field has a default value, and should be mostly ignored
uint16 dynamics_mode

# Parsed out version of the Status Flags bitfield when the connected device is a philo device (GX5, CX5, CV5, etc)
microstrain_inertial_msgs/MipFilterStatusGx5StatusFlags gx5_status_flags

# Parsed out version of the Status Flags bitfield when the connected device is a prospect device (GQ7, CV7, etc)
microstrain_inertial_msgs/MipFilterStatusGq7StatusFlags gq7_status_flags

# Possible values for filter_state when the connected device is a philo device (GX5, CX5, CV5, etc)
uint16 FILTER_STATE_GX5_STARTUP            = 0
uint16 FILTER_STATE_GX5_INIT               = 1
uint16 FILTER_STATE_GX5_RUN_SOLUTION_VALID = 2
uint16 FILTER_STATE_GX5_RUN_SOLUTION_ERROR = 3

# Possible values for filter_state when the connected device is a prospect device (GQ7, CV7, etc)
uint16 FILTER_STATE_GQ7_INIT      = 1
uint16 FILTER_STATE_GQ7_VERT_GYRO = 2
uint16 FILTER_STATE_GQ7_AHRS      = 3
uint16 FILTER_STATE_GQ7_FULL_NAV  = 4

# Possible values for dynamics_mode when the connected device is a philo device (GX5, CX5, CV5, etc)
uint16 DYNAMICS_MODE_GX5_PORTABLE   = 1
uint16 DYNAMICS_MODE_GX5_AUTOMOTIVE = 2
uint16 DYNAMICS_MODE_GX5_AIRBORNE   = 3

# Possible values for dynamics_mode when the connected device is a prospect device (GQ7, CV7, etc)
# Note that on older firmware the GQ7 will often report 0 for it's dynamics mode, it is strongly advised to ignore this field
uint16 DYNAMICS_MODE_GQ7_DEFAULT = 1
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
MSG: microstrain_inertial_msgs/MipFilterStatusGx5StatusFlags
# Message definition for the Status Flags (GX5, CV5, CX5, etc.) field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_status.htm?Highlight=filter%20status
#   Note: This message will never be published on it's own, only included in other messages.

bool init_no_attitude
bool init_no_position_velocity
bool run_imu_unavailable
bool run_gps_unavailable
bool run_matrix_singularity
bool run_position_covariance_warning
bool run_velocity_covariance_warning
bool run_attitude_covariance_warning
bool run_nan_in_solution_warning
bool run_gyro_bias_est_high_warning
bool run_accel_bias_est_high_warning
bool run_gyro_scale_factor_est_high_warning
bool run_accel_scale_factor_est_high_warning
bool run_mag_bias_est_high_warning
bool run_ant_offset_correction_est_high_warning
bool run_mag_hard_iron_est_high_warning
bool run_mag_soft_iron_est_high_warning
================================================================================
MSG: microstrain_inertial_msgs/MipFilterStatusGq7StatusFlags
# Message definition for the Status Flags (GQ7, CV7, etc.) field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_status.htm?Highlight=filter%20status
#   Note: This message will never be published on it's own, only included in other messages.

uint8 filter_condition  # See FILTER_CONDITION_* enums for possible values
bool  roll_pitch_warning
bool  heading_warning
bool  position_warning
bool  velocity_warning
bool  imu_bias_warning
bool  gnss_clk_warning
bool  antenna_lever_arm_warning
bool  mounting_transform_warning
bool  time_sync_warning  # No time synchronization pulse detected
bool  solution_error  # This includes all bits between 12 and 15, if any of them are set there is a GQ7 solution error

# Possible values for filter_condition when the connected device is a prospect device (GQ7, CV7, etc)
uint8 FILTER_CONDITION_STABLE     = 1
uint8 FILTER_CONDITION_CONVERGING = 2
uint8 FILTER_CONDITION_UNSTABLE   = 3
")



(provide :microstrain_inertial_msgs/MipFilterStatus "4aa95a55ec5be9507ec04d6ed003846c")


