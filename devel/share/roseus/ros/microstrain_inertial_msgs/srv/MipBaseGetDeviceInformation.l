;; Auto-generated. Do not edit!


(when (boundp 'microstrain_inertial_msgs::MipBaseGetDeviceInformation)
  (if (not (find-package "MICROSTRAIN_INERTIAL_MSGS"))
    (make-package "MICROSTRAIN_INERTIAL_MSGS"))
  (shadow 'MipBaseGetDeviceInformation (find-package "MICROSTRAIN_INERTIAL_MSGS")))
(unless (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPBASEGETDEVICEINFORMATION")
  (make-package "MICROSTRAIN_INERTIAL_MSGS::MIPBASEGETDEVICEINFORMATION"))
(unless (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPBASEGETDEVICEINFORMATIONREQUEST")
  (make-package "MICROSTRAIN_INERTIAL_MSGS::MIPBASEGETDEVICEINFORMATIONREQUEST"))
(unless (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPBASEGETDEVICEINFORMATIONRESPONSE")
  (make-package "MICROSTRAIN_INERTIAL_MSGS::MIPBASEGETDEVICEINFORMATIONRESPONSE"))

(in-package "ROS")





(defclass microstrain_inertial_msgs::MipBaseGetDeviceInformationRequest
  :super ros::object
  :slots ())

(defmethod microstrain_inertial_msgs::MipBaseGetDeviceInformationRequest
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

(defclass microstrain_inertial_msgs::MipBaseGetDeviceInformationResponse
  :super ros::object
  :slots (_device_info ))

(defmethod microstrain_inertial_msgs::MipBaseGetDeviceInformationResponse
  (:init
   (&key
    ((:device_info __device_info) (instance microstrain_inertial_msgs::MipBaseDeviceInfo :init))
    )
   (send-super :init)
   (setq _device_info __device_info)
   self)
  (:device_info
   (&rest __device_info)
   (if (keywordp (car __device_info))
       (send* _device_info __device_info)
     (progn
       (if __device_info (setq _device_info (car __device_info)))
       _device_info)))
  (:serialization-length
   ()
   (+
    ;; microstrain_inertial_msgs/MipBaseDeviceInfo _device_info
    (send _device_info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; microstrain_inertial_msgs/MipBaseDeviceInfo _device_info
       (send _device_info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; microstrain_inertial_msgs/MipBaseDeviceInfo _device_info
     (send _device_info :deserialize buf ptr-) (incf ptr- (send _device_info :serialization-length))
   ;;
   self)
  )

(defclass microstrain_inertial_msgs::MipBaseGetDeviceInformation
  :super ros::object
  :slots ())

(setf (get microstrain_inertial_msgs::MipBaseGetDeviceInformation :md5sum-) "2c655b109370cba7cdc7620bb1869aa5")
(setf (get microstrain_inertial_msgs::MipBaseGetDeviceInformation :datatype-) "microstrain_inertial_msgs/MipBaseGetDeviceInformation")
(setf (get microstrain_inertial_msgs::MipBaseGetDeviceInformation :request) microstrain_inertial_msgs::MipBaseGetDeviceInformationRequest)
(setf (get microstrain_inertial_msgs::MipBaseGetDeviceInformation :response) microstrain_inertial_msgs::MipBaseGetDeviceInformationResponse)

(defmethod microstrain_inertial_msgs::MipBaseGetDeviceInformationRequest
  (:response () (instance microstrain_inertial_msgs::MipBaseGetDeviceInformationResponse :init)))

(setf (get microstrain_inertial_msgs::MipBaseGetDeviceInformationRequest :md5sum-) "2c655b109370cba7cdc7620bb1869aa5")
(setf (get microstrain_inertial_msgs::MipBaseGetDeviceInformationRequest :datatype-) "microstrain_inertial_msgs/MipBaseGetDeviceInformationRequest")
(setf (get microstrain_inertial_msgs::MipBaseGetDeviceInformationRequest :definition-)
      "# Service definition for the MIP command https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Commands/base_command/data/mip_cmd_base_get_device_info.htm

---
microstrain_inertial_msgs/MipBaseDeviceInfo device_info

================================================================================
MSG: microstrain_inertial_msgs/MipBaseDeviceInfo
# Message definition for https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Commands/base_command/data/base_device_info.htm
#   Note: This message will never be published on it's own, only included in other messages.
string firmware_version  # String version of the firmware version on the device
string model_name        # Model name (3DM-GQ7, 3DM-GX5, etc.)
string model_number      # Model number (6284, 6285, etc.)
string serial_number     # Serial number (6284.109766, 6285.13404, etc.)
string lot_number        # Lot number
")

(setf (get microstrain_inertial_msgs::MipBaseGetDeviceInformationResponse :md5sum-) "2c655b109370cba7cdc7620bb1869aa5")
(setf (get microstrain_inertial_msgs::MipBaseGetDeviceInformationResponse :datatype-) "microstrain_inertial_msgs/MipBaseGetDeviceInformationResponse")
(setf (get microstrain_inertial_msgs::MipBaseGetDeviceInformationResponse :definition-)
      "# Service definition for the MIP command https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Commands/base_command/data/mip_cmd_base_get_device_info.htm

---
microstrain_inertial_msgs/MipBaseDeviceInfo device_info

================================================================================
MSG: microstrain_inertial_msgs/MipBaseDeviceInfo
# Message definition for https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Commands/base_command/data/base_device_info.htm
#   Note: This message will never be published on it's own, only included in other messages.
string firmware_version  # String version of the firmware version on the device
string model_name        # Model name (3DM-GQ7, 3DM-GX5, etc.)
string model_number      # Model number (6284, 6285, etc.)
string serial_number     # Serial number (6284.109766, 6285.13404, etc.)
string lot_number        # Lot number
")



(provide :microstrain_inertial_msgs/MipBaseGetDeviceInformation "2c655b109370cba7cdc7620bb1869aa5")


