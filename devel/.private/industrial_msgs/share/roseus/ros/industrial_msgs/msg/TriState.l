;; Auto-generated. Do not edit!


(when (boundp 'industrial_msgs::TriState)
  (if (not (find-package "INDUSTRIAL_MSGS"))
    (make-package "INDUSTRIAL_MSGS"))
  (shadow 'TriState (find-package "INDUSTRIAL_MSGS")))
(unless (find-package "INDUSTRIAL_MSGS::TRISTATE")
  (make-package "INDUSTRIAL_MSGS::TRISTATE"))

(in-package "ROS")
;;//! \htmlinclude TriState.msg.html


(intern "*UNKNOWN*" (find-package "INDUSTRIAL_MSGS::TRISTATE"))
(shadow '*UNKNOWN* (find-package "INDUSTRIAL_MSGS::TRISTATE"))
(defconstant industrial_msgs::TriState::*UNKNOWN* -1)
(intern "*TRUE*" (find-package "INDUSTRIAL_MSGS::TRISTATE"))
(shadow '*TRUE* (find-package "INDUSTRIAL_MSGS::TRISTATE"))
(defconstant industrial_msgs::TriState::*TRUE* 1)
(intern "*ON*" (find-package "INDUSTRIAL_MSGS::TRISTATE"))
(shadow '*ON* (find-package "INDUSTRIAL_MSGS::TRISTATE"))
(defconstant industrial_msgs::TriState::*ON* 1)
(intern "*ENABLED*" (find-package "INDUSTRIAL_MSGS::TRISTATE"))
(shadow '*ENABLED* (find-package "INDUSTRIAL_MSGS::TRISTATE"))
(defconstant industrial_msgs::TriState::*ENABLED* 1)
(intern "*HIGH*" (find-package "INDUSTRIAL_MSGS::TRISTATE"))
(shadow '*HIGH* (find-package "INDUSTRIAL_MSGS::TRISTATE"))
(defconstant industrial_msgs::TriState::*HIGH* 1)
(intern "*CLOSED*" (find-package "INDUSTRIAL_MSGS::TRISTATE"))
(shadow '*CLOSED* (find-package "INDUSTRIAL_MSGS::TRISTATE"))
(defconstant industrial_msgs::TriState::*CLOSED* 1)
(intern "*FALSE*" (find-package "INDUSTRIAL_MSGS::TRISTATE"))
(shadow '*FALSE* (find-package "INDUSTRIAL_MSGS::TRISTATE"))
(defconstant industrial_msgs::TriState::*FALSE* 0)
(intern "*OFF*" (find-package "INDUSTRIAL_MSGS::TRISTATE"))
(shadow '*OFF* (find-package "INDUSTRIAL_MSGS::TRISTATE"))
(defconstant industrial_msgs::TriState::*OFF* 0)
(intern "*DISABLED*" (find-package "INDUSTRIAL_MSGS::TRISTATE"))
(shadow '*DISABLED* (find-package "INDUSTRIAL_MSGS::TRISTATE"))
(defconstant industrial_msgs::TriState::*DISABLED* 0)
(intern "*LOW*" (find-package "INDUSTRIAL_MSGS::TRISTATE"))
(shadow '*LOW* (find-package "INDUSTRIAL_MSGS::TRISTATE"))
(defconstant industrial_msgs::TriState::*LOW* 0)
(intern "*OPEN*" (find-package "INDUSTRIAL_MSGS::TRISTATE"))
(shadow '*OPEN* (find-package "INDUSTRIAL_MSGS::TRISTATE"))
(defconstant industrial_msgs::TriState::*OPEN* 0)
(defclass industrial_msgs::TriState
  :super ros::object
  :slots (_val ))

(defmethod industrial_msgs::TriState
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

(setf (get industrial_msgs::TriState :md5sum-) "deb03829f3c2d0f1b647fa38d7087952")
(setf (get industrial_msgs::TriState :datatype-) "industrial_msgs/TriState")
(setf (get industrial_msgs::TriState :definition-)
      "# The tri-state captures boolean values with the additional state of unknown

int8 val

# enumerated values

# Unknown or unavailable 
int8 UNKNOWN=-1  

# High state                       
int8 TRUE=1
int8 ON=1
int8 ENABLED=1
int8 HIGH=1
int8 CLOSED=1

# Low state
int8 FALSE=0
int8 OFF=0
int8 DISABLED=0
int8 LOW=0
int8 OPEN=0


")



(provide :industrial_msgs/TriState "deb03829f3c2d0f1b647fa38d7087952")


