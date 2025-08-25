;; Auto-generated. Do not edit!


(when (boundp 'microstrain_inertial_msgs::MipBaseDeviceInfo)
  (if (not (find-package "MICROSTRAIN_INERTIAL_MSGS"))
    (make-package "MICROSTRAIN_INERTIAL_MSGS"))
  (shadow 'MipBaseDeviceInfo (find-package "MICROSTRAIN_INERTIAL_MSGS")))
(unless (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPBASEDEVICEINFO")
  (make-package "MICROSTRAIN_INERTIAL_MSGS::MIPBASEDEVICEINFO"))

(in-package "ROS")
;;//! \htmlinclude MipBaseDeviceInfo.msg.html


(defclass microstrain_inertial_msgs::MipBaseDeviceInfo
  :super ros::object
  :slots (_firmware_version _model_name _model_number _serial_number _lot_number _device_options ))

(defmethod microstrain_inertial_msgs::MipBaseDeviceInfo
  (:init
   (&key
    ((:firmware_version __firmware_version) "")
    ((:model_name __model_name) "")
    ((:model_number __model_number) "")
    ((:serial_number __serial_number) "")
    ((:lot_number __lot_number) "")
    ((:device_options __device_options) "")
    )
   (send-super :init)
   (setq _firmware_version (string __firmware_version))
   (setq _model_name (string __model_name))
   (setq _model_number (string __model_number))
   (setq _serial_number (string __serial_number))
   (setq _lot_number (string __lot_number))
   (setq _device_options (string __device_options))
   self)
  (:firmware_version
   (&optional __firmware_version)
   (if __firmware_version (setq _firmware_version __firmware_version)) _firmware_version)
  (:model_name
   (&optional __model_name)
   (if __model_name (setq _model_name __model_name)) _model_name)
  (:model_number
   (&optional __model_number)
   (if __model_number (setq _model_number __model_number)) _model_number)
  (:serial_number
   (&optional __serial_number)
   (if __serial_number (setq _serial_number __serial_number)) _serial_number)
  (:lot_number
   (&optional __lot_number)
   (if __lot_number (setq _lot_number __lot_number)) _lot_number)
  (:device_options
   (&optional __device_options)
   (if __device_options (setq _device_options __device_options)) _device_options)
  (:serialization-length
   ()
   (+
    ;; string _firmware_version
    4 (length _firmware_version)
    ;; string _model_name
    4 (length _model_name)
    ;; string _model_number
    4 (length _model_number)
    ;; string _serial_number
    4 (length _serial_number)
    ;; string _lot_number
    4 (length _lot_number)
    ;; string _device_options
    4 (length _device_options)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _firmware_version
       (write-long (length _firmware_version) s) (princ _firmware_version s)
     ;; string _model_name
       (write-long (length _model_name) s) (princ _model_name s)
     ;; string _model_number
       (write-long (length _model_number) s) (princ _model_number s)
     ;; string _serial_number
       (write-long (length _serial_number) s) (princ _serial_number s)
     ;; string _lot_number
       (write-long (length _lot_number) s) (princ _lot_number s)
     ;; string _device_options
       (write-long (length _device_options) s) (princ _device_options s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _firmware_version
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _firmware_version (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _model_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _model_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _model_number
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _model_number (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _serial_number
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _serial_number (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _lot_number
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _lot_number (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _device_options
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _device_options (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get microstrain_inertial_msgs::MipBaseDeviceInfo :md5sum-) "df41d79ab6c7222345becf9da712892f")
(setf (get microstrain_inertial_msgs::MipBaseDeviceInfo :datatype-) "microstrain_inertial_msgs/MipBaseDeviceInfo")
(setf (get microstrain_inertial_msgs::MipBaseDeviceInfo :definition-)
      "# Message definition for https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Commands/base_command/data/base_device_info.htm
#   Note: This message will never be published on it's own, only included in other messages.
string firmware_version  # String version of the firmware version on the device
string model_name        # Model name (3DM-GQ7, 3DM-GX5, etc.)
string model_number      # Model number (6284, 6285, etc.)
string serial_number     # Serial number (6284.109766, 6285.13404, etc.)
string lot_number        # Lot number
string device_options    # Device options
")



(provide :microstrain_inertial_msgs/MipBaseDeviceInfo "df41d79ab6c7222345becf9da712892f")


