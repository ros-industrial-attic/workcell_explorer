;; Auto-generated. Do not edit!


(when (boundp 'industrial_msgs::SetDrivePower)
  (if (not (find-package "INDUSTRIAL_MSGS"))
    (make-package "INDUSTRIAL_MSGS"))
  (shadow 'SetDrivePower (find-package "INDUSTRIAL_MSGS")))
(unless (find-package "INDUSTRIAL_MSGS::SETDRIVEPOWER")
  (make-package "INDUSTRIAL_MSGS::SETDRIVEPOWER"))
(unless (find-package "INDUSTRIAL_MSGS::SETDRIVEPOWERREQUEST")
  (make-package "INDUSTRIAL_MSGS::SETDRIVEPOWERREQUEST"))
(unless (find-package "INDUSTRIAL_MSGS::SETDRIVEPOWERRESPONSE")
  (make-package "INDUSTRIAL_MSGS::SETDRIVEPOWERRESPONSE"))

(in-package "ROS")





(defclass industrial_msgs::SetDrivePowerRequest
  :super ros::object
  :slots (_drive_power ))

(defmethod industrial_msgs::SetDrivePowerRequest
  (:init
   (&key
    ((:drive_power __drive_power) nil)
    )
   (send-super :init)
   (setq _drive_power __drive_power)
   self)
  (:drive_power
   (&optional __drive_power)
   (if __drive_power (setq _drive_power __drive_power)) _drive_power)
  (:serialization-length
   ()
   (+
    ;; bool _drive_power
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _drive_power
       (if _drive_power (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _drive_power
     (setq _drive_power (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass industrial_msgs::SetDrivePowerResponse
  :super ros::object
  :slots (_code ))

(defmethod industrial_msgs::SetDrivePowerResponse
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

(defclass industrial_msgs::SetDrivePower
  :super ros::object
  :slots ())

(setf (get industrial_msgs::SetDrivePower :md5sum-) "89dc29b38aedf0d168daa33da97de48a")
(setf (get industrial_msgs::SetDrivePower :datatype-) "industrial_msgs/SetDrivePower")
(setf (get industrial_msgs::SetDrivePower :request) industrial_msgs::SetDrivePowerRequest)
(setf (get industrial_msgs::SetDrivePower :response) industrial_msgs::SetDrivePowerResponse)

(defmethod industrial_msgs::SetDrivePowerRequest
  (:response () (instance industrial_msgs::SetDrivePowerResponse :init)))

(setf (get industrial_msgs::SetDrivePowerRequest :md5sum-) "89dc29b38aedf0d168daa33da97de48a")
(setf (get industrial_msgs::SetDrivePowerRequest :datatype-) "industrial_msgs/SetDrivePowerRequest")
(setf (get industrial_msgs::SetDrivePowerRequest :definition-)
      "



bool drive_power
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

(setf (get industrial_msgs::SetDrivePowerResponse :md5sum-) "89dc29b38aedf0d168daa33da97de48a")
(setf (get industrial_msgs::SetDrivePowerResponse :datatype-) "industrial_msgs/SetDrivePowerResponse")
(setf (get industrial_msgs::SetDrivePowerResponse :definition-)
      "



bool drive_power
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



(provide :industrial_msgs/SetDrivePower "89dc29b38aedf0d168daa33da97de48a")


