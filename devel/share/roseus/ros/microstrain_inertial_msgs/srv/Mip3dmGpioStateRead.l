;; Auto-generated. Do not edit!


(when (boundp 'microstrain_inertial_msgs::Mip3dmGpioStateRead)
  (if (not (find-package "MICROSTRAIN_INERTIAL_MSGS"))
    (make-package "MICROSTRAIN_INERTIAL_MSGS"))
  (shadow 'Mip3dmGpioStateRead (find-package "MICROSTRAIN_INERTIAL_MSGS")))
(unless (find-package "MICROSTRAIN_INERTIAL_MSGS::MIP3DMGPIOSTATEREAD")
  (make-package "MICROSTRAIN_INERTIAL_MSGS::MIP3DMGPIOSTATEREAD"))
(unless (find-package "MICROSTRAIN_INERTIAL_MSGS::MIP3DMGPIOSTATEREADREQUEST")
  (make-package "MICROSTRAIN_INERTIAL_MSGS::MIP3DMGPIOSTATEREADREQUEST"))
(unless (find-package "MICROSTRAIN_INERTIAL_MSGS::MIP3DMGPIOSTATEREADRESPONSE")
  (make-package "MICROSTRAIN_INERTIAL_MSGS::MIP3DMGPIOSTATEREADRESPONSE"))

(in-package "ROS")





(defclass microstrain_inertial_msgs::Mip3dmGpioStateReadRequest
  :super ros::object
  :slots (_pin ))

(defmethod microstrain_inertial_msgs::Mip3dmGpioStateReadRequest
  (:init
   (&key
    ((:pin __pin) 0)
    )
   (send-super :init)
   (setq _pin (round __pin))
   self)
  (:pin
   (&optional __pin)
   (if __pin (setq _pin __pin)) _pin)
  (:serialization-length
   ()
   (+
    ;; uint8 _pin
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _pin
       (write-byte _pin s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _pin
     (setq _pin (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass microstrain_inertial_msgs::Mip3dmGpioStateReadResponse
  :super ros::object
  :slots (_pin _state ))

(defmethod microstrain_inertial_msgs::Mip3dmGpioStateReadResponse
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

(defclass microstrain_inertial_msgs::Mip3dmGpioStateRead
  :super ros::object
  :slots ())

(setf (get microstrain_inertial_msgs::Mip3dmGpioStateRead :md5sum-) "93f849169a0e8031b7d96348e252c870")
(setf (get microstrain_inertial_msgs::Mip3dmGpioStateRead :datatype-) "microstrain_inertial_msgs/Mip3dmGpioStateRead")
(setf (get microstrain_inertial_msgs::Mip3dmGpioStateRead :request) microstrain_inertial_msgs::Mip3dmGpioStateReadRequest)
(setf (get microstrain_inertial_msgs::Mip3dmGpioStateRead :response) microstrain_inertial_msgs::Mip3dmGpioStateReadResponse)

(defmethod microstrain_inertial_msgs::Mip3dmGpioStateReadRequest
  (:response () (instance microstrain_inertial_msgs::Mip3dmGpioStateReadResponse :init)))

(setf (get microstrain_inertial_msgs::Mip3dmGpioStateReadRequest :md5sum-) "93f849169a0e8031b7d96348e252c870")
(setf (get microstrain_inertial_msgs::Mip3dmGpioStateReadRequest :datatype-) "microstrain_inertial_msgs/Mip3dmGpioStateReadRequest")
(setf (get microstrain_inertial_msgs::Mip3dmGpioStateReadRequest :definition-)
      "# Service definition for the MIP command https://files.microstrain.com/GQ7+User+Manual/external_content/dcp/Commands/0x0c/data/0x42.htm

# GPIO pin number counting from 1 which you want to read the configuration for
uint8 pin

---
# GPIO pin number counting from 1. Cannot be 0.
uint8 pin

# The pin state
bool state
")

(setf (get microstrain_inertial_msgs::Mip3dmGpioStateReadResponse :md5sum-) "93f849169a0e8031b7d96348e252c870")
(setf (get microstrain_inertial_msgs::Mip3dmGpioStateReadResponse :datatype-) "microstrain_inertial_msgs/Mip3dmGpioStateReadResponse")
(setf (get microstrain_inertial_msgs::Mip3dmGpioStateReadResponse :definition-)
      "# Service definition for the MIP command https://files.microstrain.com/GQ7+User+Manual/external_content/dcp/Commands/0x0c/data/0x42.htm

# GPIO pin number counting from 1 which you want to read the configuration for
uint8 pin

---
# GPIO pin number counting from 1. Cannot be 0.
uint8 pin

# The pin state
bool state
")



(provide :microstrain_inertial_msgs/Mip3dmGpioStateRead "93f849169a0e8031b7d96348e252c870")


