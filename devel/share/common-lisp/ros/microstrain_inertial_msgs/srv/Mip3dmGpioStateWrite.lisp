; Auto-generated. Do not edit!


(cl:in-package microstrain_inertial_msgs-srv)


;//! \htmlinclude Mip3dmGpioStateWrite-request.msg.html

(cl:defclass <Mip3dmGpioStateWrite-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Mip3dmGpioStateWrite-request (<Mip3dmGpioStateWrite-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Mip3dmGpioStateWrite-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Mip3dmGpioStateWrite-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name microstrain_inertial_msgs-srv:<Mip3dmGpioStateWrite-request> is deprecated: use microstrain_inertial_msgs-srv:Mip3dmGpioStateWrite-request instead.")))

(cl:ensure-generic-function 'pin-val :lambda-list '(m))
(cl:defmethod pin-val ((m <Mip3dmGpioStateWrite-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-srv:pin-val is deprecated.  Use microstrain_inertial_msgs-srv:pin instead.")
  (pin m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <Mip3dmGpioStateWrite-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-srv:state-val is deprecated.  Use microstrain_inertial_msgs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Mip3dmGpioStateWrite-request>) ostream)
  "Serializes a message object of type '<Mip3dmGpioStateWrite-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Mip3dmGpioStateWrite-request>) istream)
  "Deserializes a message object of type '<Mip3dmGpioStateWrite-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Mip3dmGpioStateWrite-request>)))
  "Returns string type for a service object of type '<Mip3dmGpioStateWrite-request>"
  "microstrain_inertial_msgs/Mip3dmGpioStateWriteRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Mip3dmGpioStateWrite-request)))
  "Returns string type for a service object of type 'Mip3dmGpioStateWrite-request"
  "microstrain_inertial_msgs/Mip3dmGpioStateWriteRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Mip3dmGpioStateWrite-request>)))
  "Returns md5sum for a message object of type '<Mip3dmGpioStateWrite-request>"
  "83707be3fa18d2ffe57381ea034aa262")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Mip3dmGpioStateWrite-request)))
  "Returns md5sum for a message object of type 'Mip3dmGpioStateWrite-request"
  "83707be3fa18d2ffe57381ea034aa262")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Mip3dmGpioStateWrite-request>)))
  "Returns full string definition for message of type '<Mip3dmGpioStateWrite-request>"
  (cl:format cl:nil "# Service definition for the MIP command https://files.microstrain.com/GQ7+User+Manual/external_content/dcp/Commands/0x0c/data/0x42.htm~%~%# GPIO pin number counting from 1. Cannot be 0.~%uint8 pin~%~%# The pin state~%bool state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Mip3dmGpioStateWrite-request)))
  "Returns full string definition for message of type 'Mip3dmGpioStateWrite-request"
  (cl:format cl:nil "# Service definition for the MIP command https://files.microstrain.com/GQ7+User+Manual/external_content/dcp/Commands/0x0c/data/0x42.htm~%~%# GPIO pin number counting from 1. Cannot be 0.~%uint8 pin~%~%# The pin state~%bool state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Mip3dmGpioStateWrite-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Mip3dmGpioStateWrite-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Mip3dmGpioStateWrite-request
    (cl:cons ':pin (pin msg))
    (cl:cons ':state (state msg))
))
;//! \htmlinclude Mip3dmGpioStateWrite-response.msg.html

(cl:defclass <Mip3dmGpioStateWrite-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Mip3dmGpioStateWrite-response (<Mip3dmGpioStateWrite-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Mip3dmGpioStateWrite-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Mip3dmGpioStateWrite-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name microstrain_inertial_msgs-srv:<Mip3dmGpioStateWrite-response> is deprecated: use microstrain_inertial_msgs-srv:Mip3dmGpioStateWrite-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Mip3dmGpioStateWrite-response>) ostream)
  "Serializes a message object of type '<Mip3dmGpioStateWrite-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Mip3dmGpioStateWrite-response>) istream)
  "Deserializes a message object of type '<Mip3dmGpioStateWrite-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Mip3dmGpioStateWrite-response>)))
  "Returns string type for a service object of type '<Mip3dmGpioStateWrite-response>"
  "microstrain_inertial_msgs/Mip3dmGpioStateWriteResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Mip3dmGpioStateWrite-response)))
  "Returns string type for a service object of type 'Mip3dmGpioStateWrite-response"
  "microstrain_inertial_msgs/Mip3dmGpioStateWriteResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Mip3dmGpioStateWrite-response>)))
  "Returns md5sum for a message object of type '<Mip3dmGpioStateWrite-response>"
  "83707be3fa18d2ffe57381ea034aa262")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Mip3dmGpioStateWrite-response)))
  "Returns md5sum for a message object of type 'Mip3dmGpioStateWrite-response"
  "83707be3fa18d2ffe57381ea034aa262")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Mip3dmGpioStateWrite-response>)))
  "Returns full string definition for message of type '<Mip3dmGpioStateWrite-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Mip3dmGpioStateWrite-response)))
  "Returns full string definition for message of type 'Mip3dmGpioStateWrite-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Mip3dmGpioStateWrite-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Mip3dmGpioStateWrite-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Mip3dmGpioStateWrite-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Mip3dmGpioStateWrite)))
  'Mip3dmGpioStateWrite-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Mip3dmGpioStateWrite)))
  'Mip3dmGpioStateWrite-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Mip3dmGpioStateWrite)))
  "Returns string type for a service object of type '<Mip3dmGpioStateWrite>"
  "microstrain_inertial_msgs/Mip3dmGpioStateWrite")