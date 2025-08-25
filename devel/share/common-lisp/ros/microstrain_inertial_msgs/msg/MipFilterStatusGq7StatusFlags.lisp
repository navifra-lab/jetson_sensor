; Auto-generated. Do not edit!


(cl:in-package microstrain_inertial_msgs-msg)


;//! \htmlinclude MipFilterStatusGq7StatusFlags.msg.html

(cl:defclass <MipFilterStatusGq7StatusFlags> (roslisp-msg-protocol:ros-message)
  ((filter_condition
    :reader filter_condition
    :initarg :filter_condition
    :type cl:fixnum
    :initform 0)
   (roll_pitch_warning
    :reader roll_pitch_warning
    :initarg :roll_pitch_warning
    :type cl:boolean
    :initform cl:nil)
   (heading_warning
    :reader heading_warning
    :initarg :heading_warning
    :type cl:boolean
    :initform cl:nil)
   (position_warning
    :reader position_warning
    :initarg :position_warning
    :type cl:boolean
    :initform cl:nil)
   (velocity_warning
    :reader velocity_warning
    :initarg :velocity_warning
    :type cl:boolean
    :initform cl:nil)
   (imu_bias_warning
    :reader imu_bias_warning
    :initarg :imu_bias_warning
    :type cl:boolean
    :initform cl:nil)
   (gnss_clk_warning
    :reader gnss_clk_warning
    :initarg :gnss_clk_warning
    :type cl:boolean
    :initform cl:nil)
   (antenna_lever_arm_warning
    :reader antenna_lever_arm_warning
    :initarg :antenna_lever_arm_warning
    :type cl:boolean
    :initform cl:nil)
   (mounting_transform_warning
    :reader mounting_transform_warning
    :initarg :mounting_transform_warning
    :type cl:boolean
    :initform cl:nil)
   (time_sync_warning
    :reader time_sync_warning
    :initarg :time_sync_warning
    :type cl:boolean
    :initform cl:nil)
   (solution_error
    :reader solution_error
    :initarg :solution_error
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MipFilterStatusGq7StatusFlags (<MipFilterStatusGq7StatusFlags>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MipFilterStatusGq7StatusFlags>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MipFilterStatusGq7StatusFlags)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name microstrain_inertial_msgs-msg:<MipFilterStatusGq7StatusFlags> is deprecated: use microstrain_inertial_msgs-msg:MipFilterStatusGq7StatusFlags instead.")))

(cl:ensure-generic-function 'filter_condition-val :lambda-list '(m))
(cl:defmethod filter_condition-val ((m <MipFilterStatusGq7StatusFlags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:filter_condition-val is deprecated.  Use microstrain_inertial_msgs-msg:filter_condition instead.")
  (filter_condition m))

(cl:ensure-generic-function 'roll_pitch_warning-val :lambda-list '(m))
(cl:defmethod roll_pitch_warning-val ((m <MipFilterStatusGq7StatusFlags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:roll_pitch_warning-val is deprecated.  Use microstrain_inertial_msgs-msg:roll_pitch_warning instead.")
  (roll_pitch_warning m))

(cl:ensure-generic-function 'heading_warning-val :lambda-list '(m))
(cl:defmethod heading_warning-val ((m <MipFilterStatusGq7StatusFlags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:heading_warning-val is deprecated.  Use microstrain_inertial_msgs-msg:heading_warning instead.")
  (heading_warning m))

(cl:ensure-generic-function 'position_warning-val :lambda-list '(m))
(cl:defmethod position_warning-val ((m <MipFilterStatusGq7StatusFlags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:position_warning-val is deprecated.  Use microstrain_inertial_msgs-msg:position_warning instead.")
  (position_warning m))

(cl:ensure-generic-function 'velocity_warning-val :lambda-list '(m))
(cl:defmethod velocity_warning-val ((m <MipFilterStatusGq7StatusFlags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:velocity_warning-val is deprecated.  Use microstrain_inertial_msgs-msg:velocity_warning instead.")
  (velocity_warning m))

(cl:ensure-generic-function 'imu_bias_warning-val :lambda-list '(m))
(cl:defmethod imu_bias_warning-val ((m <MipFilterStatusGq7StatusFlags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:imu_bias_warning-val is deprecated.  Use microstrain_inertial_msgs-msg:imu_bias_warning instead.")
  (imu_bias_warning m))

(cl:ensure-generic-function 'gnss_clk_warning-val :lambda-list '(m))
(cl:defmethod gnss_clk_warning-val ((m <MipFilterStatusGq7StatusFlags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:gnss_clk_warning-val is deprecated.  Use microstrain_inertial_msgs-msg:gnss_clk_warning instead.")
  (gnss_clk_warning m))

(cl:ensure-generic-function 'antenna_lever_arm_warning-val :lambda-list '(m))
(cl:defmethod antenna_lever_arm_warning-val ((m <MipFilterStatusGq7StatusFlags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:antenna_lever_arm_warning-val is deprecated.  Use microstrain_inertial_msgs-msg:antenna_lever_arm_warning instead.")
  (antenna_lever_arm_warning m))

(cl:ensure-generic-function 'mounting_transform_warning-val :lambda-list '(m))
(cl:defmethod mounting_transform_warning-val ((m <MipFilterStatusGq7StatusFlags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:mounting_transform_warning-val is deprecated.  Use microstrain_inertial_msgs-msg:mounting_transform_warning instead.")
  (mounting_transform_warning m))

(cl:ensure-generic-function 'time_sync_warning-val :lambda-list '(m))
(cl:defmethod time_sync_warning-val ((m <MipFilterStatusGq7StatusFlags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:time_sync_warning-val is deprecated.  Use microstrain_inertial_msgs-msg:time_sync_warning instead.")
  (time_sync_warning m))

(cl:ensure-generic-function 'solution_error-val :lambda-list '(m))
(cl:defmethod solution_error-val ((m <MipFilterStatusGq7StatusFlags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:solution_error-val is deprecated.  Use microstrain_inertial_msgs-msg:solution_error instead.")
  (solution_error m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MipFilterStatusGq7StatusFlags>)))
    "Constants for message type '<MipFilterStatusGq7StatusFlags>"
  '((:FILTER_CONDITION_STABLE . 1)
    (:FILTER_CONDITION_CONVERGING . 2)
    (:FILTER_CONDITION_UNSTABLE . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MipFilterStatusGq7StatusFlags)))
    "Constants for message type 'MipFilterStatusGq7StatusFlags"
  '((:FILTER_CONDITION_STABLE . 1)
    (:FILTER_CONDITION_CONVERGING . 2)
    (:FILTER_CONDITION_UNSTABLE . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MipFilterStatusGq7StatusFlags>) ostream)
  "Serializes a message object of type '<MipFilterStatusGq7StatusFlags>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filter_condition)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'roll_pitch_warning) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'heading_warning) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'position_warning) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'velocity_warning) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'imu_bias_warning) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gnss_clk_warning) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'antenna_lever_arm_warning) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mounting_transform_warning) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'time_sync_warning) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'solution_error) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MipFilterStatusGq7StatusFlags>) istream)
  "Deserializes a message object of type '<MipFilterStatusGq7StatusFlags>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filter_condition)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'roll_pitch_warning) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'heading_warning) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'position_warning) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'velocity_warning) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'imu_bias_warning) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'gnss_clk_warning) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'antenna_lever_arm_warning) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'mounting_transform_warning) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'time_sync_warning) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'solution_error) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MipFilterStatusGq7StatusFlags>)))
  "Returns string type for a message object of type '<MipFilterStatusGq7StatusFlags>"
  "microstrain_inertial_msgs/MipFilterStatusGq7StatusFlags")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MipFilterStatusGq7StatusFlags)))
  "Returns string type for a message object of type 'MipFilterStatusGq7StatusFlags"
  "microstrain_inertial_msgs/MipFilterStatusGq7StatusFlags")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MipFilterStatusGq7StatusFlags>)))
  "Returns md5sum for a message object of type '<MipFilterStatusGq7StatusFlags>"
  "1db9853b9f08ade89304b0b0fc0f9df7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MipFilterStatusGq7StatusFlags)))
  "Returns md5sum for a message object of type 'MipFilterStatusGq7StatusFlags"
  "1db9853b9f08ade89304b0b0fc0f9df7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MipFilterStatusGq7StatusFlags>)))
  "Returns full string definition for message of type '<MipFilterStatusGq7StatusFlags>"
  (cl:format cl:nil "# Message definition for the Status Flags (GQ7, CV7, etc.) field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_status.htm?Highlight=filter%20status~%#   Note: This message will never be published on it's own, only included in other messages.~%~%uint8 filter_condition  # See FILTER_CONDITION_* enums for possible values~%bool  roll_pitch_warning~%bool  heading_warning~%bool  position_warning~%bool  velocity_warning~%bool  imu_bias_warning~%bool  gnss_clk_warning~%bool  antenna_lever_arm_warning~%bool  mounting_transform_warning~%bool  time_sync_warning  # No time synchronization pulse detected~%bool  solution_error  # This includes all bits between 12 and 15, if any of them are set there is a GQ7 solution error~%~%# Possible values for filter_condition when the connected device is a prospect device (GQ7, CV7, etc)~%uint8 FILTER_CONDITION_STABLE     = 1~%uint8 FILTER_CONDITION_CONVERGING = 2~%uint8 FILTER_CONDITION_UNSTABLE   = 3~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MipFilterStatusGq7StatusFlags)))
  "Returns full string definition for message of type 'MipFilterStatusGq7StatusFlags"
  (cl:format cl:nil "# Message definition for the Status Flags (GQ7, CV7, etc.) field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_status.htm?Highlight=filter%20status~%#   Note: This message will never be published on it's own, only included in other messages.~%~%uint8 filter_condition  # See FILTER_CONDITION_* enums for possible values~%bool  roll_pitch_warning~%bool  heading_warning~%bool  position_warning~%bool  velocity_warning~%bool  imu_bias_warning~%bool  gnss_clk_warning~%bool  antenna_lever_arm_warning~%bool  mounting_transform_warning~%bool  time_sync_warning  # No time synchronization pulse detected~%bool  solution_error  # This includes all bits between 12 and 15, if any of them are set there is a GQ7 solution error~%~%# Possible values for filter_condition when the connected device is a prospect device (GQ7, CV7, etc)~%uint8 FILTER_CONDITION_STABLE     = 1~%uint8 FILTER_CONDITION_CONVERGING = 2~%uint8 FILTER_CONDITION_UNSTABLE   = 3~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MipFilterStatusGq7StatusFlags>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MipFilterStatusGq7StatusFlags>))
  "Converts a ROS message object to a list"
  (cl:list 'MipFilterStatusGq7StatusFlags
    (cl:cons ':filter_condition (filter_condition msg))
    (cl:cons ':roll_pitch_warning (roll_pitch_warning msg))
    (cl:cons ':heading_warning (heading_warning msg))
    (cl:cons ':position_warning (position_warning msg))
    (cl:cons ':velocity_warning (velocity_warning msg))
    (cl:cons ':imu_bias_warning (imu_bias_warning msg))
    (cl:cons ':gnss_clk_warning (gnss_clk_warning msg))
    (cl:cons ':antenna_lever_arm_warning (antenna_lever_arm_warning msg))
    (cl:cons ':mounting_transform_warning (mounting_transform_warning msg))
    (cl:cons ':time_sync_warning (time_sync_warning msg))
    (cl:cons ':solution_error (solution_error msg))
))
