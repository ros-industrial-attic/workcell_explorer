;; Auto-generated. Do not edit!


(when (boundp 'rtabmap_ros::SetGoal)
  (if (not (find-package "RTABMAP_ROS"))
    (make-package "RTABMAP_ROS"))
  (shadow 'SetGoal (find-package "RTABMAP_ROS")))
(unless (find-package "RTABMAP_ROS::SETGOAL")
  (make-package "RTABMAP_ROS::SETGOAL"))
(unless (find-package "RTABMAP_ROS::SETGOALREQUEST")
  (make-package "RTABMAP_ROS::SETGOALREQUEST"))
(unless (find-package "RTABMAP_ROS::SETGOALRESPONSE")
  (make-package "RTABMAP_ROS::SETGOALRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass rtabmap_ros::SetGoalRequest
  :super ros::object
  :slots (_node_id _node_label ))

(defmethod rtabmap_ros::SetGoalRequest
  (:init
   (&key
    ((:node_id __node_id) 0)
    ((:node_label __node_label) "")
    )
   (send-super :init)
   (setq _node_id (round __node_id))
   (setq _node_label (string __node_label))
   self)
  (:node_id
   (&optional __node_id)
   (if __node_id (setq _node_id __node_id)) _node_id)
  (:node_label
   (&optional __node_label)
   (if __node_label (setq _node_label __node_label)) _node_label)
  (:serialization-length
   ()
   (+
    ;; int32 _node_id
    4
    ;; string _node_label
    4 (length _node_label)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _node_id
       (write-long _node_id s)
     ;; string _node_label
       (write-long (length _node_label) s) (princ _node_label s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _node_id
     (setq _node_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _node_label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _node_label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rtabmap_ros::SetGoalResponse
  :super ros::object
  :slots (_path_ids _path_poses _planning_time ))

(defmethod rtabmap_ros::SetGoalResponse
  (:init
   (&key
    ((:path_ids __path_ids) (make-array 0 :initial-element 0 :element-type :integer))
    ((:path_poses __path_poses) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose :init) r)) r))
    ((:planning_time __planning_time) 0.0)
    )
   (send-super :init)
   (setq _path_ids __path_ids)
   (setq _path_poses __path_poses)
   (setq _planning_time (float __planning_time))
   self)
  (:path_ids
   (&optional __path_ids)
   (if __path_ids (setq _path_ids __path_ids)) _path_ids)
  (:path_poses
   (&rest __path_poses)
   (if (keywordp (car __path_poses))
       (send* _path_poses __path_poses)
     (progn
       (if __path_poses (setq _path_poses (car __path_poses)))
       _path_poses)))
  (:planning_time
   (&optional __planning_time)
   (if __planning_time (setq _planning_time __planning_time)) _planning_time)
  (:serialization-length
   ()
   (+
    ;; int32[] _path_ids
    (* 4    (length _path_ids)) 4
    ;; geometry_msgs/Pose[] _path_poses
    (apply #'+ (send-all _path_poses :serialization-length)) 4
    ;; float32 _planning_time
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _path_ids
     (write-long (length _path_ids) s)
     (dotimes (i (length _path_ids))
       (write-long (elt _path_ids i) s)
       )
     ;; geometry_msgs/Pose[] _path_poses
     (write-long (length _path_poses) s)
     (dolist (elem _path_poses)
       (send elem :serialize s)
       )
     ;; float32 _planning_time
       (sys::poke _planning_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _path_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _path_ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _path_ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; geometry_msgs/Pose[] _path_poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _path_poses (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _path_poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32 _planning_time
     (setq _planning_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass rtabmap_ros::SetGoal
  :super ros::object
  :slots ())

(setf (get rtabmap_ros::SetGoal :md5sum-) "26edc868202251c9d77a8a06444641bb")
(setf (get rtabmap_ros::SetGoal :datatype-) "rtabmap_ros/SetGoal")
(setf (get rtabmap_ros::SetGoal :request) rtabmap_ros::SetGoalRequest)
(setf (get rtabmap_ros::SetGoal :response) rtabmap_ros::SetGoalResponse)

(defmethod rtabmap_ros::SetGoalRequest
  (:response () (instance rtabmap_ros::SetGoalResponse :init)))

(setf (get rtabmap_ros::SetGoalRequest :md5sum-) "26edc868202251c9d77a8a06444641bb")
(setf (get rtabmap_ros::SetGoalRequest :datatype-) "rtabmap_ros/SetGoalRequest")
(setf (get rtabmap_ros::SetGoalRequest :definition-)
      "

int32 node_id
string node_label
---

int32[] path_ids
geometry_msgs/Pose[] path_poses
float32 planning_time

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get rtabmap_ros::SetGoalResponse :md5sum-) "26edc868202251c9d77a8a06444641bb")
(setf (get rtabmap_ros::SetGoalResponse :datatype-) "rtabmap_ros/SetGoalResponse")
(setf (get rtabmap_ros::SetGoalResponse :definition-)
      "

int32 node_id
string node_label
---

int32[] path_ids
geometry_msgs/Pose[] path_poses
float32 planning_time

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :rtabmap_ros/SetGoal "26edc868202251c9d77a8a06444641bb")


