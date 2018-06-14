;; Auto-generated. Do not edit!


(when (boundp 'industrial_msgs::RobotMode)
  (if (not (find-package "INDUSTRIAL_MSGS"))
    (make-package "INDUSTRIAL_MSGS"))
  (shadow 'RobotMode (find-package "INDUSTRIAL_MSGS")))
(unless (find-package "INDUSTRIAL_MSGS::ROBOTMODE")
  (make-package "INDUSTRIAL_MSGS::ROBOTMODE"))

(in-package "ROS")
;;//! \htmlinclude RobotMode.msg.html


(intern "*UNKNOWN*" (find-package "INDUSTRIAL_MSGS::ROBOTMODE"))
(shadow '*UNKNOWN* (find-package "INDUSTRIAL_MSGS::ROBOTMODE"))
(defconstant industrial_msgs::RobotMode::*UNKNOWN* -1)
(intern "*MANUAL*" (find-package "INDUSTRIAL_MSGS::ROBOTMODE"))
(shadow '*MANUAL* (find-package "INDUSTRIAL_MSGS::ROBOTMODE"))
(defconstant industrial_msgs::RobotMode::*MANUAL* 1)
(intern "*AUTO*" (find-package "INDUSTRIAL_MSGS::ROBOTMODE"))
(shadow '*AUTO* (find-package "INDUSTRIAL_MSGS::ROBOTMODE"))
(defconstant industrial_msgs::RobotMode::*AUTO* 2)
(defclass industrial_msgs::RobotMode
  :super ros::object
  :slots (_val ))

(defmethod industrial_msgs::RobotMode
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

(setf (get industrial_msgs::RobotMode :md5sum-) "24ac279e988b6b3db836e437e6ed1ba0")
(setf (get industrial_msgs::RobotMode :datatype-) "industrial_msgs/RobotMode")
(setf (get industrial_msgs::RobotMode :definition-)
      "# The Robot mode message encapsulates the mode/teach state of the robot
# Typically this is controlled by the pendant key switch, but not always

int8 val

# enumerated values
int8 UNKNOWN=-1                 # Unknown or unavailable         
int8 MANUAL=1 			 # Teach OR manual mode
int8 AUTO=2                     # Automatic mode


")



(provide :industrial_msgs/RobotMode "24ac279e988b6b3db836e437e6ed1ba0")


