;; Auto-generated. Do not edit!


(when (boundp 'industrial_msgs::StopMotion)
  (if (not (find-package "INDUSTRIAL_MSGS"))
    (make-package "INDUSTRIAL_MSGS"))
  (shadow 'StopMotion (find-package "INDUSTRIAL_MSGS")))
(unless (find-package "INDUSTRIAL_MSGS::STOPMOTION")
  (make-package "INDUSTRIAL_MSGS::STOPMOTION"))
(unless (find-package "INDUSTRIAL_MSGS::STOPMOTIONREQUEST")
  (make-package "INDUSTRIAL_MSGS::STOPMOTIONREQUEST"))
(unless (find-package "INDUSTRIAL_MSGS::STOPMOTIONRESPONSE")
  (make-package "INDUSTRIAL_MSGS::STOPMOTIONRESPONSE"))

(in-package "ROS")





(defclass industrial_msgs::StopMotionRequest
  :super ros::object
  :slots ())

(defmethod industrial_msgs::StopMotionRequest
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

(defclass industrial_msgs::StopMotionResponse
  :super ros::object
  :slots (_code ))

(defmethod industrial_msgs::StopMotionResponse
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

(defclass industrial_msgs::StopMotion
  :super ros::object
  :slots ())

(setf (get industrial_msgs::StopMotion :md5sum-) "50b1f38f75f5677e5692f3b3e7e1ea48")
(setf (get industrial_msgs::StopMotion :datatype-) "industrial_msgs/StopMotion")
(setf (get industrial_msgs::StopMotion :request) industrial_msgs::StopMotionRequest)
(setf (get industrial_msgs::StopMotion :response) industrial_msgs::StopMotionResponse)

(defmethod industrial_msgs::StopMotionRequest
  (:response () (instance industrial_msgs::StopMotionResponse :init)))

(setf (get industrial_msgs::StopMotionRequest :md5sum-) "50b1f38f75f5677e5692f3b3e7e1ea48")
(setf (get industrial_msgs::StopMotionRequest :datatype-) "industrial_msgs/StopMotionRequest")
(setf (get industrial_msgs::StopMotionRequest :definition-)
      "


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

(setf (get industrial_msgs::StopMotionResponse :md5sum-) "50b1f38f75f5677e5692f3b3e7e1ea48")
(setf (get industrial_msgs::StopMotionResponse :datatype-) "industrial_msgs/StopMotionResponse")
(setf (get industrial_msgs::StopMotionResponse :definition-)
      "


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



(provide :industrial_msgs/StopMotion "50b1f38f75f5677e5692f3b3e7e1ea48")


