; Auto-generated. Do not edit!


(cl:in-package microstrain_inertial_msgs-srv)


;//! \htmlinclude MipBaseGetDeviceInformation-request.msg.html

(cl:defclass <MipBaseGetDeviceInformation-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass MipBaseGetDeviceInformation-request (<MipBaseGetDeviceInformation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MipBaseGetDeviceInformation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MipBaseGetDeviceInformation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name microstrain_inertial_msgs-srv:<MipBaseGetDeviceInformation-request> is deprecated: use microstrain_inertial_msgs-srv:MipBaseGetDeviceInformation-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MipBaseGetDeviceInformation-request>) ostream)
  "Serializes a message object of type '<MipBaseGetDeviceInformation-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MipBaseGetDeviceInformation-request>) istream)
  "Deserializes a message object of type '<MipBaseGetDeviceInformation-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MipBaseGetDeviceInformation-request>)))
  "Returns string type for a service object of type '<MipBaseGetDeviceInformation-request>"
  "microstrain_inertial_msgs/MipBaseGetDeviceInformationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MipBaseGetDeviceInformation-request)))
  "Returns string type for a service object of type 'MipBaseGetDeviceInformation-request"
  "microstrain_inertial_msgs/MipBaseGetDeviceInformationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MipBaseGetDeviceInformation-request>)))
  "Returns md5sum for a message object of type '<MipBaseGetDeviceInformation-request>"
  "2c655b109370cba7cdc7620bb1869aa5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MipBaseGetDeviceInformation-request)))
  "Returns md5sum for a message object of type 'MipBaseGetDeviceInformation-request"
  "2c655b109370cba7cdc7620bb1869aa5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MipBaseGetDeviceInformation-request>)))
  "Returns full string definition for message of type '<MipBaseGetDeviceInformation-request>"
  (cl:format cl:nil "# Service definition for the MIP command https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Commands/base_command/data/mip_cmd_base_get_device_info.htm~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MipBaseGetDeviceInformation-request)))
  "Returns full string definition for message of type 'MipBaseGetDeviceInformation-request"
  (cl:format cl:nil "# Service definition for the MIP command https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Commands/base_command/data/mip_cmd_base_get_device_info.htm~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MipBaseGetDeviceInformation-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MipBaseGetDeviceInformation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MipBaseGetDeviceInformation-request
))
;//! \htmlinclude MipBaseGetDeviceInformation-response.msg.html

(cl:defclass <MipBaseGetDeviceInformation-response> (roslisp-msg-protocol:ros-message)
  ((device_info
    :reader device_info
    :initarg :device_info
    :type microstrain_inertial_msgs-msg:MipBaseDeviceInfo
    :initform (cl:make-instance 'microstrain_inertial_msgs-msg:MipBaseDeviceInfo)))
)

(cl:defclass MipBaseGetDeviceInformation-response (<MipBaseGetDeviceInformation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MipBaseGetDeviceInformation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MipBaseGetDeviceInformation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name microstrain_inertial_msgs-srv:<MipBaseGetDeviceInformation-response> is deprecated: use microstrain_inertial_msgs-srv:MipBaseGetDeviceInformation-response instead.")))

(cl:ensure-generic-function 'device_info-val :lambda-list '(m))
(cl:defmethod device_info-val ((m <MipBaseGetDeviceInformation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-srv:device_info-val is deprecated.  Use microstrain_inertial_msgs-srv:device_info instead.")
  (device_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MipBaseGetDeviceInformation-response>) ostream)
  "Serializes a message object of type '<MipBaseGetDeviceInformation-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'device_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MipBaseGetDeviceInformation-response>) istream)
  "Deserializes a message object of type '<MipBaseGetDeviceInformation-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'device_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MipBaseGetDeviceInformation-response>)))
  "Returns string type for a service object of type '<MipBaseGetDeviceInformation-response>"
  "microstrain_inertial_msgs/MipBaseGetDeviceInformationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MipBaseGetDeviceInformation-response)))
  "Returns string type for a service object of type 'MipBaseGetDeviceInformation-response"
  "microstrain_inertial_msgs/MipBaseGetDeviceInformationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MipBaseGetDeviceInformation-response>)))
  "Returns md5sum for a message object of type '<MipBaseGetDeviceInformation-response>"
  "2c655b109370cba7cdc7620bb1869aa5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MipBaseGetDeviceInformation-response)))
  "Returns md5sum for a message object of type 'MipBaseGetDeviceInformation-response"
  "2c655b109370cba7cdc7620bb1869aa5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MipBaseGetDeviceInformation-response>)))
  "Returns full string definition for message of type '<MipBaseGetDeviceInformation-response>"
  (cl:format cl:nil "microstrain_inertial_msgs/MipBaseDeviceInfo device_info~%~%================================================================================~%MSG: microstrain_inertial_msgs/MipBaseDeviceInfo~%# Message definition for https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Commands/base_command/data/base_device_info.htm~%#   Note: This message will never be published on it's own, only included in other messages.~%string firmware_version  # String version of the firmware version on the device~%string model_name        # Model name (3DM-GQ7, 3DM-GX5, etc.)~%string model_number      # Model number (6284, 6285, etc.)~%string serial_number     # Serial number (6284.109766, 6285.13404, etc.)~%string lot_number        # Lot number~%string device_options    # Device options~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MipBaseGetDeviceInformation-response)))
  "Returns full string definition for message of type 'MipBaseGetDeviceInformation-response"
  (cl:format cl:nil "microstrain_inertial_msgs/MipBaseDeviceInfo device_info~%~%================================================================================~%MSG: microstrain_inertial_msgs/MipBaseDeviceInfo~%# Message definition for https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Commands/base_command/data/base_device_info.htm~%#   Note: This message will never be published on it's own, only included in other messages.~%string firmware_version  # String version of the firmware version on the device~%string model_name        # Model name (3DM-GQ7, 3DM-GX5, etc.)~%string model_number      # Model number (6284, 6285, etc.)~%string serial_number     # Serial number (6284.109766, 6285.13404, etc.)~%string lot_number        # Lot number~%string device_options    # Device options~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MipBaseGetDeviceInformation-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'device_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MipBaseGetDeviceInformation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MipBaseGetDeviceInformation-response
    (cl:cons ':device_info (device_info msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MipBaseGetDeviceInformation)))
  'MipBaseGetDeviceInformation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MipBaseGetDeviceInformation)))
  'MipBaseGetDeviceInformation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MipBaseGetDeviceInformation)))
  "Returns string type for a service object of type '<MipBaseGetDeviceInformation>"
  "microstrain_inertial_msgs/MipBaseGetDeviceInformation")