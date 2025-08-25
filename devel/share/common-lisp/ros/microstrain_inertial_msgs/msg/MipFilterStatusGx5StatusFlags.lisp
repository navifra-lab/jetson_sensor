; Auto-generated. Do not edit!


(cl:in-package microstrain_inertial_msgs-msg)


;//! \htmlinclude MipFilterStatusGx5StatusFlags.msg.html

(cl:defclass <MipFilterStatusGx5StatusFlags> (roslisp-msg-protocol:ros-message)
  ((init_no_attitude
    :reader init_no_attitude
    :initarg :init_no_attitude
    :type cl:boolean
    :initform cl:nil)
   (init_no_position_velocity
    :reader init_no_position_velocity
    :initarg :init_no_position_velocity
    :type cl:boolean
    :initform cl:nil)
   (run_imu_unavailable
    :reader run_imu_unavailable
    :initarg :run_imu_unavailable
    :type cl:boolean
    :initform cl:nil)
   (run_gps_unavailable
    :reader run_gps_unavailable
    :initarg :run_gps_unavailable
    :type cl:boolean
    :initform cl:nil)
   (run_matrix_singularity
    :reader run_matrix_singularity
    :initarg :run_matrix_singularity
    :type cl:boolean
    :initform cl:nil)
   (run_position_covariance_warning
    :reader run_position_covariance_warning
    :initarg :run_position_covariance_warning
    :type cl:boolean
    :initform cl:nil)
   (run_velocity_covariance_warning
    :reader run_velocity_covariance_warning
    :initarg :run_velocity_covariance_warning
    :type cl:boolean
    :initform cl:nil)
   (run_attitude_covariance_warning
    :reader run_attitude_covariance_warning
    :initarg :run_attitude_covariance_warning
    :type cl:boolean
    :initform cl:nil)
   (run_nan_in_solution_warning
    :reader run_nan_in_solution_warning
    :initarg :run_nan_in_solution_warning
    :type cl:boolean
    :initform cl:nil)
   (run_gyro_bias_est_high_warning
    :reader run_gyro_bias_est_high_warning
    :initarg :run_gyro_bias_est_high_warning
    :type cl:boolean
    :initform cl:nil)
   (run_accel_bias_est_high_warning
    :reader run_accel_bias_est_high_warning
    :initarg :run_accel_bias_est_high_warning
    :type cl:boolean
    :initform cl:nil)
   (run_gyro_scale_factor_est_high_warning
    :reader run_gyro_scale_factor_est_high_warning
    :initarg :run_gyro_scale_factor_est_high_warning
    :type cl:boolean
    :initform cl:nil)
   (run_accel_scale_factor_est_high_warning
    :reader run_accel_scale_factor_est_high_warning
    :initarg :run_accel_scale_factor_est_high_warning
    :type cl:boolean
    :initform cl:nil)
   (run_mag_bias_est_high_warning
    :reader run_mag_bias_est_high_warning
    :initarg :run_mag_bias_est_high_warning
    :type cl:boolean
    :initform cl:nil)
   (run_ant_offset_correction_est_high_warning
    :reader run_ant_offset_correction_est_high_warning
    :initarg :run_ant_offset_correction_est_high_warning
    :type cl:boolean
    :initform cl:nil)
   (run_mag_hard_iron_est_high_warning
    :reader run_mag_hard_iron_est_high_warning
    :initarg :run_mag_hard_iron_est_high_warning
    :type cl:boolean
    :initform cl:nil)
   (run_mag_soft_iron_est_high_warning
    :reader run_mag_soft_iron_est_high_warning
    :initarg :run_mag_soft_iron_est_high_warning
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MipFilterStatusGx5StatusFlags (<MipFilterStatusGx5StatusFlags>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MipFilterStatusGx5StatusFlags>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MipFilterStatusGx5StatusFlags)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name microstrain_inertial_msgs-msg:<MipFilterStatusGx5StatusFlags> is deprecated: use microstrain_inertial_msgs-msg:MipFilterStatusGx5StatusFlags instead.")))

(cl:ensure-generic-function 'init_no_attitude-val :lambda-list '(m))
(cl:defmethod init_no_attitude-val ((m <MipFilterStatusGx5StatusFlags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:init_no_attitude-val is deprecated.  Use microstrain_inertial_msgs-msg:init_no_attitude instead.")
  (init_no_attitude m))

(cl:ensure-generic-function 'init_no_position_velocity-val :lambda-list '(m))
(cl:defmethod init_no_position_velocity-val ((m <MipFilterStatusGx5StatusFlags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:init_no_position_velocity-val is deprecated.  Use microstrain_inertial_msgs-msg:init_no_position_velocity instead.")
  (init_no_position_velocity m))

(cl:ensure-generic-function 'run_imu_unavailable-val :lambda-list '(m))
(cl:defmethod run_imu_unavailable-val ((m <MipFilterStatusGx5StatusFlags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:run_imu_unavailable-val is deprecated.  Use microstrain_inertial_msgs-msg:run_imu_unavailable instead.")
  (run_imu_unavailable m))

(cl:ensure-generic-function 'run_gps_unavailable-val :lambda-list '(m))
(cl:defmethod run_gps_unavailable-val ((m <MipFilterStatusGx5StatusFlags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:run_gps_unavailable-val is deprecated.  Use microstrain_inertial_msgs-msg:run_gps_unavailable instead.")
  (run_gps_unavailable m))

(cl:ensure-generic-function 'run_matrix_singularity-val :lambda-list '(m))
(cl:defmethod run_matrix_singularity-val ((m <MipFilterStatusGx5StatusFlags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:run_matrix_singularity-val is deprecated.  Use microstrain_inertial_msgs-msg:run_matrix_singularity instead.")
  (run_matrix_singularity m))

(cl:ensure-generic-function 'run_position_covariance_warning-val :lambda-list '(m))
(cl:defmethod run_position_covariance_warning-val ((m <MipFilterStatusGx5StatusFlags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:run_position_covariance_warning-val is deprecated.  Use microstrain_inertial_msgs-msg:run_position_covariance_warning instead.")
  (run_position_covariance_warning m))

(cl:ensure-generic-function 'run_velocity_covariance_warning-val :lambda-list '(m))
(cl:defmethod run_velocity_covariance_warning-val ((m <MipFilterStatusGx5StatusFlags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:run_velocity_covariance_warning-val is deprecated.  Use microstrain_inertial_msgs-msg:run_velocity_covariance_warning instead.")
  (run_velocity_covariance_warning m))

(cl:ensure-generic-function 'run_attitude_covariance_warning-val :lambda-list '(m))
(cl:defmethod run_attitude_covariance_warning-val ((m <MipFilterStatusGx5StatusFlags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:run_attitude_covariance_warning-val is deprecated.  Use microstrain_inertial_msgs-msg:run_attitude_covariance_warning instead.")
  (run_attitude_covariance_warning m))

(cl:ensure-generic-function 'run_nan_in_solution_warning-val :lambda-list '(m))
(cl:defmethod run_nan_in_solution_warning-val ((m <MipFilterStatusGx5StatusFlags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:run_nan_in_solution_warning-val is deprecated.  Use microstrain_inertial_msgs-msg:run_nan_in_solution_warning instead.")
  (run_nan_in_solution_warning m))

(cl:ensure-generic-function 'run_gyro_bias_est_high_warning-val :lambda-list '(m))
(cl:defmethod run_gyro_bias_est_high_warning-val ((m <MipFilterStatusGx5StatusFlags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:run_gyro_bias_est_high_warning-val is deprecated.  Use microstrain_inertial_msgs-msg:run_gyro_bias_est_high_warning instead.")
  (run_gyro_bias_est_high_warning m))

(cl:ensure-generic-function 'run_accel_bias_est_high_warning-val :lambda-list '(m))
(cl:defmethod run_accel_bias_est_high_warning-val ((m <MipFilterStatusGx5StatusFlags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:run_accel_bias_est_high_warning-val is deprecated.  Use microstrain_inertial_msgs-msg:run_accel_bias_est_high_warning instead.")
  (run_accel_bias_est_high_warning m))

(cl:ensure-generic-function 'run_gyro_scale_factor_est_high_warning-val :lambda-list '(m))
(cl:defmethod run_gyro_scale_factor_est_high_warning-val ((m <MipFilterStatusGx5StatusFlags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:run_gyro_scale_factor_est_high_warning-val is deprecated.  Use microstrain_inertial_msgs-msg:run_gyro_scale_factor_est_high_warning instead.")
  (run_gyro_scale_factor_est_high_warning m))

(cl:ensure-generic-function 'run_accel_scale_factor_est_high_warning-val :lambda-list '(m))
(cl:defmethod run_accel_scale_factor_est_high_warning-val ((m <MipFilterStatusGx5StatusFlags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:run_accel_scale_factor_est_high_warning-val is deprecated.  Use microstrain_inertial_msgs-msg:run_accel_scale_factor_est_high_warning instead.")
  (run_accel_scale_factor_est_high_warning m))

(cl:ensure-generic-function 'run_mag_bias_est_high_warning-val :lambda-list '(m))
(cl:defmethod run_mag_bias_est_high_warning-val ((m <MipFilterStatusGx5StatusFlags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:run_mag_bias_est_high_warning-val is deprecated.  Use microstrain_inertial_msgs-msg:run_mag_bias_est_high_warning instead.")
  (run_mag_bias_est_high_warning m))

(cl:ensure-generic-function 'run_ant_offset_correction_est_high_warning-val :lambda-list '(m))
(cl:defmethod run_ant_offset_correction_est_high_warning-val ((m <MipFilterStatusGx5StatusFlags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:run_ant_offset_correction_est_high_warning-val is deprecated.  Use microstrain_inertial_msgs-msg:run_ant_offset_correction_est_high_warning instead.")
  (run_ant_offset_correction_est_high_warning m))

(cl:ensure-generic-function 'run_mag_hard_iron_est_high_warning-val :lambda-list '(m))
(cl:defmethod run_mag_hard_iron_est_high_warning-val ((m <MipFilterStatusGx5StatusFlags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:run_mag_hard_iron_est_high_warning-val is deprecated.  Use microstrain_inertial_msgs-msg:run_mag_hard_iron_est_high_warning instead.")
  (run_mag_hard_iron_est_high_warning m))

(cl:ensure-generic-function 'run_mag_soft_iron_est_high_warning-val :lambda-list '(m))
(cl:defmethod run_mag_soft_iron_est_high_warning-val ((m <MipFilterStatusGx5StatusFlags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:run_mag_soft_iron_est_high_warning-val is deprecated.  Use microstrain_inertial_msgs-msg:run_mag_soft_iron_est_high_warning instead.")
  (run_mag_soft_iron_est_high_warning m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MipFilterStatusGx5StatusFlags>) ostream)
  "Serializes a message object of type '<MipFilterStatusGx5StatusFlags>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'init_no_attitude) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'init_no_position_velocity) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'run_imu_unavailable) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'run_gps_unavailable) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'run_matrix_singularity) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'run_position_covariance_warning) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'run_velocity_covariance_warning) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'run_attitude_covariance_warning) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'run_nan_in_solution_warning) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'run_gyro_bias_est_high_warning) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'run_accel_bias_est_high_warning) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'run_gyro_scale_factor_est_high_warning) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'run_accel_scale_factor_est_high_warning) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'run_mag_bias_est_high_warning) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'run_ant_offset_correction_est_high_warning) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'run_mag_hard_iron_est_high_warning) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'run_mag_soft_iron_est_high_warning) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MipFilterStatusGx5StatusFlags>) istream)
  "Deserializes a message object of type '<MipFilterStatusGx5StatusFlags>"
    (cl:setf (cl:slot-value msg 'init_no_attitude) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'init_no_position_velocity) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'run_imu_unavailable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'run_gps_unavailable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'run_matrix_singularity) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'run_position_covariance_warning) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'run_velocity_covariance_warning) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'run_attitude_covariance_warning) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'run_nan_in_solution_warning) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'run_gyro_bias_est_high_warning) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'run_accel_bias_est_high_warning) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'run_gyro_scale_factor_est_high_warning) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'run_accel_scale_factor_est_high_warning) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'run_mag_bias_est_high_warning) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'run_ant_offset_correction_est_high_warning) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'run_mag_hard_iron_est_high_warning) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'run_mag_soft_iron_est_high_warning) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MipFilterStatusGx5StatusFlags>)))
  "Returns string type for a message object of type '<MipFilterStatusGx5StatusFlags>"
  "microstrain_inertial_msgs/MipFilterStatusGx5StatusFlags")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MipFilterStatusGx5StatusFlags)))
  "Returns string type for a message object of type 'MipFilterStatusGx5StatusFlags"
  "microstrain_inertial_msgs/MipFilterStatusGx5StatusFlags")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MipFilterStatusGx5StatusFlags>)))
  "Returns md5sum for a message object of type '<MipFilterStatusGx5StatusFlags>"
  "82e4f81fef282c1265a9db8f5c2b8418")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MipFilterStatusGx5StatusFlags)))
  "Returns md5sum for a message object of type 'MipFilterStatusGx5StatusFlags"
  "82e4f81fef282c1265a9db8f5c2b8418")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MipFilterStatusGx5StatusFlags>)))
  "Returns full string definition for message of type '<MipFilterStatusGx5StatusFlags>"
  (cl:format cl:nil "# Message definition for the Status Flags (GX5, CV5, CX5, etc.) field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_status.htm?Highlight=filter%20status~%#   Note: This message will never be published on it's own, only included in other messages.~%~%bool init_no_attitude~%bool init_no_position_velocity~%bool run_imu_unavailable~%bool run_gps_unavailable~%bool run_matrix_singularity~%bool run_position_covariance_warning~%bool run_velocity_covariance_warning~%bool run_attitude_covariance_warning~%bool run_nan_in_solution_warning~%bool run_gyro_bias_est_high_warning~%bool run_accel_bias_est_high_warning~%bool run_gyro_scale_factor_est_high_warning~%bool run_accel_scale_factor_est_high_warning~%bool run_mag_bias_est_high_warning~%bool run_ant_offset_correction_est_high_warning~%bool run_mag_hard_iron_est_high_warning~%bool run_mag_soft_iron_est_high_warning~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MipFilterStatusGx5StatusFlags)))
  "Returns full string definition for message of type 'MipFilterStatusGx5StatusFlags"
  (cl:format cl:nil "# Message definition for the Status Flags (GX5, CV5, CX5, etc.) field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_status.htm?Highlight=filter%20status~%#   Note: This message will never be published on it's own, only included in other messages.~%~%bool init_no_attitude~%bool init_no_position_velocity~%bool run_imu_unavailable~%bool run_gps_unavailable~%bool run_matrix_singularity~%bool run_position_covariance_warning~%bool run_velocity_covariance_warning~%bool run_attitude_covariance_warning~%bool run_nan_in_solution_warning~%bool run_gyro_bias_est_high_warning~%bool run_accel_bias_est_high_warning~%bool run_gyro_scale_factor_est_high_warning~%bool run_accel_scale_factor_est_high_warning~%bool run_mag_bias_est_high_warning~%bool run_ant_offset_correction_est_high_warning~%bool run_mag_hard_iron_est_high_warning~%bool run_mag_soft_iron_est_high_warning~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MipFilterStatusGx5StatusFlags>))
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
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MipFilterStatusGx5StatusFlags>))
  "Converts a ROS message object to a list"
  (cl:list 'MipFilterStatusGx5StatusFlags
    (cl:cons ':init_no_attitude (init_no_attitude msg))
    (cl:cons ':init_no_position_velocity (init_no_position_velocity msg))
    (cl:cons ':run_imu_unavailable (run_imu_unavailable msg))
    (cl:cons ':run_gps_unavailable (run_gps_unavailable msg))
    (cl:cons ':run_matrix_singularity (run_matrix_singularity msg))
    (cl:cons ':run_position_covariance_warning (run_position_covariance_warning msg))
    (cl:cons ':run_velocity_covariance_warning (run_velocity_covariance_warning msg))
    (cl:cons ':run_attitude_covariance_warning (run_attitude_covariance_warning msg))
    (cl:cons ':run_nan_in_solution_warning (run_nan_in_solution_warning msg))
    (cl:cons ':run_gyro_bias_est_high_warning (run_gyro_bias_est_high_warning msg))
    (cl:cons ':run_accel_bias_est_high_warning (run_accel_bias_est_high_warning msg))
    (cl:cons ':run_gyro_scale_factor_est_high_warning (run_gyro_scale_factor_est_high_warning msg))
    (cl:cons ':run_accel_scale_factor_est_high_warning (run_accel_scale_factor_est_high_warning msg))
    (cl:cons ':run_mag_bias_est_high_warning (run_mag_bias_est_high_warning msg))
    (cl:cons ':run_ant_offset_correction_est_high_warning (run_ant_offset_correction_est_high_warning msg))
    (cl:cons ':run_mag_hard_iron_est_high_warning (run_mag_hard_iron_est_high_warning msg))
    (cl:cons ':run_mag_soft_iron_est_high_warning (run_mag_soft_iron_est_high_warning msg))
))
