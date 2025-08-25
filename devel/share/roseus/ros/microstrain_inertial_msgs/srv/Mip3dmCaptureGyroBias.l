;; Auto-generated. Do not edit!


(when (boundp 'microstrain_inertial_msgs::Mip3dmCaptureGyroBias)
  (if (not (find-package "MICROSTRAIN_INERTIAL_MSGS"))
    (make-package "MICROSTRAIN_INERTIAL_MSGS"))
  (shadow 'Mip3dmCaptureGyroBias (find-package "MICROSTRAIN_INERTIAL_MSGS")))
(unless (find-package "MICROSTRAIN_INERTIAL_MSGS::MIP3DMCAPTUREGYROBIAS")
  (make-package "MICROSTRAIN_INERTIAL_MSGS::MIP3DMCAPTUREGYROBIAS"))
(unless (find-package "MICROSTRAIN_INERTIAL_MSGS::MIP3DMCAPTUREGYROBIASREQUEST")
  (make-package "MICROSTRAIN_INERTIAL_MSGS::MIP3DMCAPTUREGYROBIASREQUEST"))
(unless (find-package "MICROSTRAIN_INERTIAL_MSGS::MIP3DMCAPTUREGYROBIASRESPONSE")
  (make-package "MICROSTRAIN_INERTIAL_MSGS::MIP3DMCAPTUREGYROBIASRESPONSE"))

(in-package "ROS")





(defclass microstrain_inertial_msgs::Mip3dmCaptureGyroBiasRequest
  :super ros::object
  :slots ())

(defmethod microstrain_inertial_msgs::Mip3dmCaptureGyroBiasRequest
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

(defclass microstrain_inertial_msgs::Mip3dmCaptureGyroBiasResponse
  :super ros::object
  :slots (_bias ))

(defmethod microstrain_inertial_msgs::Mip3dmCaptureGyroBiasResponse
  (:init
   (&key
    ((:bias __bias) (make-array 3 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _bias __bias)
   self)
  (:bias
   (&optional __bias)
   (if __bias (setq _bias __bias)) _bias)
  (:serialization-length
   ()
   (+
    ;; float32[3] _bias
    (* 4    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[3] _bias
     (dotimes (i 3)
       (sys::poke (elt _bias i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[3] _bias
   (dotimes (i (length _bias))
     (setf (elt _bias i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(defclass microstrain_inertial_msgs::Mip3dmCaptureGyroBias
  :super ros::object
  :slots ())

(setf (get microstrain_inertial_msgs::Mip3dmCaptureGyroBias :md5sum-) "c3544fdea5e4e5d21daeac4669eef238")
(setf (get microstrain_inertial_msgs::Mip3dmCaptureGyroBias :datatype-) "microstrain_inertial_msgs/Mip3dmCaptureGyroBias")
(setf (get microstrain_inertial_msgs::Mip3dmCaptureGyroBias :request) microstrain_inertial_msgs::Mip3dmCaptureGyroBiasRequest)
(setf (get microstrain_inertial_msgs::Mip3dmCaptureGyroBias :response) microstrain_inertial_msgs::Mip3dmCaptureGyroBiasResponse)

(defmethod microstrain_inertial_msgs::Mip3dmCaptureGyroBiasRequest
  (:response () (instance microstrain_inertial_msgs::Mip3dmCaptureGyroBiasResponse :init)))

(setf (get microstrain_inertial_msgs::Mip3dmCaptureGyroBiasRequest :md5sum-) "c3544fdea5e4e5d21daeac4669eef238")
(setf (get microstrain_inertial_msgs::Mip3dmCaptureGyroBiasRequest :datatype-) "microstrain_inertial_msgs/Mip3dmCaptureGyroBiasRequest")
(setf (get microstrain_inertial_msgs::Mip3dmCaptureGyroBiasRequest :definition-)
      "# Service definition for the MIP command https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Commands/3dm_command/data/mip_cmd_3dm_capture_gyro_bias.htm?Highlight=capture%20gyro%20bias

---
float32[3] bias
")

(setf (get microstrain_inertial_msgs::Mip3dmCaptureGyroBiasResponse :md5sum-) "c3544fdea5e4e5d21daeac4669eef238")
(setf (get microstrain_inertial_msgs::Mip3dmCaptureGyroBiasResponse :datatype-) "microstrain_inertial_msgs/Mip3dmCaptureGyroBiasResponse")
(setf (get microstrain_inertial_msgs::Mip3dmCaptureGyroBiasResponse :definition-)
      "# Service definition for the MIP command https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Commands/3dm_command/data/mip_cmd_3dm_capture_gyro_bias.htm?Highlight=capture%20gyro%20bias

---
float32[3] bias
")



(provide :microstrain_inertial_msgs/Mip3dmCaptureGyroBias "c3544fdea5e4e5d21daeac4669eef238")


