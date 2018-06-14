;; Auto-generated. Do not edit!


(when (boundp 'industrial_msgs::CmdJointTrajectory)
  (if (not (find-package "INDUSTRIAL_MSGS"))
    (make-package "INDUSTRIAL_MSGS"))
  (shadow 'CmdJointTrajectory (find-package "INDUSTRIAL_MSGS")))
(unless (find-package "INDUSTRIAL_MSGS::CMDJOINTTRAJECTORY")
  (make-package "INDUSTRIAL_MSGS::CMDJOINTTRAJECTORY"))
(unless (find-package "INDUSTRIAL_MSGS::CMDJOINTTRAJECTORYREQUEST")
  (make-package "INDUSTRIAL_MSGS::CMDJOINTTRAJECTORYREQUEST"))
(unless (find-package "INDUSTRIAL_MSGS::CMDJOINTTRAJECTORYRESPONSE")
  (make-package "INDUSTRIAL_MSGS::CMDJOINTTRAJECTORYRESPONSE"))

(in-package "ROS")

(if (not (find-package "TRAJECTORY_MSGS"))
  (ros::roseus-add-msgs "trajectory_msgs"))




(defclass industrial_msgs::CmdJointTrajectoryRequest
  :super ros::object
  :slots (_trajectory ))

(defmethod industrial_msgs::CmdJointTrajectoryRequest
  (:init
   (&key
    ((:trajectory __trajectory) (instance trajectory_msgs::JointTrajectory :init))
    )
   (send-super :init)
   (setq _trajectory __trajectory)
   self)
  (:trajectory
   (&rest __trajectory)
   (if (keywordp (car __trajectory))
       (send* _trajectory __trajectory)
     (progn
       (if __trajectory (setq _trajectory (car __trajectory)))
       _trajectory)))
  (:serialization-length
   ()
   (+
    ;; trajectory_msgs/JointTrajectory _trajectory
    (send _trajectory :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; trajectory_msgs/JointTrajectory _trajectory
       (send _trajectory :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; trajectory_msgs/JointTrajectory _trajectory
     (send _trajectory :deserialize buf ptr-) (incf ptr- (send _trajectory :serialization-length))
   ;;
   self)
  )

(defclass industrial_msgs::CmdJointTrajectoryResponse
  :super ros::object
  :slots (_code ))

(defmethod industrial_msgs::CmdJointTrajectoryResponse
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

(defclass industrial_msgs::CmdJointTrajectory
  :super ros::object
  :slots ())

(setf (get industrial_msgs::CmdJointTrajectory :md5sum-) "94fdf82abbbb1071bc31be1a2aea4fcd")
(setf (get industrial_msgs::CmdJointTrajectory :datatype-) "industrial_msgs/CmdJointTrajectory")
(setf (get industrial_msgs::CmdJointTrajectory :request) industrial_msgs::CmdJointTrajectoryRequest)
(setf (get industrial_msgs::CmdJointTrajectory :response) industrial_msgs::CmdJointTrajectoryResponse)

(defmethod industrial_msgs::CmdJointTrajectoryRequest
  (:response () (instance industrial_msgs::CmdJointTrajectoryResponse :init)))

(setf (get industrial_msgs::CmdJointTrajectoryRequest :md5sum-) "94fdf82abbbb1071bc31be1a2aea4fcd")
(setf (get industrial_msgs::CmdJointTrajectoryRequest :datatype-) "industrial_msgs/CmdJointTrajectoryRequest")
(setf (get industrial_msgs::CmdJointTrajectoryRequest :definition-)
      "





trajectory_msgs/JointTrajectory trajectory

================================================================================
MSG: trajectory_msgs/JointTrajectory
Header header
string[] joint_names
JointTrajectoryPoint[] points
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
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start
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

(setf (get industrial_msgs::CmdJointTrajectoryResponse :md5sum-) "94fdf82abbbb1071bc31be1a2aea4fcd")
(setf (get industrial_msgs::CmdJointTrajectoryResponse :datatype-) "industrial_msgs/CmdJointTrajectoryResponse")
(setf (get industrial_msgs::CmdJointTrajectoryResponse :definition-)
      "





trajectory_msgs/JointTrajectory trajectory

================================================================================
MSG: trajectory_msgs/JointTrajectory
Header header
string[] joint_names
JointTrajectoryPoint[] points
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
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start
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



(provide :industrial_msgs/CmdJointTrajectory "94fdf82abbbb1071bc31be1a2aea4fcd")


