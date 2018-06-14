;; Auto-generated. Do not edit!


(when (boundp 'industrial_msgs::GetRobotInfo)
  (if (not (find-package "INDUSTRIAL_MSGS"))
    (make-package "INDUSTRIAL_MSGS"))
  (shadow 'GetRobotInfo (find-package "INDUSTRIAL_MSGS")))
(unless (find-package "INDUSTRIAL_MSGS::GETROBOTINFO")
  (make-package "INDUSTRIAL_MSGS::GETROBOTINFO"))
(unless (find-package "INDUSTRIAL_MSGS::GETROBOTINFOREQUEST")
  (make-package "INDUSTRIAL_MSGS::GETROBOTINFOREQUEST"))
(unless (find-package "INDUSTRIAL_MSGS::GETROBOTINFORESPONSE")
  (make-package "INDUSTRIAL_MSGS::GETROBOTINFORESPONSE"))

(in-package "ROS")





(defclass industrial_msgs::GetRobotInfoRequest
  :super ros::object
  :slots ())

(defmethod industrial_msgs::GetRobotInfoRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass industrial_msgs::GetRobotInfoResponse
  :super ros::object
  :slots (_controller _robots _code ))

(defmethod industrial_msgs::GetRobotInfoResponse
  (:init
   (&key
    ((:controller __controller) (instance industrial_msgs::DeviceInfo :init))
    ((:robots __robots) (let (r) (dotimes (i 0) (push (instance industrial_msgs::DeviceInfo :init) r)) r))
    ((:code __code) (instance industrial_msgs::ServiceReturnCode :init))
    )
   (send-super :init)
   (setq _controller __controller)
   (setq _robots __robots)
   (setq _code __code)
   self)
  (:controller
   (&rest __controller)
   (if (keywordp (car __controller))
       (send* _controller __controller)
     (progn
       (if __controller (setq _controller (car __controller)))
       _controller)))
  (:robots
   (&rest __robots)
   (if (keywordp (car __robots))
       (send* _robots __robots)
     (progn
       (if __robots (setq _robots (car __robots)))
       _robots)))
  (:code
   (&rest __code)
   (if (keywordp (car __code))
       (send* _code __code)
     (progn
       (if __code (setq _code (car __code)))
       _code)))
  (:serialization-length
   ()
   (+
    ;; industrial_msgs/DeviceInfo _controller
    (send _controller :serialization-length)
    ;; industrial_msgs/DeviceInfo[] _robots
    (apply #'+ (send-all _robots :serialization-length)) 4
    ;; industrial_msgs/ServiceReturnCode _code
    (send _code :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; industrial_msgs/DeviceInfo _controller
       (send _controller :serialize s)
     ;; industrial_msgs/DeviceInfo[] _robots
     (write-long (length _robots) s)
     (dolist (elem _robots)
       (send elem :serialize s)
       )
     ;; industrial_msgs/ServiceReturnCode _code
       (send _code :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; industrial_msgs/DeviceInfo _controller
     (send _controller :deserialize buf ptr-) (incf ptr- (send _controller :serialization-length))
   ;; industrial_msgs/DeviceInfo[] _robots
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _robots (let (r) (dotimes (i n) (push (instance industrial_msgs::DeviceInfo :init) r)) r))
     (dolist (elem- _robots)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; industrial_msgs/ServiceReturnCode _code
     (send _code :deserialize buf ptr-) (incf ptr- (send _code :serialization-length))
   ;;
   self)
  )

(defclass industrial_msgs::GetRobotInfo
  :super ros::object
  :slots ())

(setf (get industrial_msgs::GetRobotInfo :md5sum-) "5db3230b3e61c85a320b999ffd7f3b3f")
(setf (get industrial_msgs::GetRobotInfo :datatype-) "industrial_msgs/GetRobotInfo")
(setf (get industrial_msgs::GetRobotInfo :request) industrial_msgs::GetRobotInfoRequest)
(setf (get industrial_msgs::GetRobotInfo :response) industrial_msgs::GetRobotInfoResponse)

(defmethod industrial_msgs::GetRobotInfoRequest
  (:response () (instance industrial_msgs::GetRobotInfoResponse :init)))

(setf (get industrial_msgs::GetRobotInfoRequest :md5sum-) "5db3230b3e61c85a320b999ffd7f3b3f")
(setf (get industrial_msgs::GetRobotInfoRequest :datatype-) "industrial_msgs/GetRobotInfoRequest")
(setf (get industrial_msgs::GetRobotInfoRequest :definition-)
      "


---
industrial_msgs/DeviceInfo controller
industrial_msgs/DeviceInfo[] robots
industrial_msgs/ServiceReturnCode code


================================================================================
MSG: industrial_msgs/DeviceInfo
# Device info captures device agnostic information about a piece of hardware.
# This message is meant as a generic as possible.  Items that don't apply should
# be left blank.  This message is not meant to replace diagnostic messages, but
# rather provide a standard service message that can be used to populate standard
# components (like a GUI for example)

string model
string serial_number
string hw_version
string sw_version
string address

================================================================================
MSG: industrial_msgs/ServiceReturnCode
# Service return codes for simple requests.  All ROS-Industrial service
# replies are required to have a return code indicating success or failure
# Specific return codes for different failure should be negative.
int8 val

int8 SUCCESS = 1
int8 FAILURE = -1

")

(setf (get industrial_msgs::GetRobotInfoResponse :md5sum-) "5db3230b3e61c85a320b999ffd7f3b3f")
(setf (get industrial_msgs::GetRobotInfoResponse :datatype-) "industrial_msgs/GetRobotInfoResponse")
(setf (get industrial_msgs::GetRobotInfoResponse :definition-)
      "


---
industrial_msgs/DeviceInfo controller
industrial_msgs/DeviceInfo[] robots
industrial_msgs/ServiceReturnCode code


================================================================================
MSG: industrial_msgs/DeviceInfo
# Device info captures device agnostic information about a piece of hardware.
# This message is meant as a generic as possible.  Items that don't apply should
# be left blank.  This message is not meant to replace diagnostic messages, but
# rather provide a standard service message that can be used to populate standard
# components (like a GUI for example)

string model
string serial_number
string hw_version
string sw_version
string address

================================================================================
MSG: industrial_msgs/ServiceReturnCode
# Service return codes for simple requests.  All ROS-Industrial service
# replies are required to have a return code indicating success or failure
# Specific return codes for different failure should be negative.
int8 val

int8 SUCCESS = 1
int8 FAILURE = -1

")



(provide :industrial_msgs/GetRobotInfo "5db3230b3e61c85a320b999ffd7f3b3f")


