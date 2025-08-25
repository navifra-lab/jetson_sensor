;; Auto-generated. Do not edit!


(when (boundp 'microstrain_inertial_msgs::MipSensorOverrangeStatusStatus)
  (if (not (find-package "MICROSTRAIN_INERTIAL_MSGS"))
    (make-package "MICROSTRAIN_INERTIAL_MSGS"))
  (shadow 'MipSensorOverrangeStatusStatus (find-package "MICROSTRAIN_INERTIAL_MSGS")))
(unless (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPSENSOROVERRANGESTATUSSTATUS")
  (make-package "MICROSTRAIN_INERTIAL_MSGS::MIPSENSOROVERRANGESTATUSSTATUS"))

(in-package "ROS")
;;//! \htmlinclude MipSensorOverrangeStatusStatus.msg.html


(defclass microstrain_inertial_msgs::MipSensorOverrangeStatusStatus
  :super ros::object
  :slots (_accel_x _accel_y _accel_z _gyro_x _gyro_y _gyro_z _mag_x _mag_y _mag_z _press ))

(defmethod microstrain_inertial_msgs::MipSensorOverrangeStatusStatus
  (:init
   (&key
    ((:accel_x __accel_x) nil)
    ((:accel_y __accel_y) nil)
    ((:accel_z __accel_z) nil)
    ((:gyro_x __gyro_x) nil)
    ((:gyro_y __gyro_y) nil)
    ((:gyro_z __gyro_z) nil)
    ((:mag_x __mag_x) nil)
    ((:mag_y __mag_y) nil)
    ((:mag_z __mag_z) nil)
    ((:press __press) nil)
    )
   (send-super :init)
   (setq _accel_x __accel_x)
   (setq _accel_y __accel_y)
   (setq _accel_z __accel_z)
   (setq _gyro_x __gyro_x)
   (setq _gyro_y __gyro_y)
   (setq _gyro_z __gyro_z)
   (setq _mag_x __mag_x)
   (setq _mag_y __mag_y)
   (setq _mag_z __mag_z)
   (setq _press __press)
   self)
  (:accel_x
   (&optional (__accel_x :null))
   (if (not (eq __accel_x :null)) (setq _accel_x __accel_x)) _accel_x)
  (:accel_y
   (&optional (__accel_y :null))
   (if (not (eq __accel_y :null)) (setq _accel_y __accel_y)) _accel_y)
  (:accel_z
   (&optional (__accel_z :null))
   (if (not (eq __accel_z :null)) (setq _accel_z __accel_z)) _accel_z)
  (:gyro_x
   (&optional (__gyro_x :null))
   (if (not (eq __gyro_x :null)) (setq _gyro_x __gyro_x)) _gyro_x)
  (:gyro_y
   (&optional (__gyro_y :null))
   (if (not (eq __gyro_y :null)) (setq _gyro_y __gyro_y)) _gyro_y)
  (:gyro_z
   (&optional (__gyro_z :null))
   (if (not (eq __gyro_z :null)) (setq _gyro_z __gyro_z)) _gyro_z)
  (:mag_x
   (&optional (__mag_x :null))
   (if (not (eq __mag_x :null)) (setq _mag_x __mag_x)) _mag_x)
  (:mag_y
   (&optional (__mag_y :null))
   (if (not (eq __mag_y :null)) (setq _mag_y __mag_y)) _mag_y)
  (:mag_z
   (&optional (__mag_z :null))
   (if (not (eq __mag_z :null)) (setq _mag_z __mag_z)) _mag_z)
  (:press
   (&optional (__press :null))
   (if (not (eq __press :null)) (setq _press __press)) _press)
  (:serialization-length
   ()
   (+
    ;; bool _accel_x
    1
    ;; bool _accel_y
    1
    ;; bool _accel_z
    1
    ;; bool _gyro_x
    1
    ;; bool _gyro_y
    1
    ;; bool _gyro_z
    1
    ;; bool _mag_x
    1
    ;; bool _mag_y
    1
    ;; bool _mag_z
    1
    ;; bool _press
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _accel_x
       (if _accel_x (write-byte -1 s) (write-byte 0 s))
     ;; bool _accel_y
       (if _accel_y (write-byte -1 s) (write-byte 0 s))
     ;; bool _accel_z
       (if _accel_z (write-byte -1 s) (write-byte 0 s))
     ;; bool _gyro_x
       (if _gyro_x (write-byte -1 s) (write-byte 0 s))
     ;; bool _gyro_y
       (if _gyro_y (write-byte -1 s) (write-byte 0 s))
     ;; bool _gyro_z
       (if _gyro_z (write-byte -1 s) (write-byte 0 s))
     ;; bool _mag_x
       (if _mag_x (write-byte -1 s) (write-byte 0 s))
     ;; bool _mag_y
       (if _mag_y (write-byte -1 s) (write-byte 0 s))
     ;; bool _mag_z
       (if _mag_z (write-byte -1 s) (write-byte 0 s))
     ;; bool _press
       (if _press (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _accel_x
     (setq _accel_x (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _accel_y
     (setq _accel_y (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _accel_z
     (setq _accel_z (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _gyro_x
     (setq _gyro_x (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _gyro_y
     (setq _gyro_y (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _gyro_z
     (setq _gyro_z (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _mag_x
     (setq _mag_x (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _mag_y
     (setq _mag_y (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _mag_z
     (setq _mag_z (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _press
     (setq _press (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get microstrain_inertial_msgs::MipSensorOverrangeStatusStatus :md5sum-) "0b343e6367e45b73c841c8255a4cfbba")
(setf (get microstrain_inertial_msgs::MipSensorOverrangeStatusStatus :datatype-) "microstrain_inertial_msgs/MipSensorOverrangeStatusStatus")
(setf (get microstrain_inertial_msgs::MipSensorOverrangeStatusStatus :definition-)
      "# Message definition for the Status field of https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/sensor_data/data/mip_field_sensor_overrange_status.htm?Highlight=overrange
#   Note: This message will never be published on it's own, only included in other messages.

bool accel_x
bool accel_y
bool accel_z
bool gyro_x
bool gyro_y
bool gyro_z
bool mag_x
bool mag_y
bool mag_z
bool press
")



(provide :microstrain_inertial_msgs/MipSensorOverrangeStatusStatus "0b343e6367e45b73c841c8255a4cfbba")


