;; Auto-generated. Do not edit!


(when (boundp 'industrial_msgs::ServiceReturnCode)
  (if (not (find-package "INDUSTRIAL_MSGS"))
    (make-package "INDUSTRIAL_MSGS"))
  (shadow 'ServiceReturnCode (find-package "INDUSTRIAL_MSGS")))
(unless (find-package "INDUSTRIAL_MSGS::SERVICERETURNCODE")
  (make-package "INDUSTRIAL_MSGS::SERVICERETURNCODE"))

(in-package "ROS")
;;//! \htmlinclude ServiceReturnCode.msg.html


(intern "*SUCCESS*" (find-package "INDUSTRIAL_MSGS::SERVICERETURNCODE"))
(shadow '*SUCCESS* (find-package "INDUSTRIAL_MSGS::SERVICERETURNCODE"))
(defconstant industrial_msgs::ServiceReturnCode::*SUCCESS* 1)
(intern "*FAILURE*" (find-package "INDUSTRIAL_MSGS::SERVICERETURNCODE"))
(shadow '*FAILURE* (find-package "INDUSTRIAL_MSGS::SERVICERETURNCODE"))
(defconstant industrial_msgs::ServiceReturnCode::*FAILURE* -1)
(defclass industrial_msgs::ServiceReturnCode
  :super ros::object
  :slots (_val ))

(defmethod industrial_msgs::ServiceReturnCode
  (:init
   (&key
    ((:val __val) 0)
    )
   (send-super :init)
   (setq _val (round __val))
   self)
  (:val
   (&optional __val)
   (if __val (setq _val __val)) _val)
  (:serialization-length
   ()
   (+
    ;; int8 _val
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _val
       (write-byte _val s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _val
     (setq _val (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _val 127) (setq _val (- _val 256)))
   ;;
   self)
  )

(setf (get industrial_msgs::ServiceReturnCode :md5sum-) "85a4e241266be66b1e1426b03083a412")
(setf (get industrial_msgs::ServiceReturnCode :datatype-) "industrial_msgs/ServiceReturnCode")
(setf (get industrial_msgs::ServiceReturnCode :definition-)
      "# Service return codes for simple requests.  All ROS-Industrial service
# replies are required to have a return code indicating success or failure
# Specific return codes for different failure should be negative.
int8 val

int8 SUCCESS = 1
int8 FAILURE = -1


")



(provide :industrial_msgs/ServiceReturnCode "85a4e241266be66b1e1426b03083a412")


