;; Auto-generated. Do not edit!


(when (boundp 'industrial_msgs::StartMotion)
  (if (not (find-package "INDUSTRIAL_MSGS"))
    (make-package "INDUSTRIAL_MSGS"))
  (shadow 'StartMotion (find-package "INDUSTRIAL_MSGS")))
(unless (find-package "INDUSTRIAL_MSGS::STARTMOTION")
  (make-package "INDUSTRIAL_MSGS::STARTMOTION"))
(unless (find-package "INDUSTRIAL_MSGS::STARTMOTIONREQUEST")
  (make-package "INDUSTRIAL_MSGS::STARTMOTIONREQUEST"))
(unless (find-package "INDUSTRIAL_MSGS::STARTMOTIONRESPONSE")
  (make-package "INDUSTRIAL_MSGS::STARTMOTIONRESPONSE"))

(in-package "ROS")





(defclass industrial_msgs::StartMotionRequest
  :super ros::object
  :slots ())

(defmethod industrial_msgs::StartMotionRequest
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

(defclass industrial_msgs::StartMotionResponse
  :super ros::object
  :slots (_code ))

(defmethod industrial_msgs::StartMotionResponse
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

(defclass industrial_msgs::StartMotion
  :super ros::object
  :slots ())

(setf (get industrial_msgs::StartMotion :md5sum-) "50b1f38f75f5677e5692f3b3e7e1ea48")
(setf (get industrial_msgs::StartMotion :datatype-) "industrial_msgs/StartMotion")
(setf (get industrial_msgs::StartMotion :request) industrial_msgs::StartMotionRequest)
(setf (get industrial_msgs::StartMotion :response) industrial_msgs::StartMotionResponse)

(defmethod industrial_msgs::StartMotionRequest
  (:response () (instance industrial_msgs::StartMotionResponse :init)))

(setf (get industrial_msgs::StartMotionRequest :md5sum-) "50b1f38f75f5677e5692f3b3e7e1ea48")
(setf (get industrial_msgs::StartMotionRequest :datatype-) "industrial_msgs/StartMotionRequest")
(setf (get industrial_msgs::StartMotionRequest :definition-)
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

(setf (get industrial_msgs::StartMotionResponse :md5sum-) "50b1f38f75f5677e5692f3b3e7e1ea48")
(setf (get industrial_msgs::StartMotionResponse :datatype-) "industrial_msgs/StartMotionResponse")
(setf (get industrial_msgs::StartMotionResponse :definition-)
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



(provide :industrial_msgs/StartMotion "50b1f38f75f5677e5692f3b3e7e1ea48")


