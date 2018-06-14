;; Auto-generated. Do not edit!


(when (boundp 'myworkcell_core::LocalizePart)
  (if (not (find-package "MYWORKCELL_CORE"))
    (make-package "MYWORKCELL_CORE"))
  (shadow 'LocalizePart (find-package "MYWORKCELL_CORE")))
(unless (find-package "MYWORKCELL_CORE::LOCALIZEPART")
  (make-package "MYWORKCELL_CORE::LOCALIZEPART"))
(unless (find-package "MYWORKCELL_CORE::LOCALIZEPARTREQUEST")
  (make-package "MYWORKCELL_CORE::LOCALIZEPARTREQUEST"))
(unless (find-package "MYWORKCELL_CORE::LOCALIZEPARTRESPONSE")
  (make-package "MYWORKCELL_CORE::LOCALIZEPARTRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass myworkcell_core::LocalizePartRequest
  :super ros::object
  :slots (_base_frame ))

(defmethod myworkcell_core::LocalizePartRequest
  (:init
   (&key
    ((:base_frame __base_frame) "")
    )
   (send-super :init)
   (setq _base_frame (string __base_frame))
   self)
  (:base_frame
   (&optional __base_frame)
   (if __base_frame (setq _base_frame __base_frame)) _base_frame)
  (:serialization-length
   ()
   (+
    ;; string _base_frame
    4 (length _base_frame)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _base_frame
       (write-long (length _base_frame) s) (princ _base_frame s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _base_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _base_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass myworkcell_core::LocalizePartResponse
  :super ros::object
  :slots (_pose ))

(defmethod myworkcell_core::LocalizePartResponse
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _pose __pose)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass myworkcell_core::LocalizePart
  :super ros::object
  :slots ())

(setf (get myworkcell_core::LocalizePart :md5sum-) "aa4cca5b67ec8a13449c405ec10ee5d0")
(setf (get myworkcell_core::LocalizePart :datatype-) "myworkcell_core/LocalizePart")
(setf (get myworkcell_core::LocalizePart :request) myworkcell_core::LocalizePartRequest)
(setf (get myworkcell_core::LocalizePart :response) myworkcell_core::LocalizePartResponse)

(defmethod myworkcell_core::LocalizePartRequest
  (:response () (instance myworkcell_core::LocalizePartResponse :init)))

(setf (get myworkcell_core::LocalizePartRequest :md5sum-) "aa4cca5b67ec8a13449c405ec10ee5d0")
(setf (get myworkcell_core::LocalizePartRequest :datatype-) "myworkcell_core/LocalizePartRequest")
(setf (get myworkcell_core::LocalizePartRequest :definition-)
      "
string base_frame
---

geometry_msgs/Pose pose


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

(setf (get myworkcell_core::LocalizePartResponse :md5sum-) "aa4cca5b67ec8a13449c405ec10ee5d0")
(setf (get myworkcell_core::LocalizePartResponse :datatype-) "myworkcell_core/LocalizePartResponse")
(setf (get myworkcell_core::LocalizePartResponse :definition-)
      "
string base_frame
---

geometry_msgs/Pose pose


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



(provide :myworkcell_core/LocalizePart "aa4cca5b67ec8a13449c405ec10ee5d0")


