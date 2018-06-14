;; Auto-generated. Do not edit!


(when (boundp 'rtabmap_ros::SetLabel)
  (if (not (find-package "RTABMAP_ROS"))
    (make-package "RTABMAP_ROS"))
  (shadow 'SetLabel (find-package "RTABMAP_ROS")))
(unless (find-package "RTABMAP_ROS::SETLABEL")
  (make-package "RTABMAP_ROS::SETLABEL"))
(unless (find-package "RTABMAP_ROS::SETLABELREQUEST")
  (make-package "RTABMAP_ROS::SETLABELREQUEST"))
(unless (find-package "RTABMAP_ROS::SETLABELRESPONSE")
  (make-package "RTABMAP_ROS::SETLABELRESPONSE"))

(in-package "ROS")





(defclass rtabmap_ros::SetLabelRequest
  :super ros::object
  :slots (_node_id _node_label ))

(defmethod rtabmap_ros::SetLabelRequest
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

(defclass rtabmap_ros::SetLabelResponse
  :super ros::object
  :slots ())

(defmethod rtabmap_ros::SetLabelResponse
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

(defclass rtabmap_ros::SetLabel
  :super ros::object
  :slots ())

(setf (get rtabmap_ros::SetLabel :md5sum-) "baadfb04a43ec26085eb7bebc9a80862")
(setf (get rtabmap_ros::SetLabel :datatype-) "rtabmap_ros/SetLabel")
(setf (get rtabmap_ros::SetLabel :request) rtabmap_ros::SetLabelRequest)
(setf (get rtabmap_ros::SetLabel :response) rtabmap_ros::SetLabelResponse)

(defmethod rtabmap_ros::SetLabelRequest
  (:response () (instance rtabmap_ros::SetLabelResponse :init)))

(setf (get rtabmap_ros::SetLabelRequest :md5sum-) "baadfb04a43ec26085eb7bebc9a80862")
(setf (get rtabmap_ros::SetLabelRequest :datatype-) "rtabmap_ros/SetLabelRequest")
(setf (get rtabmap_ros::SetLabelRequest :definition-)
      "

int32 node_id
string node_label
---

")

(setf (get rtabmap_ros::SetLabelResponse :md5sum-) "baadfb04a43ec26085eb7bebc9a80862")
(setf (get rtabmap_ros::SetLabelResponse :datatype-) "rtabmap_ros/SetLabelResponse")
(setf (get rtabmap_ros::SetLabelResponse :definition-)
      "

int32 node_id
string node_label
---

")



(provide :rtabmap_ros/SetLabel "baadfb04a43ec26085eb7bebc9a80862")


