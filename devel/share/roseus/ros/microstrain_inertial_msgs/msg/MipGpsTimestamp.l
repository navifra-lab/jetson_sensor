;; Auto-generated. Do not edit!


(when (boundp 'microstrain_inertial_msgs::MipGpsTimestamp)
  (if (not (find-package "MICROSTRAIN_INERTIAL_MSGS"))
    (make-package "MICROSTRAIN_INERTIAL_MSGS"))
  (shadow 'MipGpsTimestamp (find-package "MICROSTRAIN_INERTIAL_MSGS")))
(unless (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGPSTIMESTAMP")
  (make-package "MICROSTRAIN_INERTIAL_MSGS::MIPGPSTIMESTAMP"))

(in-package "ROS")
;;//! \htmlinclude MipGpsTimestamp.msg.html


(defclass microstrain_inertial_msgs::MipGpsTimestamp
  :super ros::object
  :slots (_tow _week_number _valid_flags ))

(defmethod microstrain_inertial_msgs::MipGpsTimestamp
  (:init
   (&key
    ((:tow __tow) 0.0)
    ((:week_number __week_number) 0)
    ((:valid_flags __valid_flags) (instance microstrain_inertial_msgs::MipGpsTimestampValidFlags :init))
    )
   (send-super :init)
   (setq _tow (float __tow))
   (setq _week_number (round __week_number))
   (setq _valid_flags __valid_flags)
   self)
  (:tow
   (&optional __tow)
   (if __tow (setq _tow __tow)) _tow)
  (:week_number
   (&optional __week_number)
   (if __week_number (setq _week_number __week_number)) _week_number)
  (:valid_flags
   (&rest __valid_flags)
   (if (keywordp (car __valid_flags))
       (send* _valid_flags __valid_flags)
     (progn
       (if __valid_flags (setq _valid_flags (car __valid_flags)))
       _valid_flags)))
  (:serialization-length
   ()
   (+
    ;; float64 _tow
    8
    ;; uint16 _week_number
    2
    ;; microstrain_inertial_msgs/MipGpsTimestampValidFlags _valid_flags
    (send _valid_flags :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _tow
       (sys::poke _tow (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint16 _week_number
       (write-word _week_number s)
     ;; microstrain_inertial_msgs/MipGpsTimestampValidFlags _valid_flags
       (send _valid_flags :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _tow
     (setq _tow (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint16 _week_number
     (setq _week_number (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; microstrain_inertial_msgs/MipGpsTimestampValidFlags _valid_flags
     (send _valid_flags :deserialize buf ptr-) (incf ptr- (send _valid_flags :serialization-length))
   ;;
   self)
  )

(setf (get microstrain_inertial_msgs::MipGpsTimestamp :md5sum-) "dff12f3cfc94aed05021c19e947f2a66")
(setf (get microstrain_inertial_msgs::MipGpsTimestamp :datatype-) "microstrain_inertial_msgs/MipGpsTimestamp")
(setf (get microstrain_inertial_msgs::MipGpsTimestamp :definition-)
      "# Definition of a GPS timestamp.
# For more information see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm
#   Note: This message will never be published on it's own, only included in other messages

# GPS time of week (seconds)
float64 tow

# GPS Week number since 1980 (weeks)
uint16 week_number

# Valid Flags bitfield
microstrain_inertial_msgs/MipGpsTimestampValidFlags valid_flags
================================================================================
MSG: microstrain_inertial_msgs/MipGpsTimestampValidFlags
# Message definition for the valid_flags field of https://files.microstrain.com/CV7+Online/external_content/dcp/Data/0xff/data/0xd3.htm
#   Note: This message will never be published on it's own, only included in other messages.

# Whole number seconds TOW has been set
bool tow

# Week number has been set
bool week_number

# Both TOW and Week Number have been set
bool time_valid
")



(provide :microstrain_inertial_msgs/MipGpsTimestamp "dff12f3cfc94aed05021c19e947f2a66")


