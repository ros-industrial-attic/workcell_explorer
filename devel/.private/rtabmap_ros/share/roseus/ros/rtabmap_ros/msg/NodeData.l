;; Auto-generated. Do not edit!


(when (boundp 'rtabmap_ros::NodeData)
  (if (not (find-package "RTABMAP_ROS"))
    (make-package "RTABMAP_ROS"))
  (shadow 'NodeData (find-package "RTABMAP_ROS")))
(unless (find-package "RTABMAP_ROS::NODEDATA")
  (make-package "RTABMAP_ROS::NODEDATA"))

(in-package "ROS")
;;//! \htmlinclude NodeData.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass rtabmap_ros::NodeData
  :super ros::object
  :slots (_id _mapId _weight _stamp _label _pose _groundTruthPose _image _depth _fx _fy _cx _cy _width _height _baseline _localTransform _laserScan _laserScanMaxPts _laserScanMaxRange _laserScanLocalTransform _userData _grid_ground _grid_obstacles _grid_cell_size _grid_view_point _wordIds _wordKpts _wordPts _descriptors ))

(defmethod rtabmap_ros::NodeData
  (:init
   (&key
    ((:id __id) 0)
    ((:mapId __mapId) 0)
    ((:weight __weight) 0)
    ((:stamp __stamp) 0.0)
    ((:label __label) "")
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:groundTruthPose __groundTruthPose) (instance geometry_msgs::Pose :init))
    ((:image __image) (make-array 0 :initial-element 0 :element-type :char))
    ((:depth __depth) (make-array 0 :initial-element 0 :element-type :char))
    ((:fx __fx) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:fy __fy) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:cx __cx) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:cy __cy) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:width __width) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:height __height) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:baseline __baseline) 0.0)
    ((:localTransform __localTransform) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Transform :init) r)) r))
    ((:laserScan __laserScan) (make-array 0 :initial-element 0 :element-type :char))
    ((:laserScanMaxPts __laserScanMaxPts) 0)
    ((:laserScanMaxRange __laserScanMaxRange) 0.0)
    ((:laserScanLocalTransform __laserScanLocalTransform) (instance geometry_msgs::Transform :init))
    ((:userData __userData) (make-array 0 :initial-element 0 :element-type :char))
    ((:grid_ground __grid_ground) (make-array 0 :initial-element 0 :element-type :char))
    ((:grid_obstacles __grid_obstacles) (make-array 0 :initial-element 0 :element-type :char))
    ((:grid_cell_size __grid_cell_size) 0.0)
    ((:grid_view_point __grid_view_point) (instance rtabmap_ros::Point3f :init))
    ((:wordIds __wordIds) (make-array 0 :initial-element 0 :element-type :integer))
    ((:wordKpts __wordKpts) (let (r) (dotimes (i 0) (push (instance rtabmap_ros::KeyPoint :init) r)) r))
    ((:wordPts __wordPts) (instance sensor_msgs::PointCloud2 :init))
    ((:descriptors __descriptors) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _mapId (round __mapId))
   (setq _weight (round __weight))
   (setq _stamp (float __stamp))
   (setq _label (string __label))
   (setq _pose __pose)
   (setq _groundTruthPose __groundTruthPose)
   (setq _image __image)
   (setq _depth __depth)
   (setq _fx __fx)
   (setq _fy __fy)
   (setq _cx __cx)
   (setq _cy __cy)
   (setq _width __width)
   (setq _height __height)
   (setq _baseline (float __baseline))
   (setq _localTransform __localTransform)
   (setq _laserScan __laserScan)
   (setq _laserScanMaxPts (round __laserScanMaxPts))
   (setq _laserScanMaxRange (float __laserScanMaxRange))
   (setq _laserScanLocalTransform __laserScanLocalTransform)
   (setq _userData __userData)
   (setq _grid_ground __grid_ground)
   (setq _grid_obstacles __grid_obstacles)
   (setq _grid_cell_size (float __grid_cell_size))
   (setq _grid_view_point __grid_view_point)
   (setq _wordIds __wordIds)
   (setq _wordKpts __wordKpts)
   (setq _wordPts __wordPts)
   (setq _descriptors __descriptors)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:mapId
   (&optional __mapId)
   (if __mapId (setq _mapId __mapId)) _mapId)
  (:weight
   (&optional __weight)
   (if __weight (setq _weight __weight)) _weight)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:groundTruthPose
   (&rest __groundTruthPose)
   (if (keywordp (car __groundTruthPose))
       (send* _groundTruthPose __groundTruthPose)
     (progn
       (if __groundTruthPose (setq _groundTruthPose (car __groundTruthPose)))
       _groundTruthPose)))
  (:image
   (&optional __image)
   (if __image (setq _image __image)) _image)
  (:depth
   (&optional __depth)
   (if __depth (setq _depth __depth)) _depth)
  (:fx
   (&optional __fx)
   (if __fx (setq _fx __fx)) _fx)
  (:fy
   (&optional __fy)
   (if __fy (setq _fy __fy)) _fy)
  (:cx
   (&optional __cx)
   (if __cx (setq _cx __cx)) _cx)
  (:cy
   (&optional __cy)
   (if __cy (setq _cy __cy)) _cy)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:baseline
   (&optional __baseline)
   (if __baseline (setq _baseline __baseline)) _baseline)
  (:localTransform
   (&rest __localTransform)
   (if (keywordp (car __localTransform))
       (send* _localTransform __localTransform)
     (progn
       (if __localTransform (setq _localTransform (car __localTransform)))
       _localTransform)))
  (:laserScan
   (&optional __laserScan)
   (if __laserScan (setq _laserScan __laserScan)) _laserScan)
  (:laserScanMaxPts
   (&optional __laserScanMaxPts)
   (if __laserScanMaxPts (setq _laserScanMaxPts __laserScanMaxPts)) _laserScanMaxPts)
  (:laserScanMaxRange
   (&optional __laserScanMaxRange)
   (if __laserScanMaxRange (setq _laserScanMaxRange __laserScanMaxRange)) _laserScanMaxRange)
  (:laserScanLocalTransform
   (&rest __laserScanLocalTransform)
   (if (keywordp (car __laserScanLocalTransform))
       (send* _laserScanLocalTransform __laserScanLocalTransform)
     (progn
       (if __laserScanLocalTransform (setq _laserScanLocalTransform (car __laserScanLocalTransform)))
       _laserScanLocalTransform)))
  (:userData
   (&optional __userData)
   (if __userData (setq _userData __userData)) _userData)
  (:grid_ground
   (&optional __grid_ground)
   (if __grid_ground (setq _grid_ground __grid_ground)) _grid_ground)
  (:grid_obstacles
   (&optional __grid_obstacles)
   (if __grid_obstacles (setq _grid_obstacles __grid_obstacles)) _grid_obstacles)
  (:grid_cell_size
   (&optional __grid_cell_size)
   (if __grid_cell_size (setq _grid_cell_size __grid_cell_size)) _grid_cell_size)
  (:grid_view_point
   (&rest __grid_view_point)
   (if (keywordp (car __grid_view_point))
       (send* _grid_view_point __grid_view_point)
     (progn
       (if __grid_view_point (setq _grid_view_point (car __grid_view_point)))
       _grid_view_point)))
  (:wordIds
   (&optional __wordIds)
   (if __wordIds (setq _wordIds __wordIds)) _wordIds)
  (:wordKpts
   (&rest __wordKpts)
   (if (keywordp (car __wordKpts))
       (send* _wordKpts __wordKpts)
     (progn
       (if __wordKpts (setq _wordKpts (car __wordKpts)))
       _wordKpts)))
  (:wordPts
   (&rest __wordPts)
   (if (keywordp (car __wordPts))
       (send* _wordPts __wordPts)
     (progn
       (if __wordPts (setq _wordPts (car __wordPts)))
       _wordPts)))
  (:descriptors
   (&optional __descriptors)
   (if __descriptors (setq _descriptors __descriptors)) _descriptors)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; int32 _mapId
    4
    ;; int32 _weight
    4
    ;; float64 _stamp
    8
    ;; string _label
    4 (length _label)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/Pose _groundTruthPose
    (send _groundTruthPose :serialization-length)
    ;; uint8[] _image
    (* 1    (length _image)) 4
    ;; uint8[] _depth
    (* 1    (length _depth)) 4
    ;; float32[] _fx
    (* 4    (length _fx)) 4
    ;; float32[] _fy
    (* 4    (length _fy)) 4
    ;; float32[] _cx
    (* 4    (length _cx)) 4
    ;; float32[] _cy
    (* 4    (length _cy)) 4
    ;; float32[] _width
    (* 4    (length _width)) 4
    ;; float32[] _height
    (* 4    (length _height)) 4
    ;; float32 _baseline
    4
    ;; geometry_msgs/Transform[] _localTransform
    (apply #'+ (send-all _localTransform :serialization-length)) 4
    ;; uint8[] _laserScan
    (* 1    (length _laserScan)) 4
    ;; int32 _laserScanMaxPts
    4
    ;; float32 _laserScanMaxRange
    4
    ;; geometry_msgs/Transform _laserScanLocalTransform
    (send _laserScanLocalTransform :serialization-length)
    ;; uint8[] _userData
    (* 1    (length _userData)) 4
    ;; uint8[] _grid_ground
    (* 1    (length _grid_ground)) 4
    ;; uint8[] _grid_obstacles
    (* 1    (length _grid_obstacles)) 4
    ;; float32 _grid_cell_size
    4
    ;; rtabmap_ros/Point3f _grid_view_point
    (send _grid_view_point :serialization-length)
    ;; int32[] _wordIds
    (* 4    (length _wordIds)) 4
    ;; rtabmap_ros/KeyPoint[] _wordKpts
    (apply #'+ (send-all _wordKpts :serialization-length)) 4
    ;; sensor_msgs/PointCloud2 _wordPts
    (send _wordPts :serialization-length)
    ;; uint8[] _descriptors
    (* 1    (length _descriptors)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; int32 _mapId
       (write-long _mapId s)
     ;; int32 _weight
       (write-long _weight s)
     ;; float64 _stamp
       (sys::poke _stamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; geometry_msgs/Pose _groundTruthPose
       (send _groundTruthPose :serialize s)
     ;; uint8[] _image
     (write-long (length _image) s)
     (princ _image s)
     ;; uint8[] _depth
     (write-long (length _depth) s)
     (princ _depth s)
     ;; float32[] _fx
     (write-long (length _fx) s)
     (dotimes (i (length _fx))
       (sys::poke (elt _fx i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _fy
     (write-long (length _fy) s)
     (dotimes (i (length _fy))
       (sys::poke (elt _fy i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _cx
     (write-long (length _cx) s)
     (dotimes (i (length _cx))
       (sys::poke (elt _cx i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _cy
     (write-long (length _cy) s)
     (dotimes (i (length _cy))
       (sys::poke (elt _cy i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _width
     (write-long (length _width) s)
     (dotimes (i (length _width))
       (sys::poke (elt _width i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _height
     (write-long (length _height) s)
     (dotimes (i (length _height))
       (sys::poke (elt _height i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _baseline
       (sys::poke _baseline (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Transform[] _localTransform
     (write-long (length _localTransform) s)
     (dolist (elem _localTransform)
       (send elem :serialize s)
       )
     ;; uint8[] _laserScan
     (write-long (length _laserScan) s)
     (princ _laserScan s)
     ;; int32 _laserScanMaxPts
       (write-long _laserScanMaxPts s)
     ;; float32 _laserScanMaxRange
       (sys::poke _laserScanMaxRange (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Transform _laserScanLocalTransform
       (send _laserScanLocalTransform :serialize s)
     ;; uint8[] _userData
     (write-long (length _userData) s)
     (princ _userData s)
     ;; uint8[] _grid_ground
     (write-long (length _grid_ground) s)
     (princ _grid_ground s)
     ;; uint8[] _grid_obstacles
     (write-long (length _grid_obstacles) s)
     (princ _grid_obstacles s)
     ;; float32 _grid_cell_size
       (sys::poke _grid_cell_size (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; rtabmap_ros/Point3f _grid_view_point
       (send _grid_view_point :serialize s)
     ;; int32[] _wordIds
     (write-long (length _wordIds) s)
     (dotimes (i (length _wordIds))
       (write-long (elt _wordIds i) s)
       )
     ;; rtabmap_ros/KeyPoint[] _wordKpts
     (write-long (length _wordKpts) s)
     (dolist (elem _wordKpts)
       (send elem :serialize s)
       )
     ;; sensor_msgs/PointCloud2 _wordPts
       (send _wordPts :serialize s)
     ;; uint8[] _descriptors
     (write-long (length _descriptors) s)
     (princ _descriptors s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _mapId
     (setq _mapId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _weight
     (setq _weight (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _stamp
     (setq _stamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/Pose _groundTruthPose
     (send _groundTruthPose :deserialize buf ptr-) (incf ptr- (send _groundTruthPose :serialization-length))
   ;; uint8[] _image
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _image (make-array n :element-type :char))
     (replace _image buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _depth
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _depth (make-array n :element-type :char))
     (replace _depth buf :start2 ptr-) (incf ptr- n))
   ;; float32[] _fx
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _fx (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _fx i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _fy
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _fy (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _fy i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _cx
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cx (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _cx i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _cy
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cy (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _cy i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _width
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _width (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _width i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _height
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _height (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _height i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32 _baseline
     (setq _baseline (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Transform[] _localTransform
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _localTransform (let (r) (dotimes (i n) (push (instance geometry_msgs::Transform :init) r)) r))
     (dolist (elem- _localTransform)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint8[] _laserScan
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _laserScan (make-array n :element-type :char))
     (replace _laserScan buf :start2 ptr-) (incf ptr- n))
   ;; int32 _laserScanMaxPts
     (setq _laserScanMaxPts (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _laserScanMaxRange
     (setq _laserScanMaxRange (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Transform _laserScanLocalTransform
     (send _laserScanLocalTransform :deserialize buf ptr-) (incf ptr- (send _laserScanLocalTransform :serialization-length))
   ;; uint8[] _userData
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _userData (make-array n :element-type :char))
     (replace _userData buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _grid_ground
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _grid_ground (make-array n :element-type :char))
     (replace _grid_ground buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _grid_obstacles
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _grid_obstacles (make-array n :element-type :char))
     (replace _grid_obstacles buf :start2 ptr-) (incf ptr- n))
   ;; float32 _grid_cell_size
     (setq _grid_cell_size (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; rtabmap_ros/Point3f _grid_view_point
     (send _grid_view_point :deserialize buf ptr-) (incf ptr- (send _grid_view_point :serialization-length))
   ;; int32[] _wordIds
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wordIds (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _wordIds i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; rtabmap_ros/KeyPoint[] _wordKpts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wordKpts (let (r) (dotimes (i n) (push (instance rtabmap_ros::KeyPoint :init) r)) r))
     (dolist (elem- _wordKpts)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; sensor_msgs/PointCloud2 _wordPts
     (send _wordPts :deserialize buf ptr-) (incf ptr- (send _wordPts :serialization-length))
   ;; uint8[] _descriptors
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _descriptors (make-array n :element-type :char))
     (replace _descriptors buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get rtabmap_ros::NodeData :md5sum-) "934677666129185759cc518495d0b6cb")
(setf (get rtabmap_ros::NodeData :datatype-) "rtabmap_ros/NodeData")
(setf (get rtabmap_ros::NodeData :definition-)
      "
int32 id
int32 mapId
int32 weight
float64 stamp
string label

# Pose from odometry not corrected
geometry_msgs/Pose pose

# Ground truth (optional)
geometry_msgs/Pose groundTruthPose

# compressed image in /camera_link frame
# use rtabmap::util3d::uncompressImage() from \"rtabmap/core/util3d.h\"
uint8[] image

# compressed depth image in /camera_link frame
# use rtabmap::util3d::uncompressImage() from \"rtabmap/core/util3d.h\"
uint8[] depth

# Camera models
float32[] fx
float32[] fy
float32[] cx
float32[] cy
float32[] width
float32[] height
float32 baseline
# local transform (/base_link -> /camera_link)
geometry_msgs/Transform[] localTransform

# compressed 2D laser scan in /base_link frame
# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"
uint8[] laserScan
int32 laserScanMaxPts
float32 laserScanMaxRange
geometry_msgs/Transform laserScanLocalTransform

# compressed user data
# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"
uint8[] userData

# compressed occupancy grid
# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"
uint8[] grid_ground
uint8[] grid_obstacles
float32 grid_cell_size
Point3f grid_view_point

# std::multimap<wordId, cv::Keypoint>
# std::multimap<wordId, pcl::PointXYZ>
int32[] wordIds
KeyPoint[] wordKpts
sensor_msgs/PointCloud2 wordPts

# compressed descriptors
# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"
uint8[] descriptors

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

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: rtabmap_ros/Point3f
#class cv::Point3f
#{
#    float x;
#    float y;
#    float z;
#}

float32 x
float32 y
float32 z
================================================================================
MSG: rtabmap_ros/KeyPoint
#class cv::KeyPoint
#{
#    Point2f pt;
#    float size;
#    float angle;
#    float response;
#    int octave;
#    int class_id;
#}

Point2f pt
float32 size
float32 angle
float32 response
int32 octave
int32 class_id
================================================================================
MSG: rtabmap_ros/Point2f
#class cv::Point2f
#{
#    float x;
#    float y;
#}

float32 x
float32 y
================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

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
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

")



(provide :rtabmap_ros/NodeData "934677666129185759cc518495d0b6cb")


