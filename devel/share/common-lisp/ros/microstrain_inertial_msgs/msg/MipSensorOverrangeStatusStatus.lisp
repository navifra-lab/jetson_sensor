; Auto-generated. Do not edit!


(cl:in-package microstrain_inertial_msgs-msg)


;//! \htmlinclude MipSensorOverrangeStatusStatus.msg.html

(cl:defclass <MipSensorOverrangeStatusStatus> (roslisp-msg-protocol:ros-message)
  ((accel_x
    :reader accel_x
    :initarg :accel_x
    :type cl:boolean
    :initform cl:nil)
   (accel_y
    :reader accel_y
    :initarg :accel_y
    :type cl:boolean
    :initform cl:nil)
   (accel_z
    :reader accel_z
    :initarg :accel_z
    :type cl:boolean
    :initform cl:nil)
   (gyro_x
    :reader gyro_x
    :initarg :gyro_x
    :type cl:boolean
    :initform cl:nil)
   (gyro_y
    :reader gyro_y
    :initarg :gyro_y
    :type cl:boolean
    :initform cl:nil)
   (gyro_z
    :reader gyro_z
    :initarg :gyro_z
    :type cl:boolean
    :initform cl:nil)
   (mag_x
    :reader mag_x
    :initarg :mag_x
    :type cl:boolean
    :initform cl:nil)
   (mag_y
    :reader mag_y
    :initarg :mag_y
    :type cl:boolean
    :initform cl:nil)
   (mag_z
    :reader mag_z
    :initarg :mag_z
    :type cl:boolean
    :initform cl:nil)
   (press
    :reader press
    :initarg :press
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MipSensorOverrangeStatusStatus (<MipSensorOverrangeStatusStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MipSensorOverrangeStatusStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MipSensorOverrangeStatusStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name microstrain_inertial_msgs-msg:<MipSensorOverrangeStatusStatus> is deprecated: use microstrain_inertial_msgs-msg:MipSensorOverrangeStatusStatus instead.")))

(cl:ensure-generic-function 'accel_x-val :lambda-list '(m))
(cl:defmethod accel_x-val ((m <MipSensorOverrangeStatusStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:accel_x-val is deprecated.  Use microstrain_inertial_msgs-msg:accel_x instead.")
  (accel_x m))

(cl:ensure-generic-function 'accel_y-val :lambda-list '(m))
(cl:defmethod accel_y-val ((m <MipSensorOverrangeStatusStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:accel_y-val is deprecated.  Use microstrain_inertial_msgs-msg:accel_y instead.")
  (accel_y m))

(cl:ensure-generic-function 'accel_z-val :lambda-list '(m))
(cl:defmethod accel_z-val ((m <MipSensorOverrangeStatusStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:accel_z-val is deprecated.  Use microstrain_inertial_msgs-msg:accel_z instead.")
  (accel_z m))

(cl:ensure-generic-function 'gyro_x-val :lambda-list '(m))
(cl:defmethod gyro_x-val ((m <MipSensorOverrangeStatusStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:gyro_x-val is deprecated.  Use microstrain_inertial_msgs-msg:gyro_x instead.")
  (gyro_x m))

(cl:ensure-generic-function 'gyro_y-val :lambda-list '(m))
(cl:defmethod gyro_y-val ((m <MipSensorOverrangeStatusStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:gyro_y-val is deprecated.  Use microstrain_inertial_msgs-msg:gyro_y instead.")
  (gyro_y m))

(cl:ensure-generic-function 'gyro_z-val :lambda-list '(m))
(cl:defmethod gyro_z-val ((m <MipSensorOverrangeStatusStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:gyro_z-val is deprecated.  Use microstrain_inertial_msgs-msg:gyro_z instead.")
  (gyro_z m))

(cl:ensure-generic-function 'mag_x-val :lambda-list '(m))
(cl:defmethod mag_x-val ((m <MipSensorOverrangeStatusStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:mag_x-val is deprecated.  Use microstrain_inertial_msgs-msg:mag_x instead.")
  (mag_x m))

(cl:ensure-generic-function 'mag_y-val :lambda-list '(m))
(cl:defmethod mag_y-val ((m <MipSensorOverrangeStatusStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:mag_y-val is deprecated.  Use microstrain_inertial_msgs-msg:mag_y instead.")
  (mag_y m))

(cl:ensure-generic-function 'mag_z-val :lambda-list '(m))
(cl:defmethod mag_z-val ((m <MipSensorOverrangeStatusStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:mag_z-val is deprecated.  Use microstrain_inertial_msgs-msg:mag_z instead.")
  (mag_z m))

(cl:ensure-generic-function 'press-val :lambda-list '(m))
(cl:defmethod press-val ((m <MipSensorOverrangeStatusStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:press-val is deprecated.  Use microstrain_inertial_msgs-msg:press instead.")
  (press m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MipSensorOverrangeStatusStatus>) ostream)
  "Serializes a message object of type '<MipSensorOverrangeStatusStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'accel_x) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'accel_y) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'accel_z) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gyro_x) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gyro_y) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gyro_z) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mag_x) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mag_y) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mag_z) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'press) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MipSensorOverrangeStatusStatus>) istream)
  "Deserializes a message object of type '<MipSensorOverrangeStatusStatus>"
    (cl:setf (cl:slot-value msg 'accel_x) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'accel_y) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'accel_z) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'gyro_x) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'gyro_y) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'gyro_z) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'mag_x) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'mag_y) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'mag_z) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'press) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MipSensorOverrangeStatusStatus>)))
  "Returns string type for a message object of type '<MipSensorOverrangeStatusStatus>"
  "microstrain_inertial_msgs/MipSensorOverrangeStatusStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MipSensorOverrangeStatusStatus)))
  "Returns string type for a message object of type 'MipSensorOverrangeStatusStatus"
  "microstrain_inertial_msgs/MipSensorOverrangeStatusStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MipSensorOverrangeStatusStatus>)))
  "Returns md5sum for a message object of type '<MipSensorOverrangeStatusStatus>"
  "0b343e6367e45b73c841c8255a4cfbba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MipSensorOverrangeStatusStatus)))
  "Returns md5sum for a message object of type 'MipSensorOverrangeStatusStatus"
  "0b343e6367e45b73c841c8255a4cfbba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MipSensorOverrangeStatusStatus>)))
  "Returns full string definition for message of type '<MipSensorOverrangeStatusStatus>"
  (cl:format cl:nil "# Message definition for the Status field of https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/sensor_data/data/mip_field_sensor_overrange_status.htm?Highlight=overrange~%#   Note: This message will never be published on it's own, only included in other messages.~%~%bool accel_x~%bool accel_y~%bool accel_z~%bool gyro_x~%bool gyro_y~%bool gyro_z~%bool mag_x~%bool mag_y~%bool mag_z~%bool press~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MipSensorOverrangeStatusStatus)))
  "Returns full string definition for message of type 'MipSensorOverrangeStatusStatus"
  (cl:format cl:nil "# Message definition for the Status field of https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/sensor_data/data/mip_field_sensor_overrange_status.htm?Highlight=overrange~%#   Note: This message will never be published on it's own, only included in other messages.~%~%bool accel_x~%bool accel_y~%bool accel_z~%bool gyro_x~%bool gyro_y~%bool gyro_z~%bool mag_x~%bool mag_y~%bool mag_z~%bool press~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MipSensorOverrangeStatusStatus>))
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
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MipSensorOverrangeStatusStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'MipSensorOverrangeStatusStatus
    (cl:cons ':accel_x (accel_x msg))
    (cl:cons ':accel_y (accel_y msg))
    (cl:cons ':accel_z (accel_z msg))
    (cl:cons ':gyro_x (gyro_x msg))
    (cl:cons ':gyro_y (gyro_y msg))
    (cl:cons ':gyro_z (gyro_z msg))
    (cl:cons ':mag_x (mag_x msg))
    (cl:cons ':mag_y (mag_y msg))
    (cl:cons ':mag_z (mag_z msg))
    (cl:cons ':press (press msg))
))
