;; Auto-generated. Do not edit!


(when (boundp 'microstrain_inertial_msgs::RawFileConfigWrite)
  (if (not (find-package "MICROSTRAIN_INERTIAL_MSGS"))
    (make-package "MICROSTRAIN_INERTIAL_MSGS"))
  (shadow 'RawFileConfigWrite (find-package "MICROSTRAIN_INERTIAL_MSGS")))
(unless (find-package "MICROSTRAIN_INERTIAL_MSGS::RAWFILECONFIGWRITE")
  (make-package "MICROSTRAIN_INERTIAL_MSGS::RAWFILECONFIGWRITE"))
(unless (find-package "MICROSTRAIN_INERTIAL_MSGS::RAWFILECONFIGWRITEREQUEST")
  (make-package "MICROSTRAIN_INERTIAL_MSGS::RAWFILECONFIGWRITEREQUEST"))
(unless (find-package "MICROSTRAIN_INERTIAL_MSGS::RAWFILECONFIGWRITERESPONSE")
  (make-package "MICROSTRAIN_INERTIAL_MSGS::RAWFILECONFIGWRITERESPONSE"))

(in-package "ROS")





(defclass microstrain_inertial_msgs::RawFileConfigWriteRequest
  :super ros::object
  :slots (_enable _file_path ))

(defmethod microstrain_inertial_msgs::RawFileConfigWriteRequest
  (:init
   (&key
    ((:enable __enable) nil)
    ((:file_path __file_path) "")
    )
   (send-super :init)
   (setq _enable __enable)
   (setq _file_path (string __file_path))
   self)
  (:enable
   (&optional (__enable :null))
   (if (not (eq __enable :null)) (setq _enable __enable)) _enable)
  (:file_path
   (&optional __file_path)
   (if __file_path (setq _file_path __file_path)) _file_path)
  (:serialization-length
   ()
   (+
    ;; bool _enable
    1
    ;; string _file_path
    4 (length _file_path)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;; string _file_path
       (write-long (length _file_path) s) (princ _file_path s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _file_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _file_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass microstrain_inertial_msgs::RawFileConfigWriteResponse
  :super ros::object
  :slots ())

(defmethod microstrain_inertial_msgs::RawFileConfigWriteResponse
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

(defclass microstrain_inertial_msgs::RawFileConfigWrite
  :super ros::object
  :slots ())

(setf (get microstrain_inertial_msgs::RawFileConfigWrite :md5sum-) "1983e7091dff1eb83e867fcdf514855d")
(setf (get microstrain_inertial_msgs::RawFileConfigWrite :datatype-) "microstrain_inertial_msgs/RawFileConfigWrite")
(setf (get microstrain_inertial_msgs::RawFileConfigWrite :request) microstrain_inertial_msgs::RawFileConfigWriteRequest)
(setf (get microstrain_inertial_msgs::RawFileConfigWrite :response) microstrain_inertial_msgs::RawFileConfigWriteResponse)

(defmethod microstrain_inertial_msgs::RawFileConfigWriteRequest
  (:response () (instance microstrain_inertial_msgs::RawFileConfigWriteResponse :init)))

(setf (get microstrain_inertial_msgs::RawFileConfigWriteRequest :md5sum-) "1983e7091dff1eb83e867fcdf514855d")
(setf (get microstrain_inertial_msgs::RawFileConfigWriteRequest :datatype-) "microstrain_inertial_msgs/RawFileConfigWriteRequest")
(setf (get microstrain_inertial_msgs::RawFileConfigWriteRequest :definition-)
      "# Service to allow users to configure the raw file collection at runtime

# Whether or not to enable raw file collection.
# If this is set to true after being set to false, we will start recording in the requested file.
# If this is set to false after being set to true, we will stop recording whatever file we were already recording
bool enable

# Full path to the file we should record the data to. If set to empty, we will read configuration from the raw_file_directory parameter
string file_path

---
")

(setf (get microstrain_inertial_msgs::RawFileConfigWriteResponse :md5sum-) "1983e7091dff1eb83e867fcdf514855d")
(setf (get microstrain_inertial_msgs::RawFileConfigWriteResponse :datatype-) "microstrain_inertial_msgs/RawFileConfigWriteResponse")
(setf (get microstrain_inertial_msgs::RawFileConfigWriteResponse :definition-)
      "# Service to allow users to configure the raw file collection at runtime

# Whether or not to enable raw file collection.
# If this is set to true after being set to false, we will start recording in the requested file.
# If this is set to false after being set to true, we will stop recording whatever file we were already recording
bool enable

# Full path to the file we should record the data to. If set to empty, we will read configuration from the raw_file_directory parameter
string file_path

---
")



(provide :microstrain_inertial_msgs/RawFileConfigWrite "1983e7091dff1eb83e867fcdf514855d")


