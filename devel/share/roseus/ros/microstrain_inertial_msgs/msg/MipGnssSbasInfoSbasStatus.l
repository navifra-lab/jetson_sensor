;; Auto-generated. Do not edit!


(when (boundp 'microstrain_inertial_msgs::MipGnssSbasInfoSbasStatus)
  (if (not (find-package "MICROSTRAIN_INERTIAL_MSGS"))
    (make-package "MICROSTRAIN_INERTIAL_MSGS"))
  (shadow 'MipGnssSbasInfoSbasStatus (find-package "MICROSTRAIN_INERTIAL_MSGS")))
(unless (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSSBASINFOSBASSTATUS")
  (make-package "MICROSTRAIN_INERTIAL_MSGS::MIPGNSSSBASINFOSBASSTATUS"))

(in-package "ROS")
;;//! \htmlinclude MipGnssSbasInfoSbasStatus.msg.html


(defclass microstrain_inertial_msgs::MipGnssSbasInfoSbasStatus
  :super ros::object
  :slots (_range_available _corrections_available _integrity_available _test_mode ))

(defmethod microstrain_inertial_msgs::MipGnssSbasInfoSbasStatus
  (:init
   (&key
    ((:range_available __range_available) nil)
    ((:corrections_available __corrections_available) nil)
    ((:integrity_available __integrity_available) nil)
    ((:test_mode __test_mode) nil)
    )
   (send-super :init)
   (setq _range_available __range_available)
   (setq _corrections_available __corrections_available)
   (setq _integrity_available __integrity_available)
   (setq _test_mode __test_mode)
   self)
  (:range_available
   (&optional (__range_available :null))
   (if (not (eq __range_available :null)) (setq _range_available __range_available)) _range_available)
  (:corrections_available
   (&optional (__corrections_available :null))
   (if (not (eq __corrections_available :null)) (setq _corrections_available __corrections_available)) _corrections_available)
  (:integrity_available
   (&optional (__integrity_available :null))
   (if (not (eq __integrity_available :null)) (setq _integrity_available __integrity_available)) _integrity_available)
  (:test_mode
   (&optional (__test_mode :null))
   (if (not (eq __test_mode :null)) (setq _test_mode __test_mode)) _test_mode)
  (:serialization-length
   ()
   (+
    ;; bool _range_available
    1
    ;; bool _corrections_available
    1
    ;; bool _integrity_available
    1
    ;; bool _test_mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _range_available
       (if _range_available (write-byte -1 s) (write-byte 0 s))
     ;; bool _corrections_available
       (if _corrections_available (write-byte -1 s) (write-byte 0 s))
     ;; bool _integrity_available
       (if _integrity_available (write-byte -1 s) (write-byte 0 s))
     ;; bool _test_mode
       (if _test_mode (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _range_available
     (setq _range_available (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _corrections_available
     (setq _corrections_available (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _integrity_available
     (setq _integrity_available (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _test_mode
     (setq _test_mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get microstrain_inertial_msgs::MipGnssSbasInfoSbasStatus :md5sum-) "d44b1dcf4b6c5470a42c909b93caefc4")
(setf (get microstrain_inertial_msgs::MipGnssSbasInfoSbasStatus :datatype-) "microstrain_inertial_msgs/MipGnssSbasInfoSbasStatus")
(setf (get microstrain_inertial_msgs::MipGnssSbasInfoSbasStatus :definition-)
      "# Message definition for the Sbas Status field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/gnss_recv_1/data/mip_field_gnss_sbas_info.htm?Highlight=sbas%20info
#   Note: This message will never be published on it's own, only included in other messages.

bool range_available
bool corrections_available
bool integrity_available
bool test_mode
")



(provide :microstrain_inertial_msgs/MipGnssSbasInfoSbasStatus "d44b1dcf4b6c5470a42c909b93caefc4")


