
(cl:in-package :asdf)

(defsystem "microstrain_inertial_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :microstrain_inertial_msgs-msg
)
  :components ((:file "_package")
    (:file "Mip3dmCaptureGyroBias" :depends-on ("_package_Mip3dmCaptureGyroBias"))
    (:file "_package_Mip3dmCaptureGyroBias" :depends-on ("_package"))
    (:file "Mip3dmGpioStateRead" :depends-on ("_package_Mip3dmGpioStateRead"))
    (:file "_package_Mip3dmGpioStateRead" :depends-on ("_package"))
    (:file "Mip3dmGpioStateWrite" :depends-on ("_package_Mip3dmGpioStateWrite"))
    (:file "_package_Mip3dmGpioStateWrite" :depends-on ("_package"))
    (:file "MipBaseGetDeviceInformation" :depends-on ("_package_MipBaseGetDeviceInformation"))
    (:file "_package_MipBaseGetDeviceInformation" :depends-on ("_package"))
    (:file "RawFileConfigRead" :depends-on ("_package_RawFileConfigRead"))
    (:file "_package_RawFileConfigRead" :depends-on ("_package"))
    (:file "RawFileConfigWrite" :depends-on ("_package_RawFileConfigWrite"))
    (:file "_package_RawFileConfigWrite" :depends-on ("_package"))
  ))