; Auto-generated. Do not edit!


(cl:in-package microstrain_inertial_msgs-srv)


;//! \htmlinclude RawFileConfigWrite-request.msg.html

(cl:defclass <RawFileConfigWrite-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass RawFileConfigWrite-request (<RawFileConfigWrite-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RawFileConfigWrite-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RawFileConfigWrite-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name microstrain_inertial_msgs-srv:<RawFileConfigWrite-request> is deprecated: use microstrain_inertial_msgs-srv:RawFileConfigWrite-request instead.")))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <RawFileConfigWrite-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-srv:enable-val is deprecated.  Use microstrain_inertial_msgs-srv:enable instead.")
  (enable m))

(cl:ensure-generic-function 'file_path-val :lambda-list '(m))
(cl:defmethod file_path-val ((m <RawFileConfigWrite-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-srv:file_path-val is deprecated.  Use microstrain_inertial_msgs-srv:file_path instead.")
  (file_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RawFileConfigWrite-request>) ostream)
  "Serializes a message object of type '<RawFileConfigWrite-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'file_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'file_path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RawFileConfigWrite-request>) istream)
  "Deserializes a message object of type '<RawFileConfigWrite-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RawFileConfigWrite-request>)))
  "Returns string type for a service object of type '<RawFileConfigWrite-request>"
  "microstrain_inertial_msgs/RawFileConfigWriteRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RawFileConfigWrite-request)))
  "Returns string type for a service object of type 'RawFileConfigWrite-request"
  "microstrain_inertial_msgs/RawFileConfigWriteRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RawFileConfigWrite-request>)))
  "Returns md5sum for a message object of type '<RawFileConfigWrite-request>"
  "1983e7091dff1eb83e867fcdf514855d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RawFileConfigWrite-request)))
  "Returns md5sum for a message object of type 'RawFileConfigWrite-request"
  "1983e7091dff1eb83e867fcdf514855d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RawFileConfigWrite-request>)))
  "Returns full string definition for message of type '<RawFileConfigWrite-request>"
  (cl:format cl:nil "# Service to allow users to configure the raw file collection at runtime~%~%# Whether or not to enable raw file collection.~%# If this is set to true after being set to false, we will start recording in the requested file.~%# If this is set to false after being set to true, we will stop recording whatever file we were already recording~%bool enable~%~%# Full path to the file we should record the data to. If set to empty, we will read configuration from the raw_file_directory parameter~%string file_path~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RawFileConfigWrite-request)))
  "Returns full string definition for message of type 'RawFileConfigWrite-request"
  (cl:format cl:nil "# Service to allow users to configure the raw file collection at runtime~%~%# Whether or not to enable raw file collection.~%# If this is set to true after being set to false, we will start recording in the requested file.~%# If this is set to false after being set to true, we will stop recording whatever file we were already recording~%bool enable~%~%# Full path to the file we should record the data to. If set to empty, we will read configuration from the raw_file_directory parameter~%string file_path~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RawFileConfigWrite-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'file_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RawFileConfigWrite-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RawFileConfigWrite-request
    (cl:cons ':enable (enable msg))
    (cl:cons ':file_path (file_path msg))
))
;//! \htmlinclude RawFileConfigWrite-response.msg.html

(cl:defclass <RawFileConfigWrite-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass RawFileConfigWrite-response (<RawFileConfigWrite-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RawFileConfigWrite-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RawFileConfigWrite-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name microstrain_inertial_msgs-srv:<RawFileConfigWrite-response> is deprecated: use microstrain_inertial_msgs-srv:RawFileConfigWrite-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RawFileConfigWrite-response>) ostream)
  "Serializes a message object of type '<RawFileConfigWrite-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RawFileConfigWrite-response>) istream)
  "Deserializes a message object of type '<RawFileConfigWrite-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RawFileConfigWrite-response>)))
  "Returns string type for a service object of type '<RawFileConfigWrite-response>"
  "microstrain_inertial_msgs/RawFileConfigWriteResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RawFileConfigWrite-response)))
  "Returns string type for a service object of type 'RawFileConfigWrite-response"
  "microstrain_inertial_msgs/RawFileConfigWriteResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RawFileConfigWrite-response>)))
  "Returns md5sum for a message object of type '<RawFileConfigWrite-response>"
  "1983e7091dff1eb83e867fcdf514855d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RawFileConfigWrite-response)))
  "Returns md5sum for a message object of type 'RawFileConfigWrite-response"
  "1983e7091dff1eb83e867fcdf514855d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RawFileConfigWrite-response>)))
  "Returns full string definition for message of type '<RawFileConfigWrite-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RawFileConfigWrite-response)))
  "Returns full string definition for message of type 'RawFileConfigWrite-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RawFileConfigWrite-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RawFileConfigWrite-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RawFileConfigWrite-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RawFileConfigWrite)))
  'RawFileConfigWrite-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RawFileConfigWrite)))
  'RawFileConfigWrite-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RawFileConfigWrite)))
  "Returns string type for a service object of type '<RawFileConfigWrite>"
  "microstrain_inertial_msgs/RawFileConfigWrite")