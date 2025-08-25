;; Auto-generated. Do not edit!


(when (boundp 'microstrain_inertial_msgs::MipFilterStatusGx5StatusFlags)
  (if (not (find-package "MICROSTRAIN_INERTIAL_MSGS"))
    (make-package "MICROSTRAIN_INERTIAL_MSGS"))
  (shadow 'MipFilterStatusGx5StatusFlags (find-package "MICROSTRAIN_INERTIAL_MSGS")))
(unless (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERSTATUSGX5STATUSFLAGS")
  (make-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERSTATUSGX5STATUSFLAGS"))

(in-package "ROS")
;;//! \htmlinclude MipFilterStatusGx5StatusFlags.msg.html


(defclass microstrain_inertial_msgs::MipFilterStatusGx5StatusFlags
  :super ros::object
  :slots (_init_no_attitude _init_no_position_velocity _run_imu_unavailable _run_gps_unavailable _run_matrix_singularity _run_position_covariance_warning _run_velocity_covariance_warning _run_attitude_covariance_warning _run_nan_in_solution_warning _run_gyro_bias_est_high_warning _run_accel_bias_est_high_warning _run_gyro_scale_factor_est_high_warning _run_accel_scale_factor_est_high_warning _run_mag_bias_est_high_warning _run_ant_offset_correction_est_high_warning _run_mag_hard_iron_est_high_warning _run_mag_soft_iron_est_high_warning ))

(defmethod microstrain_inertial_msgs::MipFilterStatusGx5StatusFlags
  (:init
   (&key
    ((:init_no_attitude __init_no_attitude) nil)
    ((:init_no_position_velocity __init_no_position_velocity) nil)
    ((:run_imu_unavailable __run_imu_unavailable) nil)
    ((:run_gps_unavailable __run_gps_unavailable) nil)
    ((:run_matrix_singularity __run_matrix_singularity) nil)
    ((:run_position_covariance_warning __run_position_covariance_warning) nil)
    ((:run_velocity_covariance_warning __run_velocity_covariance_warning) nil)
    ((:run_attitude_covariance_warning __run_attitude_covariance_warning) nil)
    ((:run_nan_in_solution_warning __run_nan_in_solution_warning) nil)
    ((:run_gyro_bias_est_high_warning __run_gyro_bias_est_high_warning) nil)
    ((:run_accel_bias_est_high_warning __run_accel_bias_est_high_warning) nil)
    ((:run_gyro_scale_factor_est_high_warning __run_gyro_scale_factor_est_high_warning) nil)
    ((:run_accel_scale_factor_est_high_warning __run_accel_scale_factor_est_high_warning) nil)
    ((:run_mag_bias_est_high_warning __run_mag_bias_est_high_warning) nil)
    ((:run_ant_offset_correction_est_high_warning __run_ant_offset_correction_est_high_warning) nil)
    ((:run_mag_hard_iron_est_high_warning __run_mag_hard_iron_est_high_warning) nil)
    ((:run_mag_soft_iron_est_high_warning __run_mag_soft_iron_est_high_warning) nil)
    )
   (send-super :init)
   (setq _init_no_attitude __init_no_attitude)
   (setq _init_no_position_velocity __init_no_position_velocity)
   (setq _run_imu_unavailable __run_imu_unavailable)
   (setq _run_gps_unavailable __run_gps_unavailable)
   (setq _run_matrix_singularity __run_matrix_singularity)
   (setq _run_position_covariance_warning __run_position_covariance_warning)
   (setq _run_velocity_covariance_warning __run_velocity_covariance_warning)
   (setq _run_attitude_covariance_warning __run_attitude_covariance_warning)
   (setq _run_nan_in_solution_warning __run_nan_in_solution_warning)
   (setq _run_gyro_bias_est_high_warning __run_gyro_bias_est_high_warning)
   (setq _run_accel_bias_est_high_warning __run_accel_bias_est_high_warning)
   (setq _run_gyro_scale_factor_est_high_warning __run_gyro_scale_factor_est_high_warning)
   (setq _run_accel_scale_factor_est_high_warning __run_accel_scale_factor_est_high_warning)
   (setq _run_mag_bias_est_high_warning __run_mag_bias_est_high_warning)
   (setq _run_ant_offset_correction_est_high_warning __run_ant_offset_correction_est_high_warning)
   (setq _run_mag_hard_iron_est_high_warning __run_mag_hard_iron_est_high_warning)
   (setq _run_mag_soft_iron_est_high_warning __run_mag_soft_iron_est_high_warning)
   self)
  (:init_no_attitude
   (&optional (__init_no_attitude :null))
   (if (not (eq __init_no_attitude :null)) (setq _init_no_attitude __init_no_attitude)) _init_no_attitude)
  (:init_no_position_velocity
   (&optional (__init_no_position_velocity :null))
   (if (not (eq __init_no_position_velocity :null)) (setq _init_no_position_velocity __init_no_position_velocity)) _init_no_position_velocity)
  (:run_imu_unavailable
   (&optional (__run_imu_unavailable :null))
   (if (not (eq __run_imu_unavailable :null)) (setq _run_imu_unavailable __run_imu_unavailable)) _run_imu_unavailable)
  (:run_gps_unavailable
   (&optional (__run_gps_unavailable :null))
   (if (not (eq __run_gps_unavailable :null)) (setq _run_gps_unavailable __run_gps_unavailable)) _run_gps_unavailable)
  (:run_matrix_singularity
   (&optional (__run_matrix_singularity :null))
   (if (not (eq __run_matrix_singularity :null)) (setq _run_matrix_singularity __run_matrix_singularity)) _run_matrix_singularity)
  (:run_position_covariance_warning
   (&optional (__run_position_covariance_warning :null))
   (if (not (eq __run_position_covariance_warning :null)) (setq _run_position_covariance_warning __run_position_covariance_warning)) _run_position_covariance_warning)
  (:run_velocity_covariance_warning
   (&optional (__run_velocity_covariance_warning :null))
   (if (not (eq __run_velocity_covariance_warning :null)) (setq _run_velocity_covariance_warning __run_velocity_covariance_warning)) _run_velocity_covariance_warning)
  (:run_attitude_covariance_warning
   (&optional (__run_attitude_covariance_warning :null))
   (if (not (eq __run_attitude_covariance_warning :null)) (setq _run_attitude_covariance_warning __run_attitude_covariance_warning)) _run_attitude_covariance_warning)
  (:run_nan_in_solution_warning
   (&optional (__run_nan_in_solution_warning :null))
   (if (not (eq __run_nan_in_solution_warning :null)) (setq _run_nan_in_solution_warning __run_nan_in_solution_warning)) _run_nan_in_solution_warning)
  (:run_gyro_bias_est_high_warning
   (&optional (__run_gyro_bias_est_high_warning :null))
   (if (not (eq __run_gyro_bias_est_high_warning :null)) (setq _run_gyro_bias_est_high_warning __run_gyro_bias_est_high_warning)) _run_gyro_bias_est_high_warning)
  (:run_accel_bias_est_high_warning
   (&optional (__run_accel_bias_est_high_warning :null))
   (if (not (eq __run_accel_bias_est_high_warning :null)) (setq _run_accel_bias_est_high_warning __run_accel_bias_est_high_warning)) _run_accel_bias_est_high_warning)
  (:run_gyro_scale_factor_est_high_warning
   (&optional (__run_gyro_scale_factor_est_high_warning :null))
   (if (not (eq __run_gyro_scale_factor_est_high_warning :null)) (setq _run_gyro_scale_factor_est_high_warning __run_gyro_scale_factor_est_high_warning)) _run_gyro_scale_factor_est_high_warning)
  (:run_accel_scale_factor_est_high_warning
   (&optional (__run_accel_scale_factor_est_high_warning :null))
   (if (not (eq __run_accel_scale_factor_est_high_warning :null)) (setq _run_accel_scale_factor_est_high_warning __run_accel_scale_factor_est_high_warning)) _run_accel_scale_factor_est_high_warning)
  (:run_mag_bias_est_high_warning
   (&optional (__run_mag_bias_est_high_warning :null))
   (if (not (eq __run_mag_bias_est_high_warning :null)) (setq _run_mag_bias_est_high_warning __run_mag_bias_est_high_warning)) _run_mag_bias_est_high_warning)
  (:run_ant_offset_correction_est_high_warning
   (&optional (__run_ant_offset_correction_est_high_warning :null))
   (if (not (eq __run_ant_offset_correction_est_high_warning :null)) (setq _run_ant_offset_correction_est_high_warning __run_ant_offset_correction_est_high_warning)) _run_ant_offset_correction_est_high_warning)
  (:run_mag_hard_iron_est_high_warning
   (&optional (__run_mag_hard_iron_est_high_warning :null))
   (if (not (eq __run_mag_hard_iron_est_high_warning :null)) (setq _run_mag_hard_iron_est_high_warning __run_mag_hard_iron_est_high_warning)) _run_mag_hard_iron_est_high_warning)
  (:run_mag_soft_iron_est_high_warning
   (&optional (__run_mag_soft_iron_est_high_warning :null))
   (if (not (eq __run_mag_soft_iron_est_high_warning :null)) (setq _run_mag_soft_iron_est_high_warning __run_mag_soft_iron_est_high_warning)) _run_mag_soft_iron_est_high_warning)
  (:serialization-length
   ()
   (+
    ;; bool _init_no_attitude
    1
    ;; bool _init_no_position_velocity
    1
    ;; bool _run_imu_unavailable
    1
    ;; bool _run_gps_unavailable
    1
    ;; bool _run_matrix_singularity
    1
    ;; bool _run_position_covariance_warning
    1
    ;; bool _run_velocity_covariance_warning
    1
    ;; bool _run_attitude_covariance_warning
    1
    ;; bool _run_nan_in_solution_warning
    1
    ;; bool _run_gyro_bias_est_high_warning
    1
    ;; bool _run_accel_bias_est_high_warning
    1
    ;; bool _run_gyro_scale_factor_est_high_warning
    1
    ;; bool _run_accel_scale_factor_est_high_warning
    1
    ;; bool _run_mag_bias_est_high_warning
    1
    ;; bool _run_ant_offset_correction_est_high_warning
    1
    ;; bool _run_mag_hard_iron_est_high_warning
    1
    ;; bool _run_mag_soft_iron_est_high_warning
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _init_no_attitude
       (if _init_no_attitude (write-byte -1 s) (write-byte 0 s))
     ;; bool _init_no_position_velocity
       (if _init_no_position_velocity (write-byte -1 s) (write-byte 0 s))
     ;; bool _run_imu_unavailable
       (if _run_imu_unavailable (write-byte -1 s) (write-byte 0 s))
     ;; bool _run_gps_unavailable
       (if _run_gps_unavailable (write-byte -1 s) (write-byte 0 s))
     ;; bool _run_matrix_singularity
       (if _run_matrix_singularity (write-byte -1 s) (write-byte 0 s))
     ;; bool _run_position_covariance_warning
       (if _run_position_covariance_warning (write-byte -1 s) (write-byte 0 s))
     ;; bool _run_velocity_covariance_warning
       (if _run_velocity_covariance_warning (write-byte -1 s) (write-byte 0 s))
     ;; bool _run_attitude_covariance_warning
       (if _run_attitude_covariance_warning (write-byte -1 s) (write-byte 0 s))
     ;; bool _run_nan_in_solution_warning
       (if _run_nan_in_solution_warning (write-byte -1 s) (write-byte 0 s))
     ;; bool _run_gyro_bias_est_high_warning
       (if _run_gyro_bias_est_high_warning (write-byte -1 s) (write-byte 0 s))
     ;; bool _run_accel_bias_est_high_warning
       (if _run_accel_bias_est_high_warning (write-byte -1 s) (write-byte 0 s))
     ;; bool _run_gyro_scale_factor_est_high_warning
       (if _run_gyro_scale_factor_est_high_warning (write-byte -1 s) (write-byte 0 s))
     ;; bool _run_accel_scale_factor_est_high_warning
       (if _run_accel_scale_factor_est_high_warning (write-byte -1 s) (write-byte 0 s))
     ;; bool _run_mag_bias_est_high_warning
       (if _run_mag_bias_est_high_warning (write-byte -1 s) (write-byte 0 s))
     ;; bool _run_ant_offset_correction_est_high_warning
       (if _run_ant_offset_correction_est_high_warning (write-byte -1 s) (write-byte 0 s))
     ;; bool _run_mag_hard_iron_est_high_warning
       (if _run_mag_hard_iron_est_high_warning (write-byte -1 s) (write-byte 0 s))
     ;; bool _run_mag_soft_iron_est_high_warning
       (if _run_mag_soft_iron_est_high_warning (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _init_no_attitude
     (setq _init_no_attitude (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _init_no_position_velocity
     (setq _init_no_position_velocity (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _run_imu_unavailable
     (setq _run_imu_unavailable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _run_gps_unavailable
     (setq _run_gps_unavailable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _run_matrix_singularity
     (setq _run_matrix_singularity (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _run_position_covariance_warning
     (setq _run_position_covariance_warning (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _run_velocity_covariance_warning
     (setq _run_velocity_covariance_warning (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _run_attitude_covariance_warning
     (setq _run_attitude_covariance_warning (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _run_nan_in_solution_warning
     (setq _run_nan_in_solution_warning (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _run_gyro_bias_est_high_warning
     (setq _run_gyro_bias_est_high_warning (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _run_accel_bias_est_high_warning
     (setq _run_accel_bias_est_high_warning (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _run_gyro_scale_factor_est_high_warning
     (setq _run_gyro_scale_factor_est_high_warning (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _run_accel_scale_factor_est_high_warning
     (setq _run_accel_scale_factor_est_high_warning (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _run_mag_bias_est_high_warning
     (setq _run_mag_bias_est_high_warning (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _run_ant_offset_correction_est_high_warning
     (setq _run_ant_offset_correction_est_high_warning (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _run_mag_hard_iron_est_high_warning
     (setq _run_mag_hard_iron_est_high_warning (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _run_mag_soft_iron_est_high_warning
     (setq _run_mag_soft_iron_est_high_warning (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get microstrain_inertial_msgs::MipFilterStatusGx5StatusFlags :md5sum-) "82e4f81fef282c1265a9db8f5c2b8418")
(setf (get microstrain_inertial_msgs::MipFilterStatusGx5StatusFlags :datatype-) "microstrain_inertial_msgs/MipFilterStatusGx5StatusFlags")
(setf (get microstrain_inertial_msgs::MipFilterStatusGx5StatusFlags :definition-)
      "# Message definition for the Status Flags (GX5, CV5, CX5, etc.) field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_status.htm?Highlight=filter%20status
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
")



(provide :microstrain_inertial_msgs/MipFilterStatusGx5StatusFlags "82e4f81fef282c1265a9db8f5c2b8418")


