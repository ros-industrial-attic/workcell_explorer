;; Auto-generated. Do not edit!


(when (boundp 'industrial_msgs::DebugLevel)
  (if (not (find-package "INDUSTRIAL_MSGS"))
    (make-package "INDUSTRIAL_MSGS"))
  (shadow 'DebugLevel (find-package "INDUSTRIAL_MSGS")))
(unless (find-package "INDUSTRIAL_MSGS::DEBUGLEVEL")
  (make-package "INDUSTRIAL_MSGS::DEBUGLEVEL"))

(in-package "ROS")
;;//! \htmlinclude DebugLevel.msg.html


(intern "*DEBUG*" (find-package "INDUSTRIAL_MSGS::DEBUGLEVEL"))
(shadow '*DEBUG* (find-package "INDUSTRIAL_MSGS::DEBUGLEVEL"))
(defconstant industrial_msgs::DebugLevel::*DEBUG* 5)
(intern "*INFO*" (find-package "INDUSTRIAL_MSGS::DEBUGLEVEL"))
(shadow '*INFO* (find-package "INDUSTRIAL_MSGS::DEBUGLEVEL"))
(defconstant industrial_msgs::DebugLevel::*INFO* 4)
(intern "*WARN*" (find-package "INDUSTRIAL_MSGS::DEBUGLEVEL"))
(shadow '*WARN* (find-package "INDUSTRIAL_MSGS::DEBUGLEVEL"))
(defconstant industrial_msgs::DebugLevel::*WARN* 3)
(intern "*ERROR*" (find-package "INDUSTRIAL_MSGS::DEBUGLEVEL"))
(shadow '*ERROR* (find-package "INDUSTRIAL_MSGS::DEBUGLEVEL"))
(defconstant industrial_msgs::DebugLevel::*ERROR* 2)
(intern "*FATAL*" (find-package "INDUSTRIAL_MSGS::DEBUGLEVEL"))
(shadow '*FATAL* (find-package "INDUSTRIAL_MSGS::DEBUGLEVEL"))
(defconstant industrial_msgs::DebugLevel::*FATAL* 1)
(intern "*NONE*" (find-package "INDUSTRIAL_MSGS::DEBUGLEVEL"))
(shadow '*NONE* (find-package "INDUSTRIAL_MSGS::DEBUGLEVEL"))
(defconstant industrial_msgs::DebugLevel::*NONE* 0)
(defclass industrial_msgs::DebugLevel
  :super ros::object
  :slots (_val ))

(defmethod industrial_msgs::DebugLevel
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
    ;; uint8 _val
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _val
       (write-byte _val s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _val
     (setq _val (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get industrial_msgs::DebugLevel :md5sum-) "5bfde194fd95d83abdb02a03ee48fbe7")
(setf (get industrial_msgs::DebugLevel :datatype-) "industrial_msgs/DebugLevel")
(setf (get industrial_msgs::DebugLevel :definition-)
      "# Debug level message enumeration.  This may replicate some functionality that
# alreay exists in the ROS logger.
# TODO: Get more information on the ROS Logger.
uint8 val

uint8 DEBUG = 5
uint8 INFO = 4
uint8 WARN = 3
uint8 ERROR = 2
uint8 FATAL = 1
uint8 NONE = 0 

")



(provide :industrial_msgs/DebugLevel "5bfde194fd95d83abdb02a03ee48fbe7")


