; Auto-generated. Do not edit!


(cl:in-package microstrain_inertial_msgs-srv)


;//! \htmlinclude Mip3dmCaptureGyroBias-request.msg.html

(cl:defclass <Mip3dmCaptureGyroBias-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Mip3dmCaptureGyroBias-request (<Mip3dmCaptureGyroBias-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Mip3dmCaptureGyroBias-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Mip3dmCaptureGyroBias-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name microstrain_inertial_msgs-srv:<Mip3dmCaptureGyroBias-request> is deprecated: use microstrain_inertial_msgs-srv:Mip3dmCaptureGyroBias-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Mip3dmCaptureGyroBias-request>) ostream)
  "Serializes a message object of type '<Mip3dmCaptureGyroBias-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Mip3dmCaptureGyroBias-request>) istream)
  "Deserializes a message object of type '<Mip3dmCaptureGyroBias-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Mip3dmCaptureGyroBias-request>)))
  "Returns string type for a service object of type '<Mip3dmCaptureGyroBias-request>"
  "microstrain_inertial_msgs/Mip3dmCaptureGyroBiasRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Mip3dmCaptureGyroBias-request)))
  "Returns string type for a service object of type 'Mip3dmCaptureGyroBias-request"
  "microstrain_inertial_msgs/Mip3dmCaptureGyroBiasRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Mip3dmCaptureGyroBias-request>)))
  "Returns md5sum for a message object of type '<Mip3dmCaptureGyroBias-request>"
  "c3544fdea5e4e5d21daeac4669eef238")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Mip3dmCaptureGyroBias-request)))
  "Returns md5sum for a message object of type 'Mip3dmCaptureGyroBias-request"
  "c3544fdea5e4e5d21daeac4669eef238")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Mip3dmCaptureGyroBias-request>)))
  "Returns full string definition for message of type '<Mip3dmCaptureGyroBias-request>"
  (cl:format cl:nil "# Service definition for the MIP command https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Commands/3dm_command/data/mip_cmd_3dm_capture_gyro_bias.htm?Highlight=capture%20gyro%20bias~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Mip3dmCaptureGyroBias-request)))
  "Returns full string definition for message of type 'Mip3dmCaptureGyroBias-request"
  (cl:format cl:nil "# Service definition for the MIP command https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Commands/3dm_command/data/mip_cmd_3dm_capture_gyro_bias.htm?Highlight=capture%20gyro%20bias~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Mip3dmCaptureGyroBias-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Mip3dmCaptureGyroBias-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Mip3dmCaptureGyroBias-request
))
;//! \htmlinclude Mip3dmCaptureGyroBias-response.msg.html

(cl:defclass <Mip3dmCaptureGyroBias-response> (roslisp-msg-protocol:ros-message)
  ((bias
    :reader bias
    :initarg :bias
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Mip3dmCaptureGyroBias-response (<Mip3dmCaptureGyroBias-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Mip3dmCaptureGyroBias-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Mip3dmCaptureGyroBias-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name microstrain_inertial_msgs-srv:<Mip3dmCaptureGyroBias-response> is deprecated: use microstrain_inertial_msgs-srv:Mip3dmCaptureGyroBias-response instead.")))

(cl:ensure-generic-function 'bias-val :lambda-list '(m))
(cl:defmethod bias-val ((m <Mip3dmCaptureGyroBias-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-srv:bias-val is deprecated.  Use microstrain_inertial_msgs-srv:bias instead.")
  (bias m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Mip3dmCaptureGyroBias-response>) ostream)
  "Serializes a message object of type '<Mip3dmCaptureGyroBias-response>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'bias))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Mip3dmCaptureGyroBias-response>) istream)
  "Deserializes a message object of type '<Mip3dmCaptureGyroBias-response>"
  (cl:setf (cl:slot-value msg 'bias) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'bias)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Mip3dmCaptureGyroBias-response>)))
  "Returns string type for a service object of type '<Mip3dmCaptureGyroBias-response>"
  "microstrain_inertial_msgs/Mip3dmCaptureGyroBiasResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Mip3dmCaptureGyroBias-response)))
  "Returns string type for a service object of type 'Mip3dmCaptureGyroBias-response"
  "microstrain_inertial_msgs/Mip3dmCaptureGyroBiasResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Mip3dmCaptureGyroBias-response>)))
  "Returns md5sum for a message object of type '<Mip3dmCaptureGyroBias-response>"
  "c3544fdea5e4e5d21daeac4669eef238")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Mip3dmCaptureGyroBias-response)))
  "Returns md5sum for a message object of type 'Mip3dmCaptureGyroBias-response"
  "c3544fdea5e4e5d21daeac4669eef238")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Mip3dmCaptureGyroBias-response>)))
  "Returns full string definition for message of type '<Mip3dmCaptureGyroBias-response>"
  (cl:format cl:nil "float32[3] bias~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Mip3dmCaptureGyroBias-response)))
  "Returns full string definition for message of type 'Mip3dmCaptureGyroBias-response"
  (cl:format cl:nil "float32[3] bias~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Mip3dmCaptureGyroBias-response>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'bias) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Mip3dmCaptureGyroBias-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Mip3dmCaptureGyroBias-response
    (cl:cons ':bias (bias msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Mip3dmCaptureGyroBias)))
  'Mip3dmCaptureGyroBias-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Mip3dmCaptureGyroBias)))
  'Mip3dmCaptureGyroBias-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Mip3dmCaptureGyroBias)))
  "Returns string type for a service object of type '<Mip3dmCaptureGyroBias>"
  "microstrain_inertial_msgs/Mip3dmCaptureGyroBias")