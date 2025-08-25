;; Auto-generated. Do not edit!


(when (boundp 'microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatusEpochStatus)
  (if (not (find-package "MICROSTRAIN_INERTIAL_MSGS"))
    (make-package "MICROSTRAIN_INERTIAL_MSGS"))
  (shadow 'MipGnssCorrectionsRtkCorrectionsStatusEpochStatus (find-package "MICROSTRAIN_INERTIAL_MSGS")))
(unless (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSCORRECTIONSRTKCORRECTIONSSTATUSEPOCHSTATUS")
  (make-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSCORRECTIONSRTKCORRECTIONSSTATUSEPOCHSTATUS"))

(in-package "ROS")
;;//! \htmlinclude MipGnssCorrectionsRtkCorrectionsStatusEpochStatus.msg.html


(defclass microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatusEpochStatus
  :super ros::object
  :slots (_antenna_location_received _antenna_description_received _gps_received _galileo_received _glonass_received _beidou_received _using_gps_msm_messages _using_glonass_msm_messages _dongle_status_read_failed ))

(defmethod microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatusEpochStatus
  (:init
   (&key
    ((:antenna_location_received __antenna_location_received) nil)
    ((:antenna_description_received __antenna_description_received) nil)
    ((:gps_received __gps_received) nil)
    ((:galileo_received __galileo_received) nil)
    ((:glonass_received __glonass_received) nil)
    ((:beidou_received __beidou_received) nil)
    ((:using_gps_msm_messages __using_gps_msm_messages) nil)
    ((:using_glonass_msm_messages __using_glonass_msm_messages) nil)
    ((:dongle_status_read_failed __dongle_status_read_failed) nil)
    )
   (send-super :init)
   (setq _antenna_location_received __antenna_location_received)
   (setq _antenna_description_received __antenna_description_received)
   (setq _gps_received __gps_received)
   (setq _galileo_received __galileo_received)
   (setq _glonass_received __glonass_received)
   (setq _beidou_received __beidou_received)
   (setq _using_gps_msm_messages __using_gps_msm_messages)
   (setq _using_glonass_msm_messages __using_glonass_msm_messages)
   (setq _dongle_status_read_failed __dongle_status_read_failed)
   self)
  (:antenna_location_received
   (&optional (__antenna_location_received :null))
   (if (not (eq __antenna_location_received :null)) (setq _antenna_location_received __antenna_location_received)) _antenna_location_received)
  (:antenna_description_received
   (&optional (__antenna_description_received :null))
   (if (not (eq __antenna_description_received :null)) (setq _antenna_description_received __antenna_description_received)) _antenna_description_received)
  (:gps_received
   (&optional (__gps_received :null))
   (if (not (eq __gps_received :null)) (setq _gps_received __gps_received)) _gps_received)
  (:galileo_received
   (&optional (__galileo_received :null))
   (if (not (eq __galileo_received :null)) (setq _galileo_received __galileo_received)) _galileo_received)
  (:glonass_received
   (&optional (__glonass_received :null))
   (if (not (eq __glonass_received :null)) (setq _glonass_received __glonass_received)) _glonass_received)
  (:beidou_received
   (&optional (__beidou_received :null))
   (if (not (eq __beidou_received :null)) (setq _beidou_received __beidou_received)) _beidou_received)
  (:using_gps_msm_messages
   (&optional (__using_gps_msm_messages :null))
   (if (not (eq __using_gps_msm_messages :null)) (setq _using_gps_msm_messages __using_gps_msm_messages)) _using_gps_msm_messages)
  (:using_glonass_msm_messages
   (&optional (__using_glonass_msm_messages :null))
   (if (not (eq __using_glonass_msm_messages :null)) (setq _using_glonass_msm_messages __using_glonass_msm_messages)) _using_glonass_msm_messages)
  (:dongle_status_read_failed
   (&optional (__dongle_status_read_failed :null))
   (if (not (eq __dongle_status_read_failed :null)) (setq _dongle_status_read_failed __dongle_status_read_failed)) _dongle_status_read_failed)
  (:serialization-length
   ()
   (+
    ;; bool _antenna_location_received
    1
    ;; bool _antenna_description_received
    1
    ;; bool _gps_received
    1
    ;; bool _galileo_received
    1
    ;; bool _glonass_received
    1
    ;; bool _beidou_received
    1
    ;; bool _using_gps_msm_messages
    1
    ;; bool _using_glonass_msm_messages
    1
    ;; bool _dongle_status_read_failed
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _antenna_location_received
       (if _antenna_location_received (write-byte -1 s) (write-byte 0 s))
     ;; bool _antenna_description_received
       (if _antenna_description_received (write-byte -1 s) (write-byte 0 s))
     ;; bool _gps_received
       (if _gps_received (write-byte -1 s) (write-byte 0 s))
     ;; bool _galileo_received
       (if _galileo_received (write-byte -1 s) (write-byte 0 s))
     ;; bool _glonass_received
       (if _glonass_received (write-byte -1 s) (write-byte 0 s))
     ;; bool _beidou_received
       (if _beidou_received (write-byte -1 s) (write-byte 0 s))
     ;; bool _using_gps_msm_messages
       (if _using_gps_msm_messages (write-byte -1 s) (write-byte 0 s))
     ;; bool _using_glonass_msm_messages
       (if _using_glonass_msm_messages (write-byte -1 s) (write-byte 0 s))
     ;; bool _dongle_status_read_failed
       (if _dongle_status_read_failed (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _antenna_location_received
     (setq _antenna_location_received (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _antenna_description_received
     (setq _antenna_description_received (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _gps_received
     (setq _gps_received (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _galileo_received
     (setq _galileo_received (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _glonass_received
     (setq _glonass_received (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _beidou_received
     (setq _beidou_received (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _using_gps_msm_messages
     (setq _using_gps_msm_messages (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _using_glonass_msm_messages
     (setq _using_glonass_msm_messages (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _dongle_status_read_failed
     (setq _dongle_status_read_failed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatusEpochStatus :md5sum-) "88d715db92e6df1db097b1ff798927c2")
(setf (get microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatusEpochStatus :datatype-) "microstrain_inertial_msgs/MipGnssCorrectionsRtkCorrectionsStatusEpochStatus")
(setf (get microstrain_inertial_msgs::MipGnssCorrectionsRtkCorrectionsStatusEpochStatus :definition-)
      "# Message definition for the Epoch Status field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/gnss_corrections/data/mip_field_gnss_rtk_corrections_status.htm?Highlight=rtk%20status
#   Note: This message will never be published on it's own, only included in other messages.

bool antenna_location_received
bool antenna_description_received
bool gps_received
bool galileo_received
bool glonass_received
bool beidou_received
bool using_gps_msm_messages  # Using MSM messages for GPS corrections instead of RTCM messages 1001-1004
bool using_glonass_msm_messages  # Using MSM messages for GLONASS corrections instead of RTCM messages 1009-1012
bool dongle_status_read_failed  # A read of the dongle status was attempted, but failed
")



(provide :microstrain_inertial_msgs/MipGnssCorrectionsRtkCorrectionsStatusEpochStatus "88d715db92e6df1db097b1ff798927c2")


