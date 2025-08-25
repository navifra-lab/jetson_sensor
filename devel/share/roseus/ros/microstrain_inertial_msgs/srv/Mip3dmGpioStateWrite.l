;; Auto-generated. Do not edit!


(when (boundp 'microstrain_inertial_msgs::Mip3dmGpioStateWrite)
  (if (not (find-package "MICROSTRAIN_INERTIAL_MSGS"))
    (make-package "MICROSTRAIN_INERTIAL_MSGS"))
  (shadow 'Mip3dmGpioStateWrite (find-package "MICROSTRAIN_INERTIAL_MSGS")))
(unless (find-package "MICROSTRAIN_INERTIAL_MSGS::MIP3DMGPIOSTATEWRITE")
  (make-package "MICROSTRAIN_INERTIAL_MSGS::MIP3DMGPIOSTATEWRITE"))
(unless (find-package "MICROSTRAIN_INERTIAL_MSGS::MIP3DMGPIOSTATEWRITEREQUEST")
  (make-package "MICROSTRAIN_INERTIAL_MSGS::MIP3DMGPIOSTATEWRITEREQUEST"))
(unless (find-package "MICROSTRAIN_INERTIAL_MSGS::MIP3DMGPIOSTATEWRITERESPONSE")
  (make-package "MICROSTRAIN_INERTIAL_MSGS::MIP3DMGPIOSTATEWRITERESPONSE"))

(in-package "ROS")





(defclass microstrain_inertial_msgs::Mip3dmGpioStateWriteRequest
  :super ros::object
  :slots (_pin _state ))

(defmethod microstrain_inertial_msgs::Mip3dmGpioStateWriteRequest
  (:init
   (&key
    ((:pin __pin) 0)
    ((:state __state) nil)
    )
   (send-super :init)
   (setq _pin (round __pin))
   (setq _state __state)
   self)
  (:pin
   (&optional __pin)
   (if __pin (setq _pin __pin)) _pin)
  (:state
   (&optional (__state :null))
   (if (not (eq __state :null)) (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; uint8 _pin
    1
    ;; bool _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _pin
       (write-byte _pin s)
     ;; bool _state
       (if _state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _pin
     (setq _pin (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _state
     (setq _state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass microstrain_inertial_msgs::Mip3dmGpioStateWriteResponse
  :super ros::object
  :slots ())

(defmethod microstrain_inertial_msgs::Mip3dmGpioStateWriteResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass microstrain_inertial_msgs::Mip3dmGpioStateWrite
  :super ros::object
  :slots ())

(setf (get microstrain_inertial_msgs::Mip3dmGpioStateWrite :md5sum-) "83707be3fa18d2ffe57381ea034aa262")
(setf (get microstrain_inertial_msgs::Mip3dmGpioStateWrite :datatype-) "microstrain_inertial_msgs/Mip3dmGpioStateWrite")
(setf (get microstrain_inertial_msgs::Mip3dmGpioStateWrite :request) microstrain_inertial_msgs::Mip3dmGpioStateWriteRequest)
(setf (get microstrain_inertial_msgs::Mip3dmGpioStateWrite :response) microstrain_inertial_msgs::Mip3dmGpioStateWriteResponse)

(defmethod microstrain_inertial_msgs::Mip3dmGpioStateWriteRequest
  (:response () (instance microstrain_inertial_msgs::Mip3dmGpioStateWriteResponse :init)))

(setf (get microstrain_inertial_msgs::Mip3dmGpioStateWriteRequest :md5sum-) "83707be3fa18d2ffe57381ea034aa262")
(setf (get microstrain_inertial_msgs::Mip3dmGpioStateWriteRequest :datatype-) "microstrain_inertial_msgs/Mip3dmGpioStateWriteRequest")
(setf (get microstrain_inertial_msgs::Mip3dmGpioStateWriteRequest :definition-)
      "# Service definition for the MIP command https://files.microstrain.com/GQ7+User+Manual/external_content/dcp/Commands/0x0c/data/0x42.htm

# GPIO pin number counting from 1. Cannot be 0.
uint8 pin

# The pin state
bool state

---
")

(setf (get microstrain_inertial_msgs::Mip3dmGpioStateWriteResponse :md5sum-) "83707be3fa18d2ffe57381ea034aa262")
(setf (get microstrain_inertial_msgs::Mip3dmGpioStateWriteResponse :datatype-) "microstrain_inertial_msgs/Mip3dmGpioStateWriteResponse")
(setf (get microstrain_inertial_msgs::Mip3dmGpioStateWriteResponse :definition-)
      "# Service definition for the MIP command https://files.microstrain.com/GQ7+User+Manual/external_content/dcp/Commands/0x0c/data/0x42.htm

# GPIO pin number counting from 1. Cannot be 0.
uint8 pin

# The pin state
bool state

---
")



(provide :microstrain_inertial_msgs/Mip3dmGpioStateWrite "83707be3fa18d2ffe57381ea034aa262")


