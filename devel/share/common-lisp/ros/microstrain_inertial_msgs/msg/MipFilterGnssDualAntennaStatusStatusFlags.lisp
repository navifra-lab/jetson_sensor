; Auto-generated. Do not edit!


(cl:in-package microstrain_inertial_msgs-msg)


;//! \htmlinclude MipFilterGnssDualAntennaStatusStatusFlags.msg.html

(cl:defclass <MipFilterGnssDualAntennaStatusStatusFlags> (roslisp-msg-protocol:ros-message)
  ((rcv_1_data_valid
    :reader rcv_1_data_valid
    :initarg :rcv_1_data_valid
    :type cl:boolean
    :initform cl:nil)
   (rcv_2_data_valid
    :reader rcv_2_data_valid
    :initarg :rcv_2_data_valid
    :type cl:boolean
    :initform cl:nil)
   (antenna_offsets_valid
    :reader antenna_offsets_valid
    :initarg :antenna_offsets_valid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MipFilterGnssDualAntennaStatusStatusFlags (<MipFilterGnssDualAntennaStatusStatusFlags>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MipFilterGnssDualAntennaStatusStatusFlags>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MipFilterGnssDualAntennaStatusStatusFlags)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name microstrain_inertial_msgs-msg:<MipFilterGnssDualAntennaStatusStatusFlags> is deprecated: use microstrain_inertial_msgs-msg:MipFilterGnssDualAntennaStatusStatusFlags instead.")))

(cl:ensure-generic-function 'rcv_1_data_valid-val :lambda-list '(m))
(cl:defmethod rcv_1_data_valid-val ((m <MipFilterGnssDualAntennaStatusStatusFlags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:rcv_1_data_valid-val is deprecated.  Use microstrain_inertial_msgs-msg:rcv_1_data_valid instead.")
  (rcv_1_data_valid m))

(cl:ensure-generic-function 'rcv_2_data_valid-val :lambda-list '(m))
(cl:defmethod rcv_2_data_valid-val ((m <MipFilterGnssDualAntennaStatusStatusFlags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:rcv_2_data_valid-val is deprecated.  Use microstrain_inertial_msgs-msg:rcv_2_data_valid instead.")
  (rcv_2_data_valid m))

(cl:ensure-generic-function 'antenna_offsets_valid-val :lambda-list '(m))
(cl:defmethod antenna_offsets_valid-val ((m <MipFilterGnssDualAntennaStatusStatusFlags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:antenna_offsets_valid-val is deprecated.  Use microstrain_inertial_msgs-msg:antenna_offsets_valid instead.")
  (antenna_offsets_valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MipFilterGnssDualAntennaStatusStatusFlags>) ostream)
  "Serializes a message object of type '<MipFilterGnssDualAntennaStatusStatusFlags>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rcv_1_data_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rcv_2_data_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'antenna_offsets_valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MipFilterGnssDualAntennaStatusStatusFlags>) istream)
  "Deserializes a message object of type '<MipFilterGnssDualAntennaStatusStatusFlags>"
    (cl:setf (cl:slot-value msg 'rcv_1_data_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'rcv_2_data_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'antenna_offsets_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MipFilterGnssDualAntennaStatusStatusFlags>)))
  "Returns string type for a message object of type '<MipFilterGnssDualAntennaStatusStatusFlags>"
  "microstrain_inertial_msgs/MipFilterGnssDualAntennaStatusStatusFlags")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MipFilterGnssDualAntennaStatusStatusFlags)))
  "Returns string type for a message object of type 'MipFilterGnssDualAntennaStatusStatusFlags"
  "microstrain_inertial_msgs/MipFilterGnssDualAntennaStatusStatusFlags")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MipFilterGnssDualAntennaStatusStatusFlags>)))
  "Returns md5sum for a message object of type '<MipFilterGnssDualAntennaStatusStatusFlags>"
  "606778f7e3bc3fceb7877383568e2671")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MipFilterGnssDualAntennaStatusStatusFlags)))
  "Returns md5sum for a message object of type 'MipFilterGnssDualAntennaStatusStatusFlags"
  "606778f7e3bc3fceb7877383568e2671")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MipFilterGnssDualAntennaStatusStatusFlags>)))
  "Returns full string definition for message of type '<MipFilterGnssDualAntennaStatusStatusFlags>"
  (cl:format cl:nil "# Message definition for Status Flags field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_gnss_dual_antenna_status.htm?Highlight=dual%20antenna~%#   Note: This message will never be published on it's own, only included in other messages.~%~%bool rcv_1_data_valid~%bool rcv_2_data_valid~%bool antenna_offsets_valid~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MipFilterGnssDualAntennaStatusStatusFlags)))
  "Returns full string definition for message of type 'MipFilterGnssDualAntennaStatusStatusFlags"
  (cl:format cl:nil "# Message definition for Status Flags field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_gnss_dual_antenna_status.htm?Highlight=dual%20antenna~%#   Note: This message will never be published on it's own, only included in other messages.~%~%bool rcv_1_data_valid~%bool rcv_2_data_valid~%bool antenna_offsets_valid~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MipFilterGnssDualAntennaStatusStatusFlags>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MipFilterGnssDualAntennaStatusStatusFlags>))
  "Converts a ROS message object to a list"
  (cl:list 'MipFilterGnssDualAntennaStatusStatusFlags
    (cl:cons ':rcv_1_data_valid (rcv_1_data_valid msg))
    (cl:cons ':rcv_2_data_valid (rcv_2_data_valid msg))
    (cl:cons ':antenna_offsets_valid (antenna_offsets_valid msg))
))
