;; Auto-generated. Do not edit!


(when (boundp 'microstrain_inertial_msgs::MipFilterGnssDualAntennaStatusStatusFlags)
  (if (not (find-package "MICROSTRAIN_INERTIAL_MSGS"))
    (make-package "MICROSTRAIN_INERTIAL_MSGS"))
  (shadow 'MipFilterGnssDualAntennaStatusStatusFlags (find-package "MICROSTRAIN_INERTIAL_MSGS")))
(unless (find-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERGNSSDUALANTENNASTATUSSTATUSFLAGS")
  (make-package "MICROSTRAIN_INERTIAL_MSGS::MIPFILTERGNSSDUALANTENNASTATUSSTATUSFLAGS"))

(in-package "ROS")
;;//! \htmlinclude MipFilterGnssDualAntennaStatusStatusFlags.msg.html


(defclass microstrain_inertial_msgs::MipFilterGnssDualAntennaStatusStatusFlags
  :super ros::object
  :slots (_rcv_1_data_valid _rcv_2_data_valid _antenna_offsets_valid ))

(defmethod microstrain_inertial_msgs::MipFilterGnssDualAntennaStatusStatusFlags
  (:init
   (&key
    ((:rcv_1_data_valid __rcv_1_data_valid) nil)
    ((:rcv_2_data_valid __rcv_2_data_valid) nil)
    ((:antenna_offsets_valid __antenna_offsets_valid) nil)
    )
   (send-super :init)
   (setq _rcv_1_data_valid __rcv_1_data_valid)
   (setq _rcv_2_data_valid __rcv_2_data_valid)
   (setq _antenna_offsets_valid __antenna_offsets_valid)
   self)
  (:rcv_1_data_valid
   (&optional (__rcv_1_data_valid :null))
   (if (not (eq __rcv_1_data_valid :null)) (setq _rcv_1_data_valid __rcv_1_data_valid)) _rcv_1_data_valid)
  (:rcv_2_data_valid
   (&optional (__rcv_2_data_valid :null))
   (if (not (eq __rcv_2_data_valid :null)) (setq _rcv_2_data_valid __rcv_2_data_valid)) _rcv_2_data_valid)
  (:antenna_offsets_valid
   (&optional (__antenna_offsets_valid :null))
   (if (not (eq __antenna_offsets_valid :null)) (setq _antenna_offsets_valid __antenna_offsets_valid)) _antenna_offsets_valid)
  (:serialization-length
   ()
   (+
    ;; bool _rcv_1_data_valid
    1
    ;; bool _rcv_2_data_valid
    1
    ;; bool _antenna_offsets_valid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _rcv_1_data_valid
       (if _rcv_1_data_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _rcv_2_data_valid
       (if _rcv_2_data_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _antenna_offsets_valid
       (if _antenna_offsets_valid (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _rcv_1_data_valid
     (setq _rcv_1_data_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _rcv_2_data_valid
     (setq _rcv_2_data_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _antenna_offsets_valid
     (setq _antenna_offsets_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get microstrain_inertial_msgs::MipFilterGnssDualAntennaStatusStatusFlags :md5sum-) "606778f7e3bc3fceb7877383568e2671")
(setf (get microstrain_inertial_msgs::MipFilterGnssDualAntennaStatusStatusFlags :datatype-) "microstrain_inertial_msgs/MipFilterGnssDualAntennaStatusStatusFlags")
(setf (get microstrain_inertial_msgs::MipFilterGnssDualAntennaStatusStatusFlags :definition-)
      "# Message definition for Status Flags field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_gnss_dual_antenna_status.htm?Highlight=dual%20antenna
#   Note: This message will never be published on it's own, only included in other messages.

bool rcv_1_data_valid
bool rcv_2_data_valid
bool antenna_offsets_valid
")



(provide :microstrain_inertial_msgs/MipFilterGnssDualAntennaStatusStatusFlags "606778f7e3bc3fceb7877383568e2671")


