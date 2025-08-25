; Auto-generated. Do not edit!


(cl:in-package microstrain_inertial_msgs-msg)


;//! \htmlinclude MipGnssSbasInfoSbasStatus.msg.html

(cl:defclass <MipGnssSbasInfoSbasStatus> (roslisp-msg-protocol:ros-message)
  ((range_available
    :reader range_available
    :initarg :range_available
    :type cl:boolean
    :initform cl:nil)
   (corrections_available
    :reader corrections_available
    :initarg :corrections_available
    :type cl:boolean
    :initform cl:nil)
   (integrity_available
    :reader integrity_available
    :initarg :integrity_available
    :type cl:boolean
    :initform cl:nil)
   (test_mode
    :reader test_mode
    :initarg :test_mode
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MipGnssSbasInfoSbasStatus (<MipGnssSbasInfoSbasStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MipGnssSbasInfoSbasStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MipGnssSbasInfoSbasStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name microstrain_inertial_msgs-msg:<MipGnssSbasInfoSbasStatus> is deprecated: use microstrain_inertial_msgs-msg:MipGnssSbasInfoSbasStatus instead.")))

(cl:ensure-generic-function 'range_available-val :lambda-list '(m))
(cl:defmethod range_available-val ((m <MipGnssSbasInfoSbasStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:range_available-val is deprecated.  Use microstrain_inertial_msgs-msg:range_available instead.")
  (range_available m))

(cl:ensure-generic-function 'corrections_available-val :lambda-list '(m))
(cl:defmethod corrections_available-val ((m <MipGnssSbasInfoSbasStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:corrections_available-val is deprecated.  Use microstrain_inertial_msgs-msg:corrections_available instead.")
  (corrections_available m))

(cl:ensure-generic-function 'integrity_available-val :lambda-list '(m))
(cl:defmethod integrity_available-val ((m <MipGnssSbasInfoSbasStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:integrity_available-val is deprecated.  Use microstrain_inertial_msgs-msg:integrity_available instead.")
  (integrity_available m))

(cl:ensure-generic-function 'test_mode-val :lambda-list '(m))
(cl:defmethod test_mode-val ((m <MipGnssSbasInfoSbasStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:test_mode-val is deprecated.  Use microstrain_inertial_msgs-msg:test_mode instead.")
  (test_mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MipGnssSbasInfoSbasStatus>) ostream)
  "Serializes a message object of type '<MipGnssSbasInfoSbasStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'range_available) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'corrections_available) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'integrity_available) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'test_mode) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MipGnssSbasInfoSbasStatus>) istream)
  "Deserializes a message object of type '<MipGnssSbasInfoSbasStatus>"
    (cl:setf (cl:slot-value msg 'range_available) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'corrections_available) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'integrity_available) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'test_mode) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MipGnssSbasInfoSbasStatus>)))
  "Returns string type for a message object of type '<MipGnssSbasInfoSbasStatus>"
  "microstrain_inertial_msgs/MipGnssSbasInfoSbasStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MipGnssSbasInfoSbasStatus)))
  "Returns string type for a message object of type 'MipGnssSbasInfoSbasStatus"
  "microstrain_inertial_msgs/MipGnssSbasInfoSbasStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MipGnssSbasInfoSbasStatus>)))
  "Returns md5sum for a message object of type '<MipGnssSbasInfoSbasStatus>"
  "d44b1dcf4b6c5470a42c909b93caefc4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MipGnssSbasInfoSbasStatus)))
  "Returns md5sum for a message object of type 'MipGnssSbasInfoSbasStatus"
  "d44b1dcf4b6c5470a42c909b93caefc4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MipGnssSbasInfoSbasStatus>)))
  "Returns full string definition for message of type '<MipGnssSbasInfoSbasStatus>"
  (cl:format cl:nil "# Message definition for the Sbas Status field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/gnss_recv_1/data/mip_field_gnss_sbas_info.htm?Highlight=sbas%20info~%#   Note: This message will never be published on it's own, only included in other messages.~%~%bool range_available~%bool corrections_available~%bool integrity_available~%bool test_mode~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MipGnssSbasInfoSbasStatus)))
  "Returns full string definition for message of type 'MipGnssSbasInfoSbasStatus"
  (cl:format cl:nil "# Message definition for the Sbas Status field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/gnss_recv_1/data/mip_field_gnss_sbas_info.htm?Highlight=sbas%20info~%#   Note: This message will never be published on it's own, only included in other messages.~%~%bool range_available~%bool corrections_available~%bool integrity_available~%bool test_mode~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MipGnssSbasInfoSbasStatus>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MipGnssSbasInfoSbasStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'MipGnssSbasInfoSbasStatus
    (cl:cons ':range_available (range_available msg))
    (cl:cons ':corrections_available (corrections_available msg))
    (cl:cons ':integrity_available (integrity_available msg))
    (cl:cons ':test_mode (test_mode msg))
))
