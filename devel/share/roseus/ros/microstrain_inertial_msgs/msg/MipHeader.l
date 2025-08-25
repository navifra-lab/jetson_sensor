;; Auto-generated. Do not edit!


(when (boundp 'microstrain_inertial_msgs::MipHeader)
  (if (not (find-package "MICROSTRAIN_INERTIAL_MSGS"))
    (make-package "MICROSTRAIN_INERTIAL_MSGS"))
  (shadow 'MipHeader (find-package "MICROSTRAIN_INERTIAL_MSGS")))
(unless (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPHEADER")
  (make-package "MICROSTRAIN_INERTIAL_MSGS::MIPHEADER"))

(in-package "ROS")
;;//! \htmlinclude MipHeader.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass microstrain_inertial_msgs::MipHeader
  :super ros::object
  :slots (_header _event_source _reference_timestamp _gps_timestamp ))

(defmethod microstrain_inertial_msgs::MipHeader
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:event_source __event_source) 0)
    ((:reference_timestamp __reference_timestamp) 0)
    ((:gps_timestamp __gps_timestamp) (instance microstrain_inertial_msgs::MipGpsTimestamp :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _event_source (round __event_source))
   (setq _reference_timestamp (round __reference_timestamp))
   (setq _gps_timestamp __gps_timestamp)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:event_source
   (&optional __event_source)
   (if __event_source (setq _event_source __event_source)) _event_source)
  (:reference_timestamp
   (&optional __reference_timestamp)
   (if __reference_timestamp (setq _reference_timestamp __reference_timestamp)) _reference_timestamp)
  (:gps_timestamp
   (&rest __gps_timestamp)
   (if (keywordp (car __gps_timestamp))
       (send* _gps_timestamp __gps_timestamp)
     (progn
       (if __gps_timestamp (setq _gps_timestamp (car __gps_timestamp)))
       _gps_timestamp)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _event_source
    1
    ;; uint64 _reference_timestamp
    8
    ;; microstrain_inertial_msgs/MipGpsTimestamp _gps_timestamp
    (send _gps_timestamp :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _event_source
       (write-byte _event_source s)
     ;; uint64 _reference_timestamp
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _reference_timestamp (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _reference_timestamp) (= (length (_reference_timestamp . bv)) 2)) ;; bignum
              (write-long (ash (elt (_reference_timestamp . bv) 0) 0) s)
              (write-long (ash (elt (_reference_timestamp . bv) 1) -1) s))
             ((and (class _reference_timestamp) (= (length (_reference_timestamp . bv)) 1)) ;; big1
              (write-long (elt (_reference_timestamp . bv) 0) s)
              (write-long (if (>= _reference_timestamp 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _reference_timestamp s)(write-long (if (>= _reference_timestamp 0) 0 #xffffffff) s)))
     ;; microstrain_inertial_msgs/MipGpsTimestamp _gps_timestamp
       (send _gps_timestamp :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _event_source
     (setq _event_source (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint64 _reference_timestamp
     
#+(or :alpha :irix6 :x86_64)
      (setf _reference_timestamp (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _reference_timestamp (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; microstrain_inertial_msgs/MipGpsTimestamp _gps_timestamp
     (send _gps_timestamp :deserialize buf ptr-) (incf ptr- (send _gps_timestamp :serialization-length))
   ;;
   self)
  )

(setf (get microstrain_inertial_msgs::MipHeader :md5sum-) "744333c9bf2617366c1413a75c739880")
(setf (get microstrain_inertial_msgs::MipHeader :datatype-) "microstrain_inertial_msgs/MipHeader")
(setf (get microstrain_inertial_msgs::MipHeader :definition-)
      "# Represents a standard header that all MIP fields should include at the beginning of their message definition
#   Note: This message will never be published on it's own, only included in other messages

# Standard ROS header.
#   header.stamp will always be populated with the ROS time that this message was populated
#   header.frame_id is dependent on the full message definition. Most messages will not use this
std_msgs/Header header

# If the message was triggered by an event, this will be set, otherwise it will be set to 0 (will be 0 most of the time)
# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_event_source.htm
uint8 event_source

# Reference timestamp of when the data was sampled if the device supports it. For devices that do not support this, it will always be 0
# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_reference_timestamp.htm
uint64 reference_timestamp

# GPS timestamp of when the data was sampled if the device supports it
# For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm
# Note that this timestamp may be blank in certain messages, but there will often be equivalent fields in the messages
microstrain_inertial_msgs/MipGpsTimestamp gps_timestamp
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: microstrain_inertial_msgs/MipGpsTimestamp
# Definition of a GPS timestamp.
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



(provide :microstrain_inertial_msgs/MipHeader "744333c9bf2617366c1413a75c739880")


