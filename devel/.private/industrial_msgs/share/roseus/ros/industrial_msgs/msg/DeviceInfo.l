;; Auto-generated. Do not edit!


(when (boundp 'industrial_msgs::DeviceInfo)
  (if (not (find-package "INDUSTRIAL_MSGS"))
    (make-package "INDUSTRIAL_MSGS"))
  (shadow 'DeviceInfo (find-package "INDUSTRIAL_MSGS")))
(unless (find-package "INDUSTRIAL_MSGS::DEVICEINFO")
  (make-package "INDUSTRIAL_MSGS::DEVICEINFO"))

(in-package "ROS")
;;//! \htmlinclude DeviceInfo.msg.html


(defclass industrial_msgs::DeviceInfo
  :super ros::object
  :slots (_model _serial_number _hw_version _sw_version _address ))

(defmethod industrial_msgs::DeviceInfo
  (:init
   (&key
    ((:model __model) "")
    ((:serial_number __serial_number) "")
    ((:hw_version __hw_version) "")
    ((:sw_version __sw_version) "")
    ((:address __address) "")
    )
   (send-super :init)
   (setq _model (string __model))
   (setq _serial_number (string __serial_number))
   (setq _hw_version (string __hw_version))
   (setq _sw_version (string __sw_version))
   (setq _address (string __address))
   self)
  (:model
   (&optional __model)
   (if __model (setq _model __model)) _model)
  (:serial_number
   (&optional __serial_number)
   (if __serial_number (setq _serial_number __serial_number)) _serial_number)
  (:hw_version
   (&optional __hw_version)
   (if __hw_version (setq _hw_version __hw_version)) _hw_version)
  (:sw_version
   (&optional __sw_version)
   (if __sw_version (setq _sw_version __sw_version)) _sw_version)
  (:address
   (&optional __address)
   (if __address (setq _address __address)) _address)
  (:serialization-length
   ()
   (+
    ;; string _model
    4 (length _model)
    ;; string _serial_number
    4 (length _serial_number)
    ;; string _hw_version
    4 (length _hw_version)
    ;; string _sw_version
    4 (length _sw_version)
    ;; string _address
    4 (length _address)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _model
       (write-long (length _model) s) (princ _model s)
     ;; string _serial_number
       (write-long (length _serial_number) s) (princ _serial_number s)
     ;; string _hw_version
       (write-long (length _hw_version) s) (princ _hw_version s)
     ;; string _sw_version
       (write-long (length _sw_version) s) (princ _sw_version s)
     ;; string _address
       (write-long (length _address) s) (princ _address s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _model
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _model (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _serial_number
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _serial_number (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _hw_version
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _hw_version (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _sw_version
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sw_version (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _address
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _address (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get industrial_msgs::DeviceInfo :md5sum-) "373ed7fa0fac92d443be9cd5198e80f0")
(setf (get industrial_msgs::DeviceInfo :datatype-) "industrial_msgs/DeviceInfo")
(setf (get industrial_msgs::DeviceInfo :definition-)
      "# Device info captures device agnostic information about a piece of hardware.
# This message is meant as a generic as possible.  Items that don't apply should
# be left blank.  This message is not meant to replace diagnostic messages, but
# rather provide a standard service message that can be used to populate standard
# components (like a GUI for example)

string model
string serial_number
string hw_version
string sw_version
string address

")



(provide :industrial_msgs/DeviceInfo "373ed7fa0fac92d443be9cd5198e80f0")


