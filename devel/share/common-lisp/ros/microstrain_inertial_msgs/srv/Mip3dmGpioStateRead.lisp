; Auto-generated. Do not edit!


(cl:in-package microstrain_inertial_msgs-srv)


;//! \htmlinclude Mip3dmGpioStateRead-request.msg.html

(cl:defclass <Mip3dmGpioStateRead-request> (roslisp-msg-protocol:ros-message)
  ((pin
    :reader pin
    :initarg :pin
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Mip3dmGpioStateRead-request (<Mip3dmGpioStateRead-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Mip3dmGpioStateRead-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Mip3dmGpioStateRead-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name microstrain_inertial_msgs-srv:<Mip3dmGpioStateRead-request> is deprecated: use microstrain_inertial_msgs-srv:Mip3dmGpioStateRead-request instead.")))

(cl:ensure-generic-function 'pin-val :lambda-list '(m))
(cl:defmethod pin-val ((m <Mip3dmGpioStateRead-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-srv:pin-val is deprecated.  Use microstrain_inertial_msgs-srv:pin instead.")
  (pin m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Mip3dmGpioStateRead-request>) ostream)
  "Serializes a message object of type '<Mip3dmGpioStateRead-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Mip3dmGpioStateRead-request>) istream)
  "Deserializes a message object of type '<Mip3dmGpioStateRead-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Mip3dmGpioStateRead-request>)))
  "Returns string type for a service object of type '<Mip3dmGpioStateRead-request>"
  "microstrain_inertial_msgs/Mip3dmGpioStateReadRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Mip3dmGpioStateRead-request)))
  "Returns string type for a service object of type 'Mip3dmGpioStateRead-request"
  "microstrain_inertial_msgs/Mip3dmGpioStateReadRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Mip3dmGpioStateRead-request>)))
  "Returns md5sum for a message object of type '<Mip3dmGpioStateRead-request>"
  "93f849169a0e8031b7d96348e252c870")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Mip3dmGpioStateRead-request)))
  "Returns md5sum for a message object of type 'Mip3dmGpioStateRead-request"
  "93f849169a0e8031b7d96348e252c870")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Mip3dmGpioStateRead-request>)))
  "Returns full string definition for message of type '<Mip3dmGpioStateRead-request>"
  (cl:format cl:nil "# Service definition for the MIP command https://files.microstrain.com/GQ7+User+Manual/external_content/dcp/Commands/0x0c/data/0x42.htm~%~%# GPIO pin number counting from 1 which you want to read the configuration for~%uint8 pin~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Mip3dmGpioStateRead-request)))
  "Returns full string definition for message of type 'Mip3dmGpioStateRead-request"
  (cl:format cl:nil "# Service definition for the MIP command https://files.microstrain.com/GQ7+User+Manual/external_content/dcp/Commands/0x0c/data/0x42.htm~%~%# GPIO pin number counting from 1 which you want to read the configuration for~%uint8 pin~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Mip3dmGpioStateRead-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Mip3dmGpioStateRead-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Mip3dmGpioStateRead-request
    (cl:cons ':pin (pin msg))
))
;//! \htmlinclude Mip3dmGpioStateRead-response.msg.html

(cl:defclass <Mip3dmGpioStateRead-response> (roslisp-msg-protocol:ros-message)
  ((pin
    :reader pin
    :initarg :pin
    :type cl:fixnum
    :initform 0)
   (state
    :reader state
    :initarg :state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Mip3dmGpioStateRead-response (<Mip3dmGpioStateRead-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Mip3dmGpioStateRead-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Mip3dmGpioStateRead-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name microstrain_inertial_msgs-srv:<Mip3dmGpioStateRead-response> is deprecated: use microstrain_inertial_msgs-srv:Mip3dmGpioStateRead-response instead.")))

(cl:ensure-generic-function 'pin-val :lambda-list '(m))
(cl:defmethod pin-val ((m <Mip3dmGpioStateRead-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-srv:pin-val is deprecated.  Use microstrain_inertial_msgs-srv:pin instead.")
  (pin m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <Mip3dmGpioStateRead-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-srv:state-val is deprecated.  Use microstrain_inertial_msgs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Mip3dmGpioStateRead-response>) ostream)
  "Serializes a message object of type '<Mip3dmGpioStateRead-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Mip3dmGpioStateRead-response>) istream)
  "Deserializes a message object of type '<Mip3dmGpioStateRead-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Mip3dmGpioStateRead-response>)))
  "Returns string type for a service object of type '<Mip3dmGpioStateRead-response>"
  "microstrain_inertial_msgs/Mip3dmGpioStateReadResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Mip3dmGpioStateRead-response)))
  "Returns string type for a service object of type 'Mip3dmGpioStateRead-response"
  "microstrain_inertial_msgs/Mip3dmGpioStateReadResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Mip3dmGpioStateRead-response>)))
  "Returns md5sum for a message object of type '<Mip3dmGpioStateRead-response>"
  "93f849169a0e8031b7d96348e252c870")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Mip3dmGpioStateRead-response)))
  "Returns md5sum for a message object of type 'Mip3dmGpioStateRead-response"
  "93f849169a0e8031b7d96348e252c870")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Mip3dmGpioStateRead-response>)))
  "Returns full string definition for message of type '<Mip3dmGpioStateRead-response>"
  (cl:format cl:nil "# GPIO pin number counting from 1. Cannot be 0.~%uint8 pin~%~%# The pin state~%bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Mip3dmGpioStateRead-response)))
  "Returns full string definition for message of type 'Mip3dmGpioStateRead-response"
  (cl:format cl:nil "# GPIO pin number counting from 1. Cannot be 0.~%uint8 pin~%~%# The pin state~%bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Mip3dmGpioStateRead-response>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Mip3dmGpioStateRead-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Mip3dmGpioStateRead-response
    (cl:cons ':pin (pin msg))
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Mip3dmGpioStateRead)))
  'Mip3dmGpioStateRead-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Mip3dmGpioStateRead)))
  'Mip3dmGpioStateRead-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Mip3dmGpioStateRead)))
  "Returns string type for a service object of type '<Mip3dmGpioStateRead>"
  "microstrain_inertial_msgs/Mip3dmGpioStateRead")