;; Auto-generated. Do not edit!


(when (boundp 'microstrain_inertial_msgs::MipFilterMultiAntennaOffsetCorrection)
  (if (not (find-package "MICROSTRAIN_INERTIAL_MSGS"))
    (make-package "MICROSTRAIN_INERTIAL_MSGS"))
  (shadow 'MipFilterMultiAntennaOffsetCorrection (find-package "MICROSTRAIN_INERTIAL_MSGS")))
(unless (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERMULTIANTENNAOFFSETCORRECTION")
  (make-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERMULTIANTENNAOFFSETCORRECTION"))

(in-package "ROS")
;;//! \htmlinclude MipFilterMultiAntennaOffsetCorrection.msg.html


(defclass microstrain_inertial_msgs::MipFilterMultiAntennaOffsetCorrection
  :super ros::object
  :slots (_header _receiver_id _offset ))

(defmethod microstrain_inertial_msgs::MipFilterMultiAntennaOffsetCorrection
  (:init
   (&key
    ((:header __header) (instance microstrain_inertial_msgs::MipHeader :init))
    ((:receiver_id __receiver_id) 0)
    ((:offset __offset) (make-array 3 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _receiver_id (round __receiver_id))
   (setq _offset __offset)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:receiver_id
   (&optional __receiver_id)
   (if __receiver_id (setq _receiver_id __receiver_id)) _receiver_id)
  (:offset
   (&optional __offset)
   (if __offset (setq _offset __offset)) _offset)
  (:serialization-length
   ()
   (+
    ;; microstrain_inertial_msgs/MipHeader _header
    (send _header :serialization-length)
    ;; uint8 _receiver_id
    1
    ;; float32[3] _offset
    (* 4    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; microstrain_inertial_msgs/MipHeader _header
       (send _header :serialize s)
     ;; uint8 _receiver_id
       (write-byte _receiver_id s)
     ;; float32[3] _offset
     (dotimes (i 3)
       (sys::poke (elt _offset i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; microstrain_inertial_msgs/MipHeader _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _receiver_id
     (setq _receiver_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32[3] _offset
   (dotimes (i (length _offset))
     (setf (elt _offset i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get microstrain_inertial_msgs::MipFilterMultiAntennaOffsetCorrection :md5sum-) "a09216595b1abaa0bdc1b370adbb4ced")
(setf (get microstrain_inertial_msgs::MipFilterMultiAntennaOffsetCorrection :datatype-) "microstrain_inertial_msgs/MipFilterMultiAntennaOffsetCorrection")
(setf (get microstrain_inertial_msgs::MipFilterMultiAntennaOffsetCorrection :definition-)
      "# Message definition for the MIP field https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_multi_antenna_offset_correction.htm

# Header containing common information
#   header.frame_id has no meaning in this message
microstrain_inertial_msgs/MipHeader header

# Receiver ID. For GQ7, this will be 1 for GNSS1 and 2 for GNSS2
uint8 receiver_id

# Offset (x, y, z) in meters
float32[3] offset
================================================================================
MSG: microstrain_inertial_msgs/MipHeader
# Represents a standard header that all MIP fields should include at the beginning of their message definition
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



(provide :microstrain_inertial_msgs/MipFilterMultiAntennaOffsetCorrection "a09216595b1abaa0bdc1b370adbb4ced")


