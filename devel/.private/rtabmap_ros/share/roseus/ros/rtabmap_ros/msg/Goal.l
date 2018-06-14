;; Auto-generated. Do not edit!


(when (boundp 'rtabmap_ros::Goal)
  (if (not (find-package "RTABMAP_ROS"))
    (make-package "RTABMAP_ROS"))
  (shadow 'Goal (find-package "RTABMAP_ROS")))
(unless (find-package "RTABMAP_ROS::GOAL")
  (make-package "RTABMAP_ROS::GOAL"))

(in-package "ROS")
;;//! \htmlinclude Goal.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rtabmap_ros::Goal
  :super ros::object
  :slots (_header _node_id _node_label ))

(defmethod rtabmap_ros::Goal
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:node_id __node_id) 0)
    ((:node_label __node_label) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _node_id (round __node_id))
   (setq _node_label (string __node_label))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:node_id
   (&optional __node_id)
   (if __node_id (setq _node_id __node_id)) _node_id)
  (:node_label
   (&optional __node_label)
   (if __node_label (setq _node_label __node_label)) _node_label)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _node_id
    4
    ;; string _node_label
    4 (length _node_label)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _node_id
       (write-long _node_id s)
     ;; string _node_label
       (write-long (length _node_label) s) (princ _node_label s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _node_id
     (setq _node_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _node_label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _node_label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get rtabmap_ros::Goal :md5sum-) "549abfc1888e0f4a564870f6e066ed73")
(setf (get rtabmap_ros::Goal :datatype-) "rtabmap_ros/Goal")
(setf (get rtabmap_ros::Goal :definition-)
      "
Header header

# Set either node_id or node_label
int32 node_id
string node_label
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

")



(provide :rtabmap_ros/Goal "549abfc1888e0f4a564870f6e066ed73")


