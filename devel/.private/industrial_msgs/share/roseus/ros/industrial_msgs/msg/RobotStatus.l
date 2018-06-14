;; Auto-generated. Do not edit!


(when (boundp 'industrial_msgs::RobotStatus)
  (if (not (find-package "INDUSTRIAL_MSGS"))
    (make-package "INDUSTRIAL_MSGS"))
  (shadow 'RobotStatus (find-package "INDUSTRIAL_MSGS")))
(unless (find-package "INDUSTRIAL_MSGS::ROBOTSTATUS")
  (make-package "INDUSTRIAL_MSGS::ROBOTSTATUS"))

(in-package "ROS")
;;//! \htmlinclude RobotStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass industrial_msgs::RobotStatus
  :super ros::object
  :slots (_header _mode _e_stopped _drives_powered _motion_possible _in_motion _in_error _error_code ))

(defmethod industrial_msgs::RobotStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:mode __mode) (instance industrial_msgs::RobotMode :init))
    ((:e_stopped __e_stopped) (instance industrial_msgs::TriState :init))
    ((:drives_powered __drives_powered) (instance industrial_msgs::TriState :init))
    ((:motion_possible __motion_possible) (instance industrial_msgs::TriState :init))
    ((:in_motion __in_motion) (instance industrial_msgs::TriState :init))
    ((:in_error __in_error) (instance industrial_msgs::TriState :init))
    ((:error_code __error_code) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _mode __mode)
   (setq _e_stopped __e_stopped)
   (setq _drives_powered __drives_powered)
   (setq _motion_possible __motion_possible)
   (setq _in_motion __in_motion)
   (setq _in_error __in_error)
   (setq _error_code (round __error_code))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:mode
   (&rest __mode)
   (if (keywordp (car __mode))
       (send* _mode __mode)
     (progn
       (if __mode (setq _mode (car __mode)))
       _mode)))
  (:e_stopped
   (&rest __e_stopped)
   (if (keywordp (car __e_stopped))
       (send* _e_stopped __e_stopped)
     (progn
       (if __e_stopped (setq _e_stopped (car __e_stopped)))
       _e_stopped)))
  (:drives_powered
   (&rest __drives_powered)
   (if (keywordp (car __drives_powered))
       (send* _drives_powered __drives_powered)
     (progn
       (if __drives_powered (setq _drives_powered (car __drives_powered)))
       _drives_powered)))
  (:motion_possible
   (&rest __motion_possible)
   (if (keywordp (car __motion_possible))
       (send* _motion_possible __motion_possible)
     (progn
       (if __motion_possible (setq _motion_possible (car __motion_possible)))
       _motion_possible)))
  (:in_motion
   (&rest __in_motion)
   (if (keywordp (car __in_motion))
       (send* _in_motion __in_motion)
     (progn
       (if __in_motion (setq _in_motion (car __in_motion)))
       _in_motion)))
  (:in_error
   (&rest __in_error)
   (if (keywordp (car __in_error))
       (send* _in_error __in_error)
     (progn
       (if __in_error (setq _in_error (car __in_error)))
       _in_error)))
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; industrial_msgs/RobotMode _mode
    (send _mode :serialization-length)
    ;; industrial_msgs/TriState _e_stopped
    (send _e_stopped :serialization-length)
    ;; industrial_msgs/TriState _drives_powered
    (send _drives_powered :serialization-length)
    ;; industrial_msgs/TriState _motion_possible
    (send _motion_possible :serialization-length)
    ;; industrial_msgs/TriState _in_motion
    (send _in_motion :serialization-length)
    ;; industrial_msgs/TriState _in_error
    (send _in_error :serialization-length)
    ;; int32 _error_code
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; industrial_msgs/RobotMode _mode
       (send _mode :serialize s)
     ;; industrial_msgs/TriState _e_stopped
       (send _e_stopped :serialize s)
     ;; industrial_msgs/TriState _drives_powered
       (send _drives_powered :serialize s)
     ;; industrial_msgs/TriState _motion_possible
       (send _motion_possible :serialize s)
     ;; industrial_msgs/TriState _in_motion
       (send _in_motion :serialize s)
     ;; industrial_msgs/TriState _in_error
       (send _in_error :serialize s)
     ;; int32 _error_code
       (write-long _error_code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; industrial_msgs/RobotMode _mode
     (send _mode :deserialize buf ptr-) (incf ptr- (send _mode :serialization-length))
   ;; industrial_msgs/TriState _e_stopped
     (send _e_stopped :deserialize buf ptr-) (incf ptr- (send _e_stopped :serialization-length))
   ;; industrial_msgs/TriState _drives_powered
     (send _drives_powered :deserialize buf ptr-) (incf ptr- (send _drives_powered :serialization-length))
   ;; industrial_msgs/TriState _motion_possible
     (send _motion_possible :deserialize buf ptr-) (incf ptr- (send _motion_possible :serialization-length))
   ;; industrial_msgs/TriState _in_motion
     (send _in_motion :deserialize buf ptr-) (incf ptr- (send _in_motion :serialization-length))
   ;; industrial_msgs/TriState _in_error
     (send _in_error :deserialize buf ptr-) (incf ptr- (send _in_error :serialization-length))
   ;; int32 _error_code
     (setq _error_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get industrial_msgs::RobotStatus :md5sum-) "b733cb45a38101840b75c4c0d6093d19")
(setf (get industrial_msgs::RobotStatus :datatype-) "industrial_msgs/RobotStatus")
(setf (get industrial_msgs::RobotStatus :definition-)
      "# The RobotStatus message contains low level status information 
# that is specific to an industrial robot controller

# The header frame ID is not used
Header header

# The robot mode captures the operating mode of the robot.  When in
# manual, remote motion is not possible.
industrial_msgs/RobotMode mode

# Estop status: True if robot is e-stopped.  The drives are disabled
# and motion is not possible.  The e-stop condition must be acknowledged
# and cleared before any motion can begin.
industrial_msgs/TriState e_stopped

# Drive power status: True if drives are powered.  Motion commands will 
# automatically enable the drives if required.  Drive power is not requred
# for possible motion
industrial_msgs/TriState drives_powered

# Motion enabled: True if robot motion is possible.
industrial_msgs/TriState motion_possible

# Motion status: True if robot is in motion, otherwise false
industrial_msgs/TriState in_motion

# Error status: True if there is an error condition on the robot. Motion may
# or may not be affected (see motion_possible)
industrial_msgs/TriState in_error

# Error code: Vendor specific error code (non zero indicates error)
int32 error_code

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: industrial_msgs/RobotMode
# The Robot mode message encapsulates the mode/teach state of the robot
# Typically this is controlled by the pendant key switch, but not always

int8 val

# enumerated values
int8 UNKNOWN=-1                 # Unknown or unavailable         
int8 MANUAL=1 			 # Teach OR manual mode
int8 AUTO=2                     # Automatic mode


================================================================================
MSG: industrial_msgs/TriState
# The tri-state captures boolean values with the additional state of unknown

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



(provide :industrial_msgs/RobotStatus "b733cb45a38101840b75c4c0d6093d19")


