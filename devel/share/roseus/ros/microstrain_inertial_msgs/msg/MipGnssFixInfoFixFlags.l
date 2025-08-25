;; Auto-generated. Do not edit!


(when (boundp 'microstrain_inertial_msgs::MipGnssFixInfoFixFlags)
  (if (not (find-package "MICROSTRAIN_INERTIAL_MSGS"))
    (make-package "MICROSTRAIN_INERTIAL_MSGS"))
  (shadow 'MipGnssFixInfoFixFlags (find-package "MICROSTRAIN_INERTIAL_MSGS")))
(unless (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSFIXINFOFIXFLAGS")
  (make-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSFIXINFOFIXFLAGS"))

(in-package "ROS")
;;//! \htmlinclude MipGnssFixInfoFixFlags.msg.html


(defclass microstrain_inertial_msgs::MipGnssFixInfoFixFlags
  :super ros::object
  :slots (_sbas_used _dgnss_used ))

(defmethod microstrain_inertial_msgs::MipGnssFixInfoFixFlags
  (:init
   (&key
    ((:sbas_used __sbas_used) nil)
    ((:dgnss_used __dgnss_used) nil)
    )
   (send-super :init)
   (setq _sbas_used __sbas_used)
   (setq _dgnss_used __dgnss_used)
   self)
  (:sbas_used
   (&optional (__sbas_used :null))
   (if (not (eq __sbas_used :null)) (setq _sbas_used __sbas_used)) _sbas_used)
  (:dgnss_used
   (&optional (__dgnss_used :null))
   (if (not (eq __dgnss_used :null)) (setq _dgnss_used __dgnss_used)) _dgnss_used)
  (:serialization-length
   ()
   (+
    ;; bool _sbas_used
    1
    ;; bool _dgnss_used
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _sbas_used
       (if _sbas_used (write-byte -1 s) (write-byte 0 s))
     ;; bool _dgnss_used
       (if _dgnss_used (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _sbas_used
     (setq _sbas_used (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _dgnss_used
     (setq _dgnss_used (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get microstrain_inertial_msgs::MipGnssFixInfoFixFlags :md5sum-) "200751727401aacbfb01ffdee0995730")
(setf (get microstrain_inertial_msgs::MipGnssFixInfoFixFlags :datatype-) "microstrain_inertial_msgs/MipGnssFixInfoFixFlags")
(setf (get microstrain_inertial_msgs::MipGnssFixInfoFixFlags :definition-)
      "# Message definition for the Fix Type field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/gnss_recv_1/data/mip_field_gnss_fix_info.htm?Highlight=fix%20info
#   Note: This message will never be published on it's own, only included in other messages.

bool sbas_used
bool dgnss_used
")



(provide :microstrain_inertial_msgs/MipGnssFixInfoFixFlags "200751727401aacbfb01ffdee0995730")


