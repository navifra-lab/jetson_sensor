; Auto-generated. Do not edit!


(cl:in-package microstrain_inertial_msgs-msg)


;//! \htmlinclude MipFilterGnssPositionAidingStatusStatus.msg.html

(cl:defclass <MipFilterGnssPositionAidingStatusStatus> (roslisp-msg-protocol:ros-message)
  ((tight_coupling
    :reader tight_coupling
    :initarg :tight_coupling
    :type cl:boolean
    :initform cl:nil)
   (differential
    :reader differential
    :initarg :differential
    :type cl:boolean
    :initform cl:nil)
   (integer_fix
    :reader integer_fix
    :initarg :integer_fix
    :type cl:boolean
    :initform cl:nil)
   (gps_l1
    :reader gps_l1
    :initarg :gps_l1
    :type cl:boolean
    :initform cl:nil)
   (gps_l2
    :reader gps_l2
    :initarg :gps_l2
    :type cl:boolean
    :initform cl:nil)
   (gps_l5
    :reader gps_l5
    :initarg :gps_l5
    :type cl:boolean
    :initform cl:nil)
   (glo_l1
    :reader glo_l1
    :initarg :glo_l1
    :type cl:boolean
    :initform cl:nil)
   (glo_l2
    :reader glo_l2
    :initarg :glo_l2
    :type cl:boolean
    :initform cl:nil)
   (gal_e1
    :reader gal_e1
    :initarg :gal_e1
    :type cl:boolean
    :initform cl:nil)
   (gal_e5
    :reader gal_e5
    :initarg :gal_e5
    :type cl:boolean
    :initform cl:nil)
   (gal_e6
    :reader gal_e6
    :initarg :gal_e6
    :type cl:boolean
    :initform cl:nil)
   (bei_b1
    :reader bei_b1
    :initarg :bei_b1
    :type cl:boolean
    :initform cl:nil)
   (bei_b2
    :reader bei_b2
    :initarg :bei_b2
    :type cl:boolean
    :initform cl:nil)
   (bei_b3
    :reader bei_b3
    :initarg :bei_b3
    :type cl:boolean
    :initform cl:nil)
   (no_fix
    :reader no_fix
    :initarg :no_fix
    :type cl:boolean
    :initform cl:nil)
   (config_error
    :reader config_error
    :initarg :config_error
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MipFilterGnssPositionAidingStatusStatus (<MipFilterGnssPositionAidingStatusStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MipFilterGnssPositionAidingStatusStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MipFilterGnssPositionAidingStatusStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name microstrain_inertial_msgs-msg:<MipFilterGnssPositionAidingStatusStatus> is deprecated: use microstrain_inertial_msgs-msg:MipFilterGnssPositionAidingStatusStatus instead.")))

(cl:ensure-generic-function 'tight_coupling-val :lambda-list '(m))
(cl:defmethod tight_coupling-val ((m <MipFilterGnssPositionAidingStatusStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:tight_coupling-val is deprecated.  Use microstrain_inertial_msgs-msg:tight_coupling instead.")
  (tight_coupling m))

(cl:ensure-generic-function 'differential-val :lambda-list '(m))
(cl:defmethod differential-val ((m <MipFilterGnssPositionAidingStatusStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:differential-val is deprecated.  Use microstrain_inertial_msgs-msg:differential instead.")
  (differential m))

(cl:ensure-generic-function 'integer_fix-val :lambda-list '(m))
(cl:defmethod integer_fix-val ((m <MipFilterGnssPositionAidingStatusStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:integer_fix-val is deprecated.  Use microstrain_inertial_msgs-msg:integer_fix instead.")
  (integer_fix m))

(cl:ensure-generic-function 'gps_l1-val :lambda-list '(m))
(cl:defmethod gps_l1-val ((m <MipFilterGnssPositionAidingStatusStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:gps_l1-val is deprecated.  Use microstrain_inertial_msgs-msg:gps_l1 instead.")
  (gps_l1 m))

(cl:ensure-generic-function 'gps_l2-val :lambda-list '(m))
(cl:defmethod gps_l2-val ((m <MipFilterGnssPositionAidingStatusStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:gps_l2-val is deprecated.  Use microstrain_inertial_msgs-msg:gps_l2 instead.")
  (gps_l2 m))

(cl:ensure-generic-function 'gps_l5-val :lambda-list '(m))
(cl:defmethod gps_l5-val ((m <MipFilterGnssPositionAidingStatusStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:gps_l5-val is deprecated.  Use microstrain_inertial_msgs-msg:gps_l5 instead.")
  (gps_l5 m))

(cl:ensure-generic-function 'glo_l1-val :lambda-list '(m))
(cl:defmethod glo_l1-val ((m <MipFilterGnssPositionAidingStatusStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:glo_l1-val is deprecated.  Use microstrain_inertial_msgs-msg:glo_l1 instead.")
  (glo_l1 m))

(cl:ensure-generic-function 'glo_l2-val :lambda-list '(m))
(cl:defmethod glo_l2-val ((m <MipFilterGnssPositionAidingStatusStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:glo_l2-val is deprecated.  Use microstrain_inertial_msgs-msg:glo_l2 instead.")
  (glo_l2 m))

(cl:ensure-generic-function 'gal_e1-val :lambda-list '(m))
(cl:defmethod gal_e1-val ((m <MipFilterGnssPositionAidingStatusStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:gal_e1-val is deprecated.  Use microstrain_inertial_msgs-msg:gal_e1 instead.")
  (gal_e1 m))

(cl:ensure-generic-function 'gal_e5-val :lambda-list '(m))
(cl:defmethod gal_e5-val ((m <MipFilterGnssPositionAidingStatusStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:gal_e5-val is deprecated.  Use microstrain_inertial_msgs-msg:gal_e5 instead.")
  (gal_e5 m))

(cl:ensure-generic-function 'gal_e6-val :lambda-list '(m))
(cl:defmethod gal_e6-val ((m <MipFilterGnssPositionAidingStatusStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:gal_e6-val is deprecated.  Use microstrain_inertial_msgs-msg:gal_e6 instead.")
  (gal_e6 m))

(cl:ensure-generic-function 'bei_b1-val :lambda-list '(m))
(cl:defmethod bei_b1-val ((m <MipFilterGnssPositionAidingStatusStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:bei_b1-val is deprecated.  Use microstrain_inertial_msgs-msg:bei_b1 instead.")
  (bei_b1 m))

(cl:ensure-generic-function 'bei_b2-val :lambda-list '(m))
(cl:defmethod bei_b2-val ((m <MipFilterGnssPositionAidingStatusStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:bei_b2-val is deprecated.  Use microstrain_inertial_msgs-msg:bei_b2 instead.")
  (bei_b2 m))

(cl:ensure-generic-function 'bei_b3-val :lambda-list '(m))
(cl:defmethod bei_b3-val ((m <MipFilterGnssPositionAidingStatusStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:bei_b3-val is deprecated.  Use microstrain_inertial_msgs-msg:bei_b3 instead.")
  (bei_b3 m))

(cl:ensure-generic-function 'no_fix-val :lambda-list '(m))
(cl:defmethod no_fix-val ((m <MipFilterGnssPositionAidingStatusStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:no_fix-val is deprecated.  Use microstrain_inertial_msgs-msg:no_fix instead.")
  (no_fix m))

(cl:ensure-generic-function 'config_error-val :lambda-list '(m))
(cl:defmethod config_error-val ((m <MipFilterGnssPositionAidingStatusStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:config_error-val is deprecated.  Use microstrain_inertial_msgs-msg:config_error instead.")
  (config_error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MipFilterGnssPositionAidingStatusStatus>) ostream)
  "Serializes a message object of type '<MipFilterGnssPositionAidingStatusStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'tight_coupling) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'differential) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'integer_fix) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gps_l1) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gps_l2) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gps_l5) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'glo_l1) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'glo_l2) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gal_e1) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gal_e5) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gal_e6) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bei_b1) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bei_b2) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bei_b3) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'no_fix) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'config_error) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MipFilterGnssPositionAidingStatusStatus>) istream)
  "Deserializes a message object of type '<MipFilterGnssPositionAidingStatusStatus>"
    (cl:setf (cl:slot-value msg 'tight_coupling) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'differential) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'integer_fix) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'gps_l1) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'gps_l2) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'gps_l5) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'glo_l1) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'glo_l2) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'gal_e1) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'gal_e5) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'gal_e6) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'bei_b1) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'bei_b2) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'bei_b3) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'no_fix) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'config_error) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MipFilterGnssPositionAidingStatusStatus>)))
  "Returns string type for a message object of type '<MipFilterGnssPositionAidingStatusStatus>"
  "microstrain_inertial_msgs/MipFilterGnssPositionAidingStatusStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MipFilterGnssPositionAidingStatusStatus)))
  "Returns string type for a message object of type 'MipFilterGnssPositionAidingStatusStatus"
  "microstrain_inertial_msgs/MipFilterGnssPositionAidingStatusStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MipFilterGnssPositionAidingStatusStatus>)))
  "Returns md5sum for a message object of type '<MipFilterGnssPositionAidingStatusStatus>"
  "16a70154d04cba5f7c01e663ddb16c49")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MipFilterGnssPositionAidingStatusStatus)))
  "Returns md5sum for a message object of type 'MipFilterGnssPositionAidingStatusStatus"
  "16a70154d04cba5f7c01e663ddb16c49")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MipFilterGnssPositionAidingStatusStatus>)))
  "Returns full string definition for message of type '<MipFilterGnssPositionAidingStatusStatus>"
  (cl:format cl:nil "# Message definition for the Status field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_gnss_pos_aid_status.htm?Highlight=gnss%20position%20aiding~%#   Note: This message will never be published on it's own, only included in other messages.~%~%bool tight_coupling  # If 1, the Kalman filter is processing raw range information from this GNSS module~%bool differential    # If 1, the Kalman filter is processing RTK corrections from this GNSS module~%bool integer_fix     # If 1, the Kalman filter has an RTK integer fix from this GNSS module, indicating the best position performance possible~%bool gps_l1          # If 1, the Kalman filter is using GPS L1 measurements~%bool gps_l2          # If 1, the Kalman filter is using GPS L2 measurements~%bool gps_l5          # If 1, the Kalman filter is using GPS L5 measurements~%bool glo_l1          # If 1, the Kalman filter is using GLONASS L1 measurements~%bool glo_l2          # If 1, the Kalman filter is using GLONASS L2 measurements~%bool gal_e1          # If 1, the Kalman filter is using Galileo E1 measurements~%bool gal_e5          # If 1, the Kalman filter is using Galileo E5 measurements~%bool gal_e6          # If 1, the Kalman filter is using Galileo E6 measurements~%bool bei_b1          # If 1, the Kalman filter is using Beidou B1 measurements (not enabled on GQ7 currently)~%bool bei_b2          # If 1, the Kalman filter is using Beidou B2 measurements (not enabled on GQ7 currently)~%bool bei_b3          # If 1, the Kalman filter is using Beidou B3 measurements (not enabled on GQ7 currently)~%bool no_fix          # If 1, this GNSS module is reporting no position fix~%bool config_error    # If 1, there is likely an issue with the antenna offset for this GNSS module~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MipFilterGnssPositionAidingStatusStatus)))
  "Returns full string definition for message of type 'MipFilterGnssPositionAidingStatusStatus"
  (cl:format cl:nil "# Message definition for the Status field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_gnss_pos_aid_status.htm?Highlight=gnss%20position%20aiding~%#   Note: This message will never be published on it's own, only included in other messages.~%~%bool tight_coupling  # If 1, the Kalman filter is processing raw range information from this GNSS module~%bool differential    # If 1, the Kalman filter is processing RTK corrections from this GNSS module~%bool integer_fix     # If 1, the Kalman filter has an RTK integer fix from this GNSS module, indicating the best position performance possible~%bool gps_l1          # If 1, the Kalman filter is using GPS L1 measurements~%bool gps_l2          # If 1, the Kalman filter is using GPS L2 measurements~%bool gps_l5          # If 1, the Kalman filter is using GPS L5 measurements~%bool glo_l1          # If 1, the Kalman filter is using GLONASS L1 measurements~%bool glo_l2          # If 1, the Kalman filter is using GLONASS L2 measurements~%bool gal_e1          # If 1, the Kalman filter is using Galileo E1 measurements~%bool gal_e5          # If 1, the Kalman filter is using Galileo E5 measurements~%bool gal_e6          # If 1, the Kalman filter is using Galileo E6 measurements~%bool bei_b1          # If 1, the Kalman filter is using Beidou B1 measurements (not enabled on GQ7 currently)~%bool bei_b2          # If 1, the Kalman filter is using Beidou B2 measurements (not enabled on GQ7 currently)~%bool bei_b3          # If 1, the Kalman filter is using Beidou B3 measurements (not enabled on GQ7 currently)~%bool no_fix          # If 1, this GNSS module is reporting no position fix~%bool config_error    # If 1, there is likely an issue with the antenna offset for this GNSS module~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MipFilterGnssPositionAidingStatusStatus>))
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
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MipFilterGnssPositionAidingStatusStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'MipFilterGnssPositionAidingStatusStatus
    (cl:cons ':tight_coupling (tight_coupling msg))
    (cl:cons ':differential (differential msg))
    (cl:cons ':integer_fix (integer_fix msg))
    (cl:cons ':gps_l1 (gps_l1 msg))
    (cl:cons ':gps_l2 (gps_l2 msg))
    (cl:cons ':gps_l5 (gps_l5 msg))
    (cl:cons ':glo_l1 (glo_l1 msg))
    (cl:cons ':glo_l2 (glo_l2 msg))
    (cl:cons ':gal_e1 (gal_e1 msg))
    (cl:cons ':gal_e5 (gal_e5 msg))
    (cl:cons ':gal_e6 (gal_e6 msg))
    (cl:cons ':bei_b1 (bei_b1 msg))
    (cl:cons ':bei_b2 (bei_b2 msg))
    (cl:cons ':bei_b3 (bei_b3 msg))
    (cl:cons ':no_fix (no_fix msg))
    (cl:cons ':config_error (config_error msg))
))
