; Auto-generated. Do not edit!


(cl:in-package microstrain_inertial_msgs-msg)


;//! \htmlinclude MipGnssCorrectionsRtkCorrectionsStatusEpochStatus.msg.html

(cl:defclass <MipGnssCorrectionsRtkCorrectionsStatusEpochStatus> (roslisp-msg-protocol:ros-message)
  ((antenna_location_received
    :reader antenna_location_received
    :initarg :antenna_location_received
    :type cl:boolean
    :initform cl:nil)
   (antenna_description_received
    :reader antenna_description_received
    :initarg :antenna_description_received
    :type cl:boolean
    :initform cl:nil)
   (gps_received
    :reader gps_received
    :initarg :gps_received
    :type cl:boolean
    :initform cl:nil)
   (galileo_received
    :reader galileo_received
    :initarg :galileo_received
    :type cl:boolean
    :initform cl:nil)
   (glonass_received
    :reader glonass_received
    :initarg :glonass_received
    :type cl:boolean
    :initform cl:nil)
   (beidou_received
    :reader beidou_received
    :initarg :beidou_received
    :type cl:boolean
    :initform cl:nil)
   (using_gps_msm_messages
    :reader using_gps_msm_messages
    :initarg :using_gps_msm_messages
    :type cl:boolean
    :initform cl:nil)
   (using_glonass_msm_messages
    :reader using_glonass_msm_messages
    :initarg :using_glonass_msm_messages
    :type cl:boolean
    :initform cl:nil)
   (dongle_status_read_failed
    :reader dongle_status_read_failed
    :initarg :dongle_status_read_failed
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MipGnssCorrectionsRtkCorrectionsStatusEpochStatus (<MipGnssCorrectionsRtkCorrectionsStatusEpochStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MipGnssCorrectionsRtkCorrectionsStatusEpochStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MipGnssCorrectionsRtkCorrectionsStatusEpochStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name microstrain_inertial_msgs-msg:<MipGnssCorrectionsRtkCorrectionsStatusEpochStatus> is deprecated: use microstrain_inertial_msgs-msg:MipGnssCorrectionsRtkCorrectionsStatusEpochStatus instead.")))

(cl:ensure-generic-function 'antenna_location_received-val :lambda-list '(m))
(cl:defmethod antenna_location_received-val ((m <MipGnssCorrectionsRtkCorrectionsStatusEpochStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:antenna_location_received-val is deprecated.  Use microstrain_inertial_msgs-msg:antenna_location_received instead.")
  (antenna_location_received m))

(cl:ensure-generic-function 'antenna_description_received-val :lambda-list '(m))
(cl:defmethod antenna_description_received-val ((m <MipGnssCorrectionsRtkCorrectionsStatusEpochStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:antenna_description_received-val is deprecated.  Use microstrain_inertial_msgs-msg:antenna_description_received instead.")
  (antenna_description_received m))

(cl:ensure-generic-function 'gps_received-val :lambda-list '(m))
(cl:defmethod gps_received-val ((m <MipGnssCorrectionsRtkCorrectionsStatusEpochStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:gps_received-val is deprecated.  Use microstrain_inertial_msgs-msg:gps_received instead.")
  (gps_received m))

(cl:ensure-generic-function 'galileo_received-val :lambda-list '(m))
(cl:defmethod galileo_received-val ((m <MipGnssCorrectionsRtkCorrectionsStatusEpochStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:galileo_received-val is deprecated.  Use microstrain_inertial_msgs-msg:galileo_received instead.")
  (galileo_received m))

(cl:ensure-generic-function 'glonass_received-val :lambda-list '(m))
(cl:defmethod glonass_received-val ((m <MipGnssCorrectionsRtkCorrectionsStatusEpochStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:glonass_received-val is deprecated.  Use microstrain_inertial_msgs-msg:glonass_received instead.")
  (glonass_received m))

(cl:ensure-generic-function 'beidou_received-val :lambda-list '(m))
(cl:defmethod beidou_received-val ((m <MipGnssCorrectionsRtkCorrectionsStatusEpochStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:beidou_received-val is deprecated.  Use microstrain_inertial_msgs-msg:beidou_received instead.")
  (beidou_received m))

(cl:ensure-generic-function 'using_gps_msm_messages-val :lambda-list '(m))
(cl:defmethod using_gps_msm_messages-val ((m <MipGnssCorrectionsRtkCorrectionsStatusEpochStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:using_gps_msm_messages-val is deprecated.  Use microstrain_inertial_msgs-msg:using_gps_msm_messages instead.")
  (using_gps_msm_messages m))

(cl:ensure-generic-function 'using_glonass_msm_messages-val :lambda-list '(m))
(cl:defmethod using_glonass_msm_messages-val ((m <MipGnssCorrectionsRtkCorrectionsStatusEpochStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:using_glonass_msm_messages-val is deprecated.  Use microstrain_inertial_msgs-msg:using_glonass_msm_messages instead.")
  (using_glonass_msm_messages m))

(cl:ensure-generic-function 'dongle_status_read_failed-val :lambda-list '(m))
(cl:defmethod dongle_status_read_failed-val ((m <MipGnssCorrectionsRtkCorrectionsStatusEpochStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:dongle_status_read_failed-val is deprecated.  Use microstrain_inertial_msgs-msg:dongle_status_read_failed instead.")
  (dongle_status_read_failed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MipGnssCorrectionsRtkCorrectionsStatusEpochStatus>) ostream)
  "Serializes a message object of type '<MipGnssCorrectionsRtkCorrectionsStatusEpochStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'antenna_location_received) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'antenna_description_received) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gps_received) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'galileo_received) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'glonass_received) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'beidou_received) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'using_gps_msm_messages) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'using_glonass_msm_messages) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'dongle_status_read_failed) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MipGnssCorrectionsRtkCorrectionsStatusEpochStatus>) istream)
  "Deserializes a message object of type '<MipGnssCorrectionsRtkCorrectionsStatusEpochStatus>"
    (cl:setf (cl:slot-value msg 'antenna_location_received) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'antenna_description_received) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'gps_received) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'galileo_received) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'glonass_received) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'beidou_received) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'using_gps_msm_messages) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'using_glonass_msm_messages) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'dongle_status_read_failed) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MipGnssCorrectionsRtkCorrectionsStatusEpochStatus>)))
  "Returns string type for a message object of type '<MipGnssCorrectionsRtkCorrectionsStatusEpochStatus>"
  "microstrain_inertial_msgs/MipGnssCorrectionsRtkCorrectionsStatusEpochStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MipGnssCorrectionsRtkCorrectionsStatusEpochStatus)))
  "Returns string type for a message object of type 'MipGnssCorrectionsRtkCorrectionsStatusEpochStatus"
  "microstrain_inertial_msgs/MipGnssCorrectionsRtkCorrectionsStatusEpochStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MipGnssCorrectionsRtkCorrectionsStatusEpochStatus>)))
  "Returns md5sum for a message object of type '<MipGnssCorrectionsRtkCorrectionsStatusEpochStatus>"
  "88d715db92e6df1db097b1ff798927c2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MipGnssCorrectionsRtkCorrectionsStatusEpochStatus)))
  "Returns md5sum for a message object of type 'MipGnssCorrectionsRtkCorrectionsStatusEpochStatus"
  "88d715db92e6df1db097b1ff798927c2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MipGnssCorrectionsRtkCorrectionsStatusEpochStatus>)))
  "Returns full string definition for message of type '<MipGnssCorrectionsRtkCorrectionsStatusEpochStatus>"
  (cl:format cl:nil "# Message definition for the Epoch Status field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/gnss_corrections/data/mip_field_gnss_rtk_corrections_status.htm?Highlight=rtk%20status~%#   Note: This message will never be published on it's own, only included in other messages.~%~%bool antenna_location_received~%bool antenna_description_received~%bool gps_received~%bool galileo_received~%bool glonass_received~%bool beidou_received~%bool using_gps_msm_messages  # Using MSM messages for GPS corrections instead of RTCM messages 1001-1004~%bool using_glonass_msm_messages  # Using MSM messages for GLONASS corrections instead of RTCM messages 1009-1012~%bool dongle_status_read_failed  # A read of the dongle status was attempted, but failed~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MipGnssCorrectionsRtkCorrectionsStatusEpochStatus)))
  "Returns full string definition for message of type 'MipGnssCorrectionsRtkCorrectionsStatusEpochStatus"
  (cl:format cl:nil "# Message definition for the Epoch Status field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/gnss_corrections/data/mip_field_gnss_rtk_corrections_status.htm?Highlight=rtk%20status~%#   Note: This message will never be published on it's own, only included in other messages.~%~%bool antenna_location_received~%bool antenna_description_received~%bool gps_received~%bool galileo_received~%bool glonass_received~%bool beidou_received~%bool using_gps_msm_messages  # Using MSM messages for GPS corrections instead of RTCM messages 1001-1004~%bool using_glonass_msm_messages  # Using MSM messages for GLONASS corrections instead of RTCM messages 1009-1012~%bool dongle_status_read_failed  # A read of the dongle status was attempted, but failed~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MipGnssCorrectionsRtkCorrectionsStatusEpochStatus>))
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
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MipGnssCorrectionsRtkCorrectionsStatusEpochStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'MipGnssCorrectionsRtkCorrectionsStatusEpochStatus
    (cl:cons ':antenna_location_received (antenna_location_received msg))
    (cl:cons ':antenna_description_received (antenna_description_received msg))
    (cl:cons ':gps_received (gps_received msg))
    (cl:cons ':galileo_received (galileo_received msg))
    (cl:cons ':glonass_received (glonass_received msg))
    (cl:cons ':beidou_received (beidou_received msg))
    (cl:cons ':using_gps_msm_messages (using_gps_msm_messages msg))
    (cl:cons ':using_glonass_msm_messages (using_glonass_msm_messages msg))
    (cl:cons ':dongle_status_read_failed (dongle_status_read_failed msg))
))
