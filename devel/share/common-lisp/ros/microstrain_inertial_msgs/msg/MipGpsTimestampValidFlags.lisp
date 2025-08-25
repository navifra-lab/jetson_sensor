; Auto-generated. Do not edit!


(cl:in-package microstrain_inertial_msgs-msg)


;//! \htmlinclude MipGpsTimestampValidFlags.msg.html

(cl:defclass <MipGpsTimestampValidFlags> (roslisp-msg-protocol:ros-message)
  ((tow
    :reader tow
    :initarg :tow
    :type cl:boolean
    :initform cl:nil)
   (week_number
    :reader week_number
    :initarg :week_number
    :type cl:boolean
    :initform cl:nil)
   (time_valid
    :reader time_valid
    :initarg :time_valid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MipGpsTimestampValidFlags (<MipGpsTimestampValidFlags>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MipGpsTimestampValidFlags>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MipGpsTimestampValidFlags)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name microstrain_inertial_msgs-msg:<MipGpsTimestampValidFlags> is deprecated: use microstrain_inertial_msgs-msg:MipGpsTimestampValidFlags instead.")))

(cl:ensure-generic-function 'tow-val :lambda-list '(m))
(cl:defmethod tow-val ((m <MipGpsTimestampValidFlags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:tow-val is deprecated.  Use microstrain_inertial_msgs-msg:tow instead.")
  (tow m))

(cl:ensure-generic-function 'week_number-val :lambda-list '(m))
(cl:defmethod week_number-val ((m <MipGpsTimestampValidFlags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:week_number-val is deprecated.  Use microstrain_inertial_msgs-msg:week_number instead.")
  (week_number m))

(cl:ensure-generic-function 'time_valid-val :lambda-list '(m))
(cl:defmethod time_valid-val ((m <MipGpsTimestampValidFlags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:time_valid-val is deprecated.  Use microstrain_inertial_msgs-msg:time_valid instead.")
  (time_valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MipGpsTimestampValidFlags>) ostream)
  "Serializes a message object of type '<MipGpsTimestampValidFlags>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'tow) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'week_number) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'time_valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MipGpsTimestampValidFlags>) istream)
  "Deserializes a message object of type '<MipGpsTimestampValidFlags>"
    (cl:setf (cl:slot-value msg 'tow) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'week_number) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'time_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MipGpsTimestampValidFlags>)))
  "Returns string type for a message object of type '<MipGpsTimestampValidFlags>"
  "microstrain_inertial_msgs/MipGpsTimestampValidFlags")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MipGpsTimestampValidFlags)))
  "Returns string type for a message object of type 'MipGpsTimestampValidFlags"
  "microstrain_inertial_msgs/MipGpsTimestampValidFlags")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MipGpsTimestampValidFlags>)))
  "Returns md5sum for a message object of type '<MipGpsTimestampValidFlags>"
  "50384058bd1cca07930272238284e5b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MipGpsTimestampValidFlags)))
  "Returns md5sum for a message object of type 'MipGpsTimestampValidFlags"
  "50384058bd1cca07930272238284e5b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MipGpsTimestampValidFlags>)))
  "Returns full string definition for message of type '<MipGpsTimestampValidFlags>"
  (cl:format cl:nil "# Message definition for the valid_flags field of https://files.microstrain.com/CV7+Online/external_content/dcp/Data/0xff/data/0xd3.htm~%#   Note: This message will never be published on it's own, only included in other messages.~%~%# Whole number seconds TOW has been set~%bool tow~%~%# Week number has been set~%bool week_number~%~%# Both TOW and Week Number have been set~%bool time_valid~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MipGpsTimestampValidFlags)))
  "Returns full string definition for message of type 'MipGpsTimestampValidFlags"
  (cl:format cl:nil "# Message definition for the valid_flags field of https://files.microstrain.com/CV7+Online/external_content/dcp/Data/0xff/data/0xd3.htm~%#   Note: This message will never be published on it's own, only included in other messages.~%~%# Whole number seconds TOW has been set~%bool tow~%~%# Week number has been set~%bool week_number~%~%# Both TOW and Week Number have been set~%bool time_valid~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MipGpsTimestampValidFlags>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MipGpsTimestampValidFlags>))
  "Converts a ROS message object to a list"
  (cl:list 'MipGpsTimestampValidFlags
    (cl:cons ':tow (tow msg))
    (cl:cons ':week_number (week_number msg))
    (cl:cons ':time_valid (time_valid msg))
))
