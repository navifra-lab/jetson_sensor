; Auto-generated. Do not edit!


(cl:in-package microstrain_inertial_msgs-msg)


;//! \htmlinclude MipGnssFixInfoFixFlags.msg.html

(cl:defclass <MipGnssFixInfoFixFlags> (roslisp-msg-protocol:ros-message)
  ((sbas_used
    :reader sbas_used
    :initarg :sbas_used
    :type cl:boolean
    :initform cl:nil)
   (dgnss_used
    :reader dgnss_used
    :initarg :dgnss_used
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MipGnssFixInfoFixFlags (<MipGnssFixInfoFixFlags>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MipGnssFixInfoFixFlags>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MipGnssFixInfoFixFlags)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name microstrain_inertial_msgs-msg:<MipGnssFixInfoFixFlags> is deprecated: use microstrain_inertial_msgs-msg:MipGnssFixInfoFixFlags instead.")))

(cl:ensure-generic-function 'sbas_used-val :lambda-list '(m))
(cl:defmethod sbas_used-val ((m <MipGnssFixInfoFixFlags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:sbas_used-val is deprecated.  Use microstrain_inertial_msgs-msg:sbas_used instead.")
  (sbas_used m))

(cl:ensure-generic-function 'dgnss_used-val :lambda-list '(m))
(cl:defmethod dgnss_used-val ((m <MipGnssFixInfoFixFlags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_inertial_msgs-msg:dgnss_used-val is deprecated.  Use microstrain_inertial_msgs-msg:dgnss_used instead.")
  (dgnss_used m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MipGnssFixInfoFixFlags>) ostream)
  "Serializes a message object of type '<MipGnssFixInfoFixFlags>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'sbas_used) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'dgnss_used) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MipGnssFixInfoFixFlags>) istream)
  "Deserializes a message object of type '<MipGnssFixInfoFixFlags>"
    (cl:setf (cl:slot-value msg 'sbas_used) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'dgnss_used) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MipGnssFixInfoFixFlags>)))
  "Returns string type for a message object of type '<MipGnssFixInfoFixFlags>"
  "microstrain_inertial_msgs/MipGnssFixInfoFixFlags")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MipGnssFixInfoFixFlags)))
  "Returns string type for a message object of type 'MipGnssFixInfoFixFlags"
  "microstrain_inertial_msgs/MipGnssFixInfoFixFlags")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MipGnssFixInfoFixFlags>)))
  "Returns md5sum for a message object of type '<MipGnssFixInfoFixFlags>"
  "200751727401aacbfb01ffdee0995730")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MipGnssFixInfoFixFlags)))
  "Returns md5sum for a message object of type 'MipGnssFixInfoFixFlags"
  "200751727401aacbfb01ffdee0995730")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MipGnssFixInfoFixFlags>)))
  "Returns full string definition for message of type '<MipGnssFixInfoFixFlags>"
  (cl:format cl:nil "# Message definition for the Fix Type field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/gnss_recv_1/data/mip_field_gnss_fix_info.htm?Highlight=fix%20info~%#   Note: This message will never be published on it's own, only included in other messages.~%~%bool sbas_used~%bool dgnss_used~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MipGnssFixInfoFixFlags)))
  "Returns full string definition for message of type 'MipGnssFixInfoFixFlags"
  (cl:format cl:nil "# Message definition for the Fix Type field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/gnss_recv_1/data/mip_field_gnss_fix_info.htm?Highlight=fix%20info~%#   Note: This message will never be published on it's own, only included in other messages.~%~%bool sbas_used~%bool dgnss_used~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MipGnssFixInfoFixFlags>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MipGnssFixInfoFixFlags>))
  "Converts a ROS message object to a list"
  (cl:list 'MipGnssFixInfoFixFlags
    (cl:cons ':sbas_used (sbas_used msg))
    (cl:cons ':dgnss_used (dgnss_used msg))
))
