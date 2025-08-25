;; Auto-generated. Do not edit!


(when (boundp 'microstrain_inertial_msgs::MipFilterStatusGq7StatusFlags)
  (if (not (find-package "MICROSTRAIN_INERTIAL_MSGS"))
    (make-package "MICROSTRAIN_INERTIAL_MSGS"))
  (shadow 'MipFilterStatusGq7StatusFlags (find-package "MICROSTRAIN_INERTIAL_MSGS")))
(unless (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERSTATUSGQ7STATUSFLAGS")
  (make-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERSTATUSGQ7STATUSFLAGS"))

(in-package "ROS")
;;//! \htmlinclude MipFilterStatusGq7StatusFlags.msg.html


(intern "*FILTER_CONDITION_STABLE*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERSTATUSGQ7STATUSFLAGS"))
(shadow '*FILTER_CONDITION_STABLE* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERSTATUSGQ7STATUSFLAGS"))
(defconstant microstrain_inertial_msgs::MipFilterStatusGq7StatusFlags::*FILTER_CONDITION_STABLE* 1)
(intern "*FILTER_CONDITION_CONVERGING*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERSTATUSGQ7STATUSFLAGS"))
(shadow '*FILTER_CONDITION_CONVERGING* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERSTATUSGQ7STATUSFLAGS"))
(defconstant microstrain_inertial_msgs::MipFilterStatusGq7StatusFlags::*FILTER_CONDITION_CONVERGING* 2)
(intern "*FILTER_CONDITION_UNSTABLE*" (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERSTATUSGQ7STATUSFLAGS"))
(shadow '*FILTER_CONDITION_UNSTABLE* (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERSTATUSGQ7STATUSFLAGS"))
(defconstant microstrain_inertial_msgs::MipFilterStatusGq7StatusFlags::*FILTER_CONDITION_UNSTABLE* 3)

(defun microstrain_inertial_msgs::MipFilterStatusGq7StatusFlags-to-symbol (const)
  (cond
        ((= const 1) 'microstrain_inertial_msgs::MipFilterStatusGq7StatusFlags::*FILTER_CONDITION_STABLE*)
        ((= const 2) 'microstrain_inertial_msgs::MipFilterStatusGq7StatusFlags::*FILTER_CONDITION_CONVERGING*)
        ((= const 3) 'microstrain_inertial_msgs::MipFilterStatusGq7StatusFlags::*FILTER_CONDITION_UNSTABLE*)
        (t nil)))

(defclass microstrain_inertial_msgs::MipFilterStatusGq7StatusFlags
  :super ros::object
  :slots (_filter_condition _roll_pitch_warning _heading_warning _position_warning _velocity_warning _imu_bias_warning _gnss_clk_warning _antenna_lever_arm_warning _mounting_transform_warning _time_sync_warning _solution_error ))

(defmethod microstrain_inertial_msgs::MipFilterStatusGq7StatusFlags
  (:init
   (&key
    ((:filter_condition __filter_condition) 0)
    ((:roll_pitch_warning __roll_pitch_warning) nil)
    ((:heading_warning __heading_warning) nil)
    ((:position_warning __position_warning) nil)
    ((:velocity_warning __velocity_warning) nil)
    ((:imu_bias_warning __imu_bias_warning) nil)
    ((:gnss_clk_warning __gnss_clk_warning) nil)
    ((:antenna_lever_arm_warning __antenna_lever_arm_warning) nil)
    ((:mounting_transform_warning __mounting_transform_warning) nil)
    ((:time_sync_warning __time_sync_warning) nil)
    ((:solution_error __solution_error) nil)
    )
   (send-super :init)
   (setq _filter_condition (round __filter_condition))
   (setq _roll_pitch_warning __roll_pitch_warning)
   (setq _heading_warning __heading_warning)
   (setq _position_warning __position_warning)
   (setq _velocity_warning __velocity_warning)
   (setq _imu_bias_warning __imu_bias_warning)
   (setq _gnss_clk_warning __gnss_clk_warning)
   (setq _antenna_lever_arm_warning __antenna_lever_arm_warning)
   (setq _mounting_transform_warning __mounting_transform_warning)
   (setq _time_sync_warning __time_sync_warning)
   (setq _solution_error __solution_error)
   self)
  (:filter_condition
   (&optional __filter_condition)
   (if __filter_condition (setq _filter_condition __filter_condition)) _filter_condition)
  (:roll_pitch_warning
   (&optional (__roll_pitch_warning :null))
   (if (not (eq __roll_pitch_warning :null)) (setq _roll_pitch_warning __roll_pitch_warning)) _roll_pitch_warning)
  (:heading_warning
   (&optional (__heading_warning :null))
   (if (not (eq __heading_warning :null)) (setq _heading_warning __heading_warning)) _heading_warning)
  (:position_warning
   (&optional (__position_warning :null))
   (if (not (eq __position_warning :null)) (setq _position_warning __position_warning)) _position_warning)
  (:velocity_warning
   (&optional (__velocity_warning :null))
   (if (not (eq __velocity_warning :null)) (setq _velocity_warning __velocity_warning)) _velocity_warning)
  (:imu_bias_warning
   (&optional (__imu_bias_warning :null))
   (if (not (eq __imu_bias_warning :null)) (setq _imu_bias_warning __imu_bias_warning)) _imu_bias_warning)
  (:gnss_clk_warning
   (&optional (__gnss_clk_warning :null))
   (if (not (eq __gnss_clk_warning :null)) (setq _gnss_clk_warning __gnss_clk_warning)) _gnss_clk_warning)
  (:antenna_lever_arm_warning
   (&optional (__antenna_lever_arm_warning :null))
   (if (not (eq __antenna_lever_arm_warning :null)) (setq _antenna_lever_arm_warning __antenna_lever_arm_warning)) _antenna_lever_arm_warning)
  (:mounting_transform_warning
   (&optional (__mounting_transform_warning :null))
   (if (not (eq __mounting_transform_warning :null)) (setq _mounting_transform_warning __mounting_transform_warning)) _mounting_transform_warning)
  (:time_sync_warning
   (&optional (__time_sync_warning :null))
   (if (not (eq __time_sync_warning :null)) (setq _time_sync_warning __time_sync_warning)) _time_sync_warning)
  (:solution_error
   (&optional (__solution_error :null))
   (if (not (eq __solution_error :null)) (setq _solution_error __solution_error)) _solution_error)
  (:serialization-length
   ()
   (+
    ;; uint8 _filter_condition
    1
    ;; bool _roll_pitch_warning
    1
    ;; bool _heading_warning
    1
    ;; bool _position_warning
    1
    ;; bool _velocity_warning
    1
    ;; bool _imu_bias_warning
    1
    ;; bool _gnss_clk_warning
    1
    ;; bool _antenna_lever_arm_warning
    1
    ;; bool _mounting_transform_warning
    1
    ;; bool _time_sync_warning
    1
    ;; bool _solution_error
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _filter_condition
       (write-byte _filter_condition s)
     ;; bool _roll_pitch_warning
       (if _roll_pitch_warning (write-byte -1 s) (write-byte 0 s))
     ;; bool _heading_warning
       (if _heading_warning (write-byte -1 s) (write-byte 0 s))
     ;; bool _position_warning
       (if _position_warning (write-byte -1 s) (write-byte 0 s))
     ;; bool _velocity_warning
       (if _velocity_warning (write-byte -1 s) (write-byte 0 s))
     ;; bool _imu_bias_warning
       (if _imu_bias_warning (write-byte -1 s) (write-byte 0 s))
     ;; bool _gnss_clk_warning
       (if _gnss_clk_warning (write-byte -1 s) (write-byte 0 s))
     ;; bool _antenna_lever_arm_warning
       (if _antenna_lever_arm_warning (write-byte -1 s) (write-byte 0 s))
     ;; bool _mounting_transform_warning
       (if _mounting_transform_warning (write-byte -1 s) (write-byte 0 s))
     ;; bool _time_sync_warning
       (if _time_sync_warning (write-byte -1 s) (write-byte 0 s))
     ;; bool _solution_error
       (if _solution_error (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _filter_condition
     (setq _filter_condition (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _roll_pitch_warning
     (setq _roll_pitch_warning (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _heading_warning
     (setq _heading_warning (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _position_warning
     (setq _position_warning (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _velocity_warning
     (setq _velocity_warning (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _imu_bias_warning
     (setq _imu_bias_warning (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _gnss_clk_warning
     (setq _gnss_clk_warning (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _antenna_lever_arm_warning
     (setq _antenna_lever_arm_warning (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _mounting_transform_warning
     (setq _mounting_transform_warning (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _time_sync_warning
     (setq _time_sync_warning (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _solution_error
     (setq _solution_error (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get microstrain_inertial_msgs::MipFilterStatusGq7StatusFlags :md5sum-) "1db9853b9f08ade89304b0b0fc0f9df7")
(setf (get microstrain_inertial_msgs::MipFilterStatusGq7StatusFlags :datatype-) "microstrain_inertial_msgs/MipFilterStatusGq7StatusFlags")
(setf (get microstrain_inertial_msgs::MipFilterStatusGq7StatusFlags :definition-)
      "# Message definition for the Status Flags (GQ7, CV7, etc.) field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_status.htm?Highlight=filter%20status
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



(provide :microstrain_inertial_msgs/MipFilterStatusGq7StatusFlags "1db9853b9f08ade89304b0b0fc0f9df7")


