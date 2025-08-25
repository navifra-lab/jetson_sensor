; Auto-generated. Do not edit!


(cl:in-package microstrain_inertial_msgs-srv)


;//! \htmlinclude RawFileConfigRead-request.msg.html

(cl:defclass <RawFileConfigRead-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass RawFileConfigRead-request (<RawFileConfigRead-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RawFileConfigRead-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RawFileConfigRead-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name microstrain_inertial_msgs-srv:<RawFileConfigRead-request> is deprecated: use microstrain_inertial_msgs-srv:RawFileConfigRead-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RawFileConfigRead-request>) ostream)
  "Serializes a message object of type '<RawFileConfigRead-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RawFileConfigRead-request>) istream)
  "Deserializes a message object of type '<RawFileConfigRead-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RawFileConfigRead-request>)))
  "Returns string type for a service object of type '<RawFileConfigRead-request>"
  "microstrain_inertial_msgs/RawFileConfigReadRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RawFileConfigRead-request)))
  "Returns string type for a service object of type 'RawFileConfigRead-request"
  "microstrain_inertial_msgs/RawFileConfigReadRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RawFileConfigRead-request>)))
  "Returns md5sum for a message object of type '<RawFileConfigRead-request>"
  "1983e7091dff1eb83e867fcdf514855d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RawFileConfigRead-request)))
  "Returns md5sum for a message object of type 'RawFileConfigRead-request"
  "1983e7091dff1eb83e867fcdf514855d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RawFileConfigRead-request>)))
  "Returns full string definition for message of type '<RawFileConfigRead-request>"
  (cl:format cl:nil "# Service to allow users to read the raw file collection config~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RawFileConfigRead-request)))
  "Returns full string definition for message of type 'RawFileConfigRead-request"
  (cl:format cl:nil "# Service to allow users to read the raw file collection config~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RawFileConfigRead-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RawFileConfigRead-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RawFileConfigRead-request
))
;//! \htmlinclude RawFileConfigRead-response.msg.html

(cl:defclass <RawFileConfigRead-response> (roslisp-msg-protocol:ros-message)
  ((enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil)
   (file_path
    :reader file_path
    :initarg :file_path
    :type cl:string
    :initform ""))
)

(cl:defclass RawFileConfigRead-response (<RawFileConfigRead-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RawFileConfigRead-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RawFileConfigRead-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name microstrain_inertial_msgs-srv:<RawFileConfigRead-response> is deprecated: use microstrain_inertial_msgs-srv:RawFileConfigRead-response instead.")))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <RawFileConfigRead-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-srv:enable-val is deprecated.  Use microstrain_inertial_msgs-srv:enable instead.")
  (enable m))

(cl:ensure-generic-function 'file_path-val :lambda-list '(m))
(cl:defmethod file_path-val ((m <RawFileConfigRead-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-srv:file_path-val is deprecated.  Use microstrain_inertial_msgs-srv:file_path instead.")
  (file_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RawFileConfigRead-response>) ostream)
  "Serializes a message object of type '<RawFileConfigRead-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'file_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'file_path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RawFileConfigRead-response>) istream)
  "Deserializes a message object of type '<RawFileConfigRead-response>"
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'file_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'file_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RawFileConfigRead-response>)))
  "Returns string type for a service object of type '<RawFileConfigRead-response>"
  "microstrain_inertial_msgs/RawFileConfigReadResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RawFileConfigRead-response)))
  "Returns string type for a service object of type 'RawFileConfigRead-response"
  "microstrain_inertial_msgs/RawFileConfigReadResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RawFileConfigRead-response>)))
  "Returns md5sum for a message object of type '<RawFileConfigRead-response>"
  "1983e7091dff1eb83e867fcdf514855d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RawFileConfigRead-response)))
  "Returns md5sum for a message object of type 'RawFileConfigRead-response"
  "1983e7091dff1eb83e867fcdf514855d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RawFileConfigRead-response>)))
  "Returns full string definition for message of type '<RawFileConfigRead-response>"
  (cl:format cl:nil "# Whether or not raw file collection is enabled~%bool enable~%~%# Full path to the file we are recording the data to.~%string file_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RawFileConfigRead-response)))
  "Returns full string definition for message of type 'RawFileConfigRead-response"
  (cl:format cl:nil "# Whether or not raw file collection is enabled~%bool enable~%~%# Full path to the file we are recording the data to.~%string file_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RawFileConfigRead-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'file_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RawFileConfigRead-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RawFileConfigRead-response
    (cl:cons ':enable (enable msg))
    (cl:cons ':file_path (file_path msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RawFileConfigRead)))
  'RawFileConfigRead-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RawFileConfigRead)))
  'RawFileConfigRead-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RawFileConfigRead)))
  "Returns string type for a service object of type '<RawFileConfigRead>"
  "microstrain_inertial_msgs/RawFileConfigRead")