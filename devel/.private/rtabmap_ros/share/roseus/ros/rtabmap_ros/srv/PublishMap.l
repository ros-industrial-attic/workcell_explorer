;; Auto-generated. Do not edit!


(when (boundp 'rtabmap_ros::PublishMap)
  (if (not (find-package "RTABMAP_ROS"))
    (make-package "RTABMAP_ROS"))
  (shadow 'PublishMap (find-package "RTABMAP_ROS")))
(unless (find-package "RTABMAP_ROS::PUBLISHMAP")
  (make-package "RTABMAP_ROS::PUBLISHMAP"))
(unless (find-package "RTABMAP_ROS::PUBLISHMAPREQUEST")
  (make-package "RTABMAP_ROS::PUBLISHMAPREQUEST"))
(unless (find-package "RTABMAP_ROS::PUBLISHMAPRESPONSE")
  (make-package "RTABMAP_ROS::PUBLISHMAPRESPONSE"))

(in-package "ROS")





(defclass rtabmap_ros::PublishMapRequest
  :super ros::object
  :slots (_global _optimized _graphOnly ))

(defmethod rtabmap_ros::PublishMapRequest
  (:init
   (&key
    ((:global __global) nil)
    ((:optimized __optimized) nil)
    ((:graphOnly __graphOnly) nil)
    )
   (send-super :init)
   (setq _global __global)
   (setq _optimized __optimized)
   (setq _graphOnly __graphOnly)
   self)
  (:global
   (&optional __global)
   (if __global (setq _global __global)) _global)
  (:optimized
   (&optional __optimized)
   (if __optimized (setq _optimized __optimized)) _optimized)
  (:graphOnly
   (&optional __graphOnly)
   (if __graphOnly (setq _graphOnly __graphOnly)) _graphOnly)
  (:serialization-length
   ()
   (+
    ;; bool _global
    1
    ;; bool _optimized
    1
    ;; bool _graphOnly
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _global
       (if _global (write-byte -1 s) (write-byte 0 s))
     ;; bool _optimized
       (if _optimized (write-byte -1 s) (write-byte 0 s))
     ;; bool _graphOnly
       (if _graphOnly (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _global
     (setq _global (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _optimized
     (setq _optimized (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _graphOnly
     (setq _graphOnly (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rtabmap_ros::PublishMapResponse
  :super ros::object
  :slots ())

(defmethod rtabmap_ros::PublishMapResponse
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

(defclass rtabmap_ros::PublishMap
  :super ros::object
  :slots ())

(setf (get rtabmap_ros::PublishMap :md5sum-) "6213f9f13cced23f4d224b22f59d839c")
(setf (get rtabmap_ros::PublishMap :datatype-) "rtabmap_ros/PublishMap")
(setf (get rtabmap_ros::PublishMap :request) rtabmap_ros::PublishMapRequest)
(setf (get rtabmap_ros::PublishMap :response) rtabmap_ros::PublishMapResponse)

(defmethod rtabmap_ros::PublishMapRequest
  (:response () (instance rtabmap_ros::PublishMapResponse :init)))

(setf (get rtabmap_ros::PublishMapRequest :md5sum-) "6213f9f13cced23f4d224b22f59d839c")
(setf (get rtabmap_ros::PublishMapRequest :datatype-) "rtabmap_ros/PublishMapRequest")
(setf (get rtabmap_ros::PublishMapRequest :definition-)
      "
bool global
bool optimized
bool graphOnly
---


")

(setf (get rtabmap_ros::PublishMapResponse :md5sum-) "6213f9f13cced23f4d224b22f59d839c")
(setf (get rtabmap_ros::PublishMapResponse :datatype-) "rtabmap_ros/PublishMapResponse")
(setf (get rtabmap_ros::PublishMapResponse :definition-)
      "
bool global
bool optimized
bool graphOnly
---


")



(provide :rtabmap_ros/PublishMap "6213f9f13cced23f4d224b22f59d839c")


