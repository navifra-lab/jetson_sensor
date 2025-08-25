;; Auto-generated. Do not edit!


(when (boundp 'microstrain_inertial_msgs::RawFileConfigRead)
  (if (not (find-package "MICROSTRAIN_INERTIAL_MSGS"))
    (make-package "MICROSTRAIN_INERTIAL_MSGS"))
  (shadow 'RawFileConfigRead (find-package "MICROSTRAIN_INERTIAL_MSGS")))
(unless (find-package "MICROSTRAIN_INERTIAL_MSGS::RAWFILECONFIGREAD")
  (make-package "MICROSTRAIN_INERTIAL_MSGS::RAWFILECONFIGREAD"))
(unless (find-package "MICROSTRAIN_INERTIAL_MSGS::RAWFILECONFIGREADREQUEST")
  (make-package "MICROSTRAIN_INERTIAL_MSGS::RAWFILECONFIGREADREQUEST"))
(unless (find-package "MICROSTRAIN_INERTIAL_MSGS::RAWFILECONFIGREADRESPONSE")
  (make-package "MICROSTRAIN_INERTIAL_MSGS::RAWFILECONFIGREADRESPONSE"))

(in-package "ROS")





(defclass microstrain_inertial_msgs::RawFileConfigReadRequest
  :super ros::object
  :slots ())

(defmethod microstrain_inertial_msgs::RawFileConfigReadRequest
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

(defclass microstrain_inertial_msgs::RawFileConfigReadResponse
  :super ros::object
  :slots (_enable _file_path ))

(defmethod microstrain_inertial_msgs::RawFileConfigReadResponse
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

(defclass microstrain_inertial_msgs::RawFileConfigRead
  :super ros::object
  :slots ())

(setf (get microstrain_inertial_msgs::RawFileConfigRead :md5sum-) "1983e7091dff1eb83e867fcdf514855d")
(setf (get microstrain_inertial_msgs::RawFileConfigRead :datatype-) "microstrain_inertial_msgs/RawFileConfigRead")
(setf (get microstrain_inertial_msgs::RawFileConfigRead :request) microstrain_inertial_msgs::RawFileConfigReadRequest)
(setf (get microstrain_inertial_msgs::RawFileConfigRead :response) microstrain_inertial_msgs::RawFileConfigReadResponse)

(defmethod microstrain_inertial_msgs::RawFileConfigReadRequest
  (:response () (instance microstrain_inertial_msgs::RawFileConfigReadResponse :init)))

(setf (get microstrain_inertial_msgs::RawFileConfigReadRequest :md5sum-) "1983e7091dff1eb83e867fcdf514855d")
(setf (get microstrain_inertial_msgs::RawFileConfigReadRequest :datatype-) "microstrain_inertial_msgs/RawFileConfigReadRequest")
(setf (get microstrain_inertial_msgs::RawFileConfigReadRequest :definition-)
      "# Service to allow users to read the raw file collection config

---
# Whether or not raw file collection is enabled
bool enable

# Full path to the file we are recording the data to.
string file_path
")

(setf (get microstrain_inertial_msgs::RawFileConfigReadResponse :md5sum-) "1983e7091dff1eb83e867fcdf514855d")
(setf (get microstrain_inertial_msgs::RawFileConfigReadResponse :datatype-) "microstrain_inertial_msgs/RawFileConfigReadResponse")
(setf (get microstrain_inertial_msgs::RawFileConfigReadResponse :definition-)
      "# Service to allow users to read the raw file collection config

---
# Whether or not raw file collection is enabled
bool enable

# Full path to the file we are recording the data to.
string file_path
")



(provide :microstrain_inertial_msgs/RawFileConfigRead "1983e7091dff1eb83e867fcdf514855d")


