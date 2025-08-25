;; Auto-generated. Do not edit!


(when (boundp 'microstrain_inertial_msgs::MipGpsTimestampValidFlags)
  (if (not (find-package "MICROSTRAIN_INERTIAL_MSGS"))
    (make-package "MICROSTRAIN_INERTIAL_MSGS"))
  (shadow 'MipGpsTimestampValidFlags (find-package "MICROSTRAIN_INERTIAL_MSGS")))
(unless (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGPSTIMESTAMPVALIDFLAGS")
  (make-package "MICROSTRAIN_INERTIAL_MSGS::MIPGPSTIMESTAMPVALIDFLAGS"))

(in-package "ROS")
;;//! \htmlinclude MipGpsTimestampValidFlags.msg.html


(defclass microstrain_inertial_msgs::MipGpsTimestampValidFlags
  :super ros::object
  :slots (_tow _week_number _time_valid ))

(defmethod microstrain_inertial_msgs::MipGpsTimestampValidFlags
  (:init
   (&key
    ((:tow __tow) nil)
    ((:week_number __week_number) nil)
    ((:time_valid __time_valid) nil)
    )
   (send-super :init)
   (setq _tow __tow)
   (setq _week_number __week_number)
   (setq _time_valid __time_valid)
   self)
  (:tow
   (&optional (__tow :null))
   (if (not (eq __tow :null)) (setq _tow __tow)) _tow)
  (:week_number
   (&optional (__week_number :null))
   (if (not (eq __week_number :null)) (setq _week_number __week_number)) _week_number)
  (:time_valid
   (&optional (__time_valid :null))
   (if (not (eq __time_valid :null)) (setq _time_valid __time_valid)) _time_valid)
  (:serialization-length
   ()
   (+
    ;; bool _tow
    1
    ;; bool _week_number
    1
    ;; bool _time_valid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _tow
       (if _tow (write-byte -1 s) (write-byte 0 s))
     ;; bool _week_number
       (if _week_number (write-byte -1 s) (write-byte 0 s))
     ;; bool _time_valid
       (if _time_valid (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _tow
     (setq _tow (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _week_number
     (setq _week_number (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _time_valid
     (setq _time_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get microstrain_inertial_msgs::MipGpsTimestampValidFlags :md5sum-) "50384058bd1cca07930272238284e5b7")
(setf (get microstrain_inertial_msgs::MipGpsTimestampValidFlags :datatype-) "microstrain_inertial_msgs/MipGpsTimestampValidFlags")
(setf (get microstrain_inertial_msgs::MipGpsTimestampValidFlags :definition-)
      "# Message definition for the valid_flags field of https://files.microstrain.com/CV7+Online/external_content/dcp/Data/0xff/data/0xd3.htm
#   Note: This message will never be published on it's own, only included in other messages.

# Whole number seconds TOW has been set
bool tow

# Week number has been set
bool week_number

# Both TOW and Week Number have been set
bool time_valid
")



(provide :microstrain_inertial_msgs/MipGpsTimestampValidFlags "50384058bd1cca07930272238284e5b7")


