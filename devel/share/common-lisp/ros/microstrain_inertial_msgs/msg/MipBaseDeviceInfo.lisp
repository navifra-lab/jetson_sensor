; Auto-generated. Do not edit!


(cl:in-package microstrain_inertial_msgs-msg)


;//! \htmlinclude MipBaseDeviceInfo.msg.html

(cl:defclass <MipBaseDeviceInfo> (roslisp-msg-protocol:ros-message)
  ((firmware_version
    :reader firmware_version
    :initarg :firmware_version
    :type cl:string
    :initform "")
   (model_name
    :reader model_name
    :initarg :model_name
    :type cl:string
    :initform "")
   (model_number
    :reader model_number
    :initarg :model_number
    :type cl:string
    :initform "")
   (serial_number
    :reader serial_number
    :initarg :serial_number
    :type cl:string
    :initform "")
   (lot_number
    :reader lot_number
    :initarg :lot_number
    :type cl:string
    :initform "")
   (device_options
    :reader device_options
    :initarg :device_options
    :type cl:string
    :initform ""))
)

(cl:defclass MipBaseDeviceInfo (<MipBaseDeviceInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MipBaseDeviceInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MipBaseDeviceInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name microstrain_inertial_msgs-msg:<MipBaseDeviceInfo> is deprecated: use microstrain_inertial_msgs-msg:MipBaseDeviceInfo instead.")))

(cl:ensure-generic-function 'firmware_version-val :lambda-list '(m))
(cl:defmethod firmware_version-val ((m <MipBaseDeviceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:firmware_version-val is deprecated.  Use microstrain_inertial_msgs-msg:firmware_version instead.")
  (firmware_version m))

(cl:ensure-generic-function 'model_name-val :lambda-list '(m))
(cl:defmethod model_name-val ((m <MipBaseDeviceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:model_name-val is deprecated.  Use microstrain_inertial_msgs-msg:model_name instead.")
  (model_name m))

(cl:ensure-generic-function 'model_number-val :lambda-list '(m))
(cl:defmethod model_number-val ((m <MipBaseDeviceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:model_number-val is deprecated.  Use microstrain_inertial_msgs-msg:model_number instead.")
  (model_number m))

(cl:ensure-generic-function 'serial_number-val :lambda-list '(m))
(cl:defmethod serial_number-val ((m <MipBaseDeviceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:serial_number-val is deprecated.  Use microstrain_inertial_msgs-msg:serial_number instead.")
  (serial_number m))

(cl:ensure-generic-function 'lot_number-val :lambda-list '(m))
(cl:defmethod lot_number-val ((m <MipBaseDeviceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:lot_number-val is deprecated.  Use microstrain_inertial_msgs-msg:lot_number instead.")
  (lot_number m))

(cl:ensure-generic-function 'device_options-val :lambda-list '(m))
(cl:defmethod device_options-val ((m <MipBaseDeviceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:device_options-val is deprecated.  Use microstrain_inertial_msgs-msg:device_options instead.")
  (device_options m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MipBaseDeviceInfo>) ostream)
  "Serializes a message object of type '<MipBaseDeviceInfo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'firmware_version))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'firmware_version))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'model_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'model_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'model_number))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'model_number))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'serial_number))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'serial_number))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'lot_number))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'lot_number))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'device_options))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'device_options))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MipBaseDeviceInfo>) istream)
  "Deserializes a message object of type '<MipBaseDeviceInfo>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'firmware_version) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'firmware_version) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'model_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'model_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'model_number) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'model_number) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'serial_number) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'serial_number) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lot_number) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'lot_number) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'device_options) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'device_options) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MipBaseDeviceInfo>)))
  "Returns string type for a message object of type '<MipBaseDeviceInfo>"
  "microstrain_inertial_msgs/MipBaseDeviceInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MipBaseDeviceInfo)))
  "Returns string type for a message object of type 'MipBaseDeviceInfo"
  "microstrain_inertial_msgs/MipBaseDeviceInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MipBaseDeviceInfo>)))
  "Returns md5sum for a message object of type '<MipBaseDeviceInfo>"
  "df41d79ab6c7222345becf9da712892f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MipBaseDeviceInfo)))
  "Returns md5sum for a message object of type 'MipBaseDeviceInfo"
  "df41d79ab6c7222345becf9da712892f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MipBaseDeviceInfo>)))
  "Returns full string definition for message of type '<MipBaseDeviceInfo>"
  (cl:format cl:nil "# Message definition for https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Commands/base_command/data/base_device_info.htm~%#   Note: This message will never be published on it's own, only included in other messages.~%string firmware_version  # String version of the firmware version on the device~%string model_name        # Model name (3DM-GQ7, 3DM-GX5, etc.)~%string model_number      # Model number (6284, 6285, etc.)~%string serial_number     # Serial number (6284.109766, 6285.13404, etc.)~%string lot_number        # Lot number~%string device_options    # Device options~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MipBaseDeviceInfo)))
  "Returns full string definition for message of type 'MipBaseDeviceInfo"
  (cl:format cl:nil "# Message definition for https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Commands/base_command/data/base_device_info.htm~%#   Note: This message will never be published on it's own, only included in other messages.~%string firmware_version  # String version of the firmware version on the device~%string model_name        # Model name (3DM-GQ7, 3DM-GX5, etc.)~%string model_number      # Model number (6284, 6285, etc.)~%string serial_number     # Serial number (6284.109766, 6285.13404, etc.)~%string lot_number        # Lot number~%string device_options    # Device options~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MipBaseDeviceInfo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'firmware_version))
     4 (cl:length (cl:slot-value msg 'model_name))
     4 (cl:length (cl:slot-value msg 'model_number))
     4 (cl:length (cl:slot-value msg 'serial_number))
     4 (cl:length (cl:slot-value msg 'lot_number))
     4 (cl:length (cl:slot-value msg 'device_options))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MipBaseDeviceInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'MipBaseDeviceInfo
    (cl:cons ':firmware_version (firmware_version msg))
    (cl:cons ':model_name (model_name msg))
    (cl:cons ':model_number (model_number msg))
    (cl:cons ':serial_number (serial_number msg))
    (cl:cons ':lot_number (lot_number msg))
    (cl:cons ':device_options (device_options msg))
))
