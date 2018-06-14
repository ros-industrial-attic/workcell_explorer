;; Auto-generated. Do not edit!


(when (boundp 'industrial_msgs::SetRemoteLoggerLevel)
  (if (not (find-package "INDUSTRIAL_MSGS"))
    (make-package "INDUSTRIAL_MSGS"))
  (shadow 'SetRemoteLoggerLevel (find-package "INDUSTRIAL_MSGS")))
(unless (find-package "INDUSTRIAL_MSGS::SETREMOTELOGGERLEVEL")
  (make-package "INDUSTRIAL_MSGS::SETREMOTELOGGERLEVEL"))
(unless (find-package "INDUSTRIAL_MSGS::SETREMOTELOGGERLEVELREQUEST")
  (make-package "INDUSTRIAL_MSGS::SETREMOTELOGGERLEVELREQUEST"))
(unless (find-package "INDUSTRIAL_MSGS::SETREMOTELOGGERLEVELRESPONSE")
  (make-package "INDUSTRIAL_MSGS::SETREMOTELOGGERLEVELRESPONSE"))

(in-package "ROS")





(defclass industrial_msgs::SetRemoteLoggerLevelRequest
  :super ros::object
  :slots (_level ))

(defmethod industrial_msgs::SetRemoteLoggerLevelRequest
  (:init
   (&key
    ((:level __level) (instance industrial_msgs::DebugLevel :init))
    )
   (send-super :init)
   (setq _level __level)
   self)
  (:level
   (&rest __level)
   (if (keywordp (car __level))
       (send* _level __level)
     (progn
       (if __level (setq _level (car __level)))
       _level)))
  (:serialization-length
   ()
   (+
    ;; industrial_msgs/DebugLevel _level
    (send _level :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; industrial_msgs/DebugLevel _level
       (send _level :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; industrial_msgs/DebugLevel _level
     (send _level :deserialize buf ptr-) (incf ptr- (send _level :serialization-length))
   ;;
   self)
  )

(defclass industrial_msgs::SetRemoteLoggerLevelResponse
  :super ros::object
  :slots (_code ))

(defmethod industrial_msgs::SetRemoteLoggerLevelResponse
  (:init
   (&key
    ((:code __code) (instance industrial_msgs::ServiceReturnCode :init))
    )
   (send-super :init)
   (setq _code __code)
   self)
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
    ;; industrial_msgs/ServiceReturnCode _code
    (send _code :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; industrial_msgs/ServiceReturnCode _code
       (send _code :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; industrial_msgs/ServiceReturnCode _code
     (send _code :deserialize buf ptr-) (incf ptr- (send _code :serialization-length))
   ;;
   self)
  )

(defclass industrial_msgs::SetRemoteLoggerLevel
  :super ros::object
  :slots ())

(setf (get industrial_msgs::SetRemoteLoggerLevel :md5sum-) "4ae8385cb830c0d46129570c3394af54")
(setf (get industrial_msgs::SetRemoteLoggerLevel :datatype-) "industrial_msgs/SetRemoteLoggerLevel")
(setf (get industrial_msgs::SetRemoteLoggerLevel :request) industrial_msgs::SetRemoteLoggerLevelRequest)
(setf (get industrial_msgs::SetRemoteLoggerLevel :response) industrial_msgs::SetRemoteLoggerLevelResponse)

(defmethod industrial_msgs::SetRemoteLoggerLevelRequest
  (:response () (instance industrial_msgs::SetRemoteLoggerLevelResponse :init)))

(setf (get industrial_msgs::SetRemoteLoggerLevelRequest :md5sum-) "4ae8385cb830c0d46129570c3394af54")
(setf (get industrial_msgs::SetRemoteLoggerLevelRequest :datatype-) "industrial_msgs/SetRemoteLoggerLevelRequest")
(setf (get industrial_msgs::SetRemoteLoggerLevelRequest :definition-)
      "




industrial_msgs/DebugLevel level

================================================================================
MSG: industrial_msgs/DebugLevel
# Debug level message enumeration.  This may replicate some functionality that
# alreay exists in the ROS logger.
# TODO: Get more information on the ROS Logger.
uint8 val

uint8 DEBUG = 5
uint8 INFO = 4
uint8 WARN = 3
uint8 ERROR = 2
uint8 FATAL = 1
uint8 NONE = 0 
---
industrial_msgs/ServiceReturnCode code


================================================================================
MSG: industrial_msgs/ServiceReturnCode
# Service return codes for simple requests.  All ROS-Industrial service
# replies are required to have a return code indicating success or failure
# Specific return codes for different failure should be negative.
int8 val

int8 SUCCESS = 1
int8 FAILURE = -1

")

(setf (get industrial_msgs::SetRemoteLoggerLevelResponse :md5sum-) "4ae8385cb830c0d46129570c3394af54")
(setf (get industrial_msgs::SetRemoteLoggerLevelResponse :datatype-) "industrial_msgs/SetRemoteLoggerLevelResponse")
(setf (get industrial_msgs::SetRemoteLoggerLevelResponse :definition-)
      "




industrial_msgs/DebugLevel level

================================================================================
MSG: industrial_msgs/DebugLevel
# Debug level message enumeration.  This may replicate some functionality that
# alreay exists in the ROS logger.
# TODO: Get more information on the ROS Logger.
uint8 val

uint8 DEBUG = 5
uint8 INFO = 4
uint8 WARN = 3
uint8 ERROR = 2
uint8 FATAL = 1
uint8 NONE = 0 
---
industrial_msgs/ServiceReturnCode code


================================================================================
MSG: industrial_msgs/ServiceReturnCode
# Service return codes for simple requests.  All ROS-Industrial service
# replies are required to have a return code indicating success or failure
# Specific return codes for different failure should be negative.
int8 val

int8 SUCCESS = 1
int8 FAILURE = -1

")



(provide :industrial_msgs/SetRemoteLoggerLevel "4ae8385cb830c0d46129570c3394af54")


