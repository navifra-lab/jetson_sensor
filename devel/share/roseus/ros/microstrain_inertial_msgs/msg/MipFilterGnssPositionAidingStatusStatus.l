;; Auto-generated. Do not edit!


(when (boundp 'microstrain_inertial_msgs::MipFilterGnssPositionAidingStatusStatus)
  (if (not (find-package "MICROSTRAIN_INERTIAL_MSGS"))
    (make-package "MICROSTRAIN_INERTIAL_MSGS"))
  (shadow 'MipFilterGnssPositionAidingStatusStatus (find-package "MICROSTRAIN_INERTIAL_MSGS")))
(unless (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERGNSSPOSITIONAIDINGSTATUSSTATUS")
  (make-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERGNSSPOSITIONAIDINGSTATUSSTATUS"))

(in-package "ROS")
;;//! \htmlinclude MipFilterGnssPositionAidingStatusStatus.msg.html


(defclass microstrain_inertial_msgs::MipFilterGnssPositionAidingStatusStatus
  :super ros::object
  :slots (_tight_coupling _differential _integer_fix _gps_l1 _gps_l2 _gps_l5 _glo_l1 _glo_l2 _gal_e1 _gal_e5 _gal_e6 _bei_b1 _bei_b2 _bei_b3 _no_fix _config_error ))

(defmethod microstrain_inertial_msgs::MipFilterGnssPositionAidingStatusStatus
  (:init
   (&key
    ((:tight_coupling __tight_coupling) nil)
    ((:differential __differential) nil)
    ((:integer_fix __integer_fix) nil)
    ((:gps_l1 __gps_l1) nil)
    ((:gps_l2 __gps_l2) nil)
    ((:gps_l5 __gps_l5) nil)
    ((:glo_l1 __glo_l1) nil)
    ((:glo_l2 __glo_l2) nil)
    ((:gal_e1 __gal_e1) nil)
    ((:gal_e5 __gal_e5) nil)
    ((:gal_e6 __gal_e6) nil)
    ((:bei_b1 __bei_b1) nil)
    ((:bei_b2 __bei_b2) nil)
    ((:bei_b3 __bei_b3) nil)
    ((:no_fix __no_fix) nil)
    ((:config_error __config_error) nil)
    )
   (send-super :init)
   (setq _tight_coupling __tight_coupling)
   (setq _differential __differential)
   (setq _integer_fix __integer_fix)
   (setq _gps_l1 __gps_l1)
   (setq _gps_l2 __gps_l2)
   (setq _gps_l5 __gps_l5)
   (setq _glo_l1 __glo_l1)
   (setq _glo_l2 __glo_l2)
   (setq _gal_e1 __gal_e1)
   (setq _gal_e5 __gal_e5)
   (setq _gal_e6 __gal_e6)
   (setq _bei_b1 __bei_b1)
   (setq _bei_b2 __bei_b2)
   (setq _bei_b3 __bei_b3)
   (setq _no_fix __no_fix)
   (setq _config_error __config_error)
   self)
  (:tight_coupling
   (&optional (__tight_coupling :null))
   (if (not (eq __tight_coupling :null)) (setq _tight_coupling __tight_coupling)) _tight_coupling)
  (:differential
   (&optional (__differential :null))
   (if (not (eq __differential :null)) (setq _differential __differential)) _differential)
  (:integer_fix
   (&optional (__integer_fix :null))
   (if (not (eq __integer_fix :null)) (setq _integer_fix __integer_fix)) _integer_fix)
  (:gps_l1
   (&optional (__gps_l1 :null))
   (if (not (eq __gps_l1 :null)) (setq _gps_l1 __gps_l1)) _gps_l1)
  (:gps_l2
   (&optional (__gps_l2 :null))
   (if (not (eq __gps_l2 :null)) (setq _gps_l2 __gps_l2)) _gps_l2)
  (:gps_l5
   (&optional (__gps_l5 :null))
   (if (not (eq __gps_l5 :null)) (setq _gps_l5 __gps_l5)) _gps_l5)
  (:glo_l1
   (&optional (__glo_l1 :null))
   (if (not (eq __glo_l1 :null)) (setq _glo_l1 __glo_l1)) _glo_l1)
  (:glo_l2
   (&optional (__glo_l2 :null))
   (if (not (eq __glo_l2 :null)) (setq _glo_l2 __glo_l2)) _glo_l2)
  (:gal_e1
   (&optional (__gal_e1 :null))
   (if (not (eq __gal_e1 :null)) (setq _gal_e1 __gal_e1)) _gal_e1)
  (:gal_e5
   (&optional (__gal_e5 :null))
   (if (not (eq __gal_e5 :null)) (setq _gal_e5 __gal_e5)) _gal_e5)
  (:gal_e6
   (&optional (__gal_e6 :null))
   (if (not (eq __gal_e6 :null)) (setq _gal_e6 __gal_e6)) _gal_e6)
  (:bei_b1
   (&optional (__bei_b1 :null))
   (if (not (eq __bei_b1 :null)) (setq _bei_b1 __bei_b1)) _bei_b1)
  (:bei_b2
   (&optional (__bei_b2 :null))
   (if (not (eq __bei_b2 :null)) (setq _bei_b2 __bei_b2)) _bei_b2)
  (:bei_b3
   (&optional (__bei_b3 :null))
   (if (not (eq __bei_b3 :null)) (setq _bei_b3 __bei_b3)) _bei_b3)
  (:no_fix
   (&optional (__no_fix :null))
   (if (not (eq __no_fix :null)) (setq _no_fix __no_fix)) _no_fix)
  (:config_error
   (&optional (__config_error :null))
   (if (not (eq __config_error :null)) (setq _config_error __config_error)) _config_error)
  (:serialization-length
   ()
   (+
    ;; bool _tight_coupling
    1
    ;; bool _differential
    1
    ;; bool _integer_fix
    1
    ;; bool _gps_l1
    1
    ;; bool _gps_l2
    1
    ;; bool _gps_l5
    1
    ;; bool _glo_l1
    1
    ;; bool _glo_l2
    1
    ;; bool _gal_e1
    1
    ;; bool _gal_e5
    1
    ;; bool _gal_e6
    1
    ;; bool _bei_b1
    1
    ;; bool _bei_b2
    1
    ;; bool _bei_b3
    1
    ;; bool _no_fix
    1
    ;; bool _config_error
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _tight_coupling
       (if _tight_coupling (write-byte -1 s) (write-byte 0 s))
     ;; bool _differential
       (if _differential (write-byte -1 s) (write-byte 0 s))
     ;; bool _integer_fix
       (if _integer_fix (write-byte -1 s) (write-byte 0 s))
     ;; bool _gps_l1
       (if _gps_l1 (write-byte -1 s) (write-byte 0 s))
     ;; bool _gps_l2
       (if _gps_l2 (write-byte -1 s) (write-byte 0 s))
     ;; bool _gps_l5
       (if _gps_l5 (write-byte -1 s) (write-byte 0 s))
     ;; bool _glo_l1
       (if _glo_l1 (write-byte -1 s) (write-byte 0 s))
     ;; bool _glo_l2
       (if _glo_l2 (write-byte -1 s) (write-byte 0 s))
     ;; bool _gal_e1
       (if _gal_e1 (write-byte -1 s) (write-byte 0 s))
     ;; bool _gal_e5
       (if _gal_e5 (write-byte -1 s) (write-byte 0 s))
     ;; bool _gal_e6
       (if _gal_e6 (write-byte -1 s) (write-byte 0 s))
     ;; bool _bei_b1
       (if _bei_b1 (write-byte -1 s) (write-byte 0 s))
     ;; bool _bei_b2
       (if _bei_b2 (write-byte -1 s) (write-byte 0 s))
     ;; bool _bei_b3
       (if _bei_b3 (write-byte -1 s) (write-byte 0 s))
     ;; bool _no_fix
       (if _no_fix (write-byte -1 s) (write-byte 0 s))
     ;; bool _config_error
       (if _config_error (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _tight_coupling
     (setq _tight_coupling (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _differential
     (setq _differential (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _integer_fix
     (setq _integer_fix (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _gps_l1
     (setq _gps_l1 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _gps_l2
     (setq _gps_l2 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _gps_l5
     (setq _gps_l5 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _glo_l1
     (setq _glo_l1 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _glo_l2
     (setq _glo_l2 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _gal_e1
     (setq _gal_e1 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _gal_e5
     (setq _gal_e5 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _gal_e6
     (setq _gal_e6 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _bei_b1
     (setq _bei_b1 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _bei_b2
     (setq _bei_b2 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _bei_b3
     (setq _bei_b3 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _no_fix
     (setq _no_fix (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _config_error
     (setq _config_error (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get microstrain_inertial_msgs::MipFilterGnssPositionAidingStatusStatus :md5sum-) "16a70154d04cba5f7c01e663ddb16c49")
(setf (get microstrain_inertial_msgs::MipFilterGnssPositionAidingStatusStatus :datatype-) "microstrain_inertial_msgs/MipFilterGnssPositionAidingStatusStatus")
(setf (get microstrain_inertial_msgs::MipFilterGnssPositionAidingStatusStatus :definition-)
      "# Message definition for the Status field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_gnss_pos_aid_status.htm?Highlight=gnss%20position%20aiding
#   Note: This message will never be published on it's own, only included in other messages.

bool tight_coupling  # If 1, the Kalman filter is processing raw range information from this GNSS module
bool differential    # If 1, the Kalman filter is processing RTK corrections from this GNSS module
bool integer_fix     # If 1, the Kalman filter has an RTK integer fix from this GNSS module, indicating the best position performance possible
bool gps_l1          # If 1, the Kalman filter is using GPS L1 measurements
bool gps_l2          # If 1, the Kalman filter is using GPS L2 measurements
bool gps_l5          # If 1, the Kalman filter is using GPS L5 measurements
bool glo_l1          # If 1, the Kalman filter is using GLONASS L1 measurements
bool glo_l2          # If 1, the Kalman filter is using GLONASS L2 measurements
bool gal_e1          # If 1, the Kalman filter is using Galileo E1 measurements
bool gal_e5          # If 1, the Kalman filter is using Galileo E5 measurements
bool gal_e6          # If 1, the Kalman filter is using Galileo E6 measurements
bool bei_b1          # If 1, the Kalman filter is using Beidou B1 measurements (not enabled on GQ7 currently)
bool bei_b2          # If 1, the Kalman filter is using Beidou B2 measurements (not enabled on GQ7 currently)
bool bei_b3          # If 1, the Kalman filter is using Beidou B3 measurements (not enabled on GQ7 currently)
bool no_fix          # If 1, this GNSS module is reporting no position fix
bool config_error    # If 1, there is likely an issue with the antenna offset for this GNSS module
")



(provide :microstrain_inertial_msgs/MipFilterGnssPositionAidingStatusStatus "16a70154d04cba5f7c01e663ddb16c49")


