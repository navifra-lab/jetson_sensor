; Auto-generated. Do not edit!


(cl:in-package microstrain_inertial_msgs-msg)


;//! \htmlinclude MipGpsTimestamp.msg.html

(cl:defclass <MipGpsTimestamp> (roslisp-msg-protocol:ros-message)
  ((tow
    :reader tow
    :initarg :tow
    :type cl:float
    :initform 0.0)
   (week_number
    :reader week_number
    :initarg :week_number
    :type cl:fixnum
    :initform 0)
   (valid_flags
    :reader valid_flags
    :initarg :valid_flags
    :type microstrain_inertial_msgs-msg:MipGpsTimestampValidFlags
    :initform (cl:make-instance 'microstrain_inertial_msgs-msg:MipGpsTimestampValidFlags)))
)

(cl:defclass MipGpsTimestamp (<MipGpsTimestamp>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MipGpsTimestamp>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MipGpsTimestamp)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name microstrain_inertial_msgs-msg:<MipGpsTimestamp> is deprecated: use microstrain_inertial_msgs-msg:MipGpsTimestamp instead.")))

(cl:ensure-generic-function 'tow-val :lambda-list '(m))
(cl:defmethod tow-val ((m <MipGpsTimestamp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:tow-val is deprecated.  Use microstrain_inertial_msgs-msg:tow instead.")
  (tow m))

(cl:ensure-generic-function 'week_number-val :lambda-list '(m))
(cl:defmethod week_number-val ((m <MipGpsTimestamp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:week_number-val is deprecated.  Use microstrain_inertial_msgs-msg:week_number instead.")
  (week_number m))

(cl:ensure-generic-function 'valid_flags-val :lambda-list '(m))
(cl:defmethod valid_flags-val ((m <MipGpsTimestamp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:valid_flags-val is deprecated.  Use microstrain_inertial_msgs-msg:valid_flags instead.")
  (valid_flags m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MipGpsTimestamp>) ostream)
  "Serializes a message object of type '<MipGpsTimestamp>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'tow))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'week_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'week_number)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'valid_flags) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MipGpsTimestamp>) istream)
  "Deserializes a message object of type '<MipGpsTimestamp>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tow) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'week_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'week_number)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'valid_flags) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MipGpsTimestamp>)))
  "Returns string type for a message object of type '<MipGpsTimestamp>"
  "microstrain_inertial_msgs/MipGpsTimestamp")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MipGpsTimestamp)))
  "Returns string type for a message object of type 'MipGpsTimestamp"
  "microstrain_inertial_msgs/MipGpsTimestamp")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MipGpsTimestamp>)))
  "Returns md5sum for a message object of type '<MipGpsTimestamp>"
  "dff12f3cfc94aed05021c19e947f2a66")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MipGpsTimestamp)))
  "Returns md5sum for a message object of type 'MipGpsTimestamp"
  "dff12f3cfc94aed05021c19e947f2a66")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MipGpsTimestamp>)))
  "Returns full string definition for message of type '<MipGpsTimestamp>"
  (cl:format cl:nil "# Definition of a GPS timestamp.~%# For more information see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%#   Note: This message will never be published on it's own, only included in other messages~%~%# GPS time of week (seconds)~%float64 tow~%~%# GPS Week number since 1980 (weeks)~%uint16 week_number~%~%# Valid Flags bitfield~%microstrain_inertial_msgs/MipGpsTimestampValidFlags valid_flags~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestampValidFlags~%# Message definition for the valid_flags field of https://files.microstrain.com/CV7+Online/external_content/dcp/Data/0xff/data/0xd3.htm~%#   Note: This message will never be published on it's own, only included in other messages.~%~%# Whole number seconds TOW has been set~%bool tow~%~%# Week number has been set~%bool week_number~%~%# Both TOW and Week Number have been set~%bool time_valid~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MipGpsTimestamp)))
  "Returns full string definition for message of type 'MipGpsTimestamp"
  (cl:format cl:nil "# Definition of a GPS timestamp.~%# For more information see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm~%#   Note: This message will never be published on it's own, only included in other messages~%~%# GPS time of week (seconds)~%float64 tow~%~%# GPS Week number since 1980 (weeks)~%uint16 week_number~%~%# Valid Flags bitfield~%microstrain_inertial_msgs/MipGpsTimestampValidFlags valid_flags~%================================================================================~%MSG: microstrain_inertial_msgs/MipGpsTimestampValidFlags~%# Message definition for the valid_flags field of https://files.microstrain.com/CV7+Online/external_content/dcp/Data/0xff/data/0xd3.htm~%#   Note: This message will never be published on it's own, only included in other messages.~%~%# Whole number seconds TOW has been set~%bool tow~%~%# Week number has been set~%bool week_number~%~%# Both TOW and Week Number have been set~%bool time_valid~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MipGpsTimestamp>))
  (cl:+ 0
     8
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'valid_flags))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MipGpsTimestamp>))
  "Converts a ROS message object to a list"
  (cl:list 'MipGpsTimestamp
    (cl:cons ':tow (tow msg))
    (cl:cons ':week_number (week_number msg))
    (cl:cons ':valid_flags (valid_flags msg))
))
