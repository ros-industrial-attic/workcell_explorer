;; Auto-generated. Do not edit!


(when (boundp 'rtabmap_ros::OdomInfo)
  (if (not (find-package "RTABMAP_ROS"))
    (make-package "RTABMAP_ROS"))
  (shadow 'OdomInfo (find-package "RTABMAP_ROS")))
(unless (find-package "RTABMAP_ROS::ODOMINFO")
  (make-package "RTABMAP_ROS::ODOMINFO"))

(in-package "ROS")
;;//! \htmlinclude OdomInfo.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rtabmap_ros::OdomInfo
  :super ros::object
  :slots (_header _lost _matches _inliers _icpInliersRatio _covariance _features _localMapSize _localScanMapSize _localKeyFrames _localBundleOutliers _localBundleConstraints _localBundleTime _keyFrameAdded _timeEstimation _timeParticleFiltering _stamp _interval _distanceTravelled _transform _transformFiltered _type _wordsKeys _wordsValues _wordMatches _wordInliers _localMapKeys _localMapValues _localScanMap _refCorners _newCorners _cornerInliers ))

(defmethod rtabmap_ros::OdomInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:lost __lost) nil)
    ((:matches __matches) 0)
    ((:inliers __inliers) 0)
    ((:icpInliersRatio __icpInliersRatio) 0.0)
    ((:covariance __covariance) (make-array 36 :initial-element 0.0 :element-type :float))
    ((:features __features) 0)
    ((:localMapSize __localMapSize) 0)
    ((:localScanMapSize __localScanMapSize) 0)
    ((:localKeyFrames __localKeyFrames) 0)
    ((:localBundleOutliers __localBundleOutliers) 0)
    ((:localBundleConstraints __localBundleConstraints) 0)
    ((:localBundleTime __localBundleTime) 0.0)
    ((:keyFrameAdded __keyFrameAdded) nil)
    ((:timeEstimation __timeEstimation) 0.0)
    ((:timeParticleFiltering __timeParticleFiltering) 0.0)
    ((:stamp __stamp) 0.0)
    ((:interval __interval) 0.0)
    ((:distanceTravelled __distanceTravelled) 0.0)
    ((:transform __transform) (instance geometry_msgs::Transform :init))
    ((:transformFiltered __transformFiltered) (instance geometry_msgs::Transform :init))
    ((:type __type) 0)
    ((:wordsKeys __wordsKeys) (make-array 0 :initial-element 0 :element-type :integer))
    ((:wordsValues __wordsValues) (let (r) (dotimes (i 0) (push (instance rtabmap_ros::KeyPoint :init) r)) r))
    ((:wordMatches __wordMatches) (make-array 0 :initial-element 0 :element-type :integer))
    ((:wordInliers __wordInliers) (make-array 0 :initial-element 0 :element-type :integer))
    ((:localMapKeys __localMapKeys) (make-array 0 :initial-element 0 :element-type :integer))
    ((:localMapValues __localMapValues) (let (r) (dotimes (i 0) (push (instance rtabmap_ros::Point3f :init) r)) r))
    ((:localScanMap __localScanMap) (make-array 0 :initial-element 0 :element-type :char))
    ((:refCorners __refCorners) (let (r) (dotimes (i 0) (push (instance rtabmap_ros::Point2f :init) r)) r))
    ((:newCorners __newCorners) (let (r) (dotimes (i 0) (push (instance rtabmap_ros::Point2f :init) r)) r))
    ((:cornerInliers __cornerInliers) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _lost __lost)
   (setq _matches (round __matches))
   (setq _inliers (round __inliers))
   (setq _icpInliersRatio (float __icpInliersRatio))
   (setq _covariance __covariance)
   (setq _features (round __features))
   (setq _localMapSize (round __localMapSize))
   (setq _localScanMapSize (round __localScanMapSize))
   (setq _localKeyFrames (round __localKeyFrames))
   (setq _localBundleOutliers (round __localBundleOutliers))
   (setq _localBundleConstraints (round __localBundleConstraints))
   (setq _localBundleTime (float __localBundleTime))
   (setq _keyFrameAdded __keyFrameAdded)
   (setq _timeEstimation (float __timeEstimation))
   (setq _timeParticleFiltering (float __timeParticleFiltering))
   (setq _stamp (float __stamp))
   (setq _interval (float __interval))
   (setq _distanceTravelled (float __distanceTravelled))
   (setq _transform __transform)
   (setq _transformFiltered __transformFiltered)
   (setq _type (round __type))
   (setq _wordsKeys __wordsKeys)
   (setq _wordsValues __wordsValues)
   (setq _wordMatches __wordMatches)
   (setq _wordInliers __wordInliers)
   (setq _localMapKeys __localMapKeys)
   (setq _localMapValues __localMapValues)
   (setq _localScanMap __localScanMap)
   (setq _refCorners __refCorners)
   (setq _newCorners __newCorners)
   (setq _cornerInliers __cornerInliers)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:lost
   (&optional __lost)
   (if __lost (setq _lost __lost)) _lost)
  (:matches
   (&optional __matches)
   (if __matches (setq _matches __matches)) _matches)
  (:inliers
   (&optional __inliers)
   (if __inliers (setq _inliers __inliers)) _inliers)
  (:icpInliersRatio
   (&optional __icpInliersRatio)
   (if __icpInliersRatio (setq _icpInliersRatio __icpInliersRatio)) _icpInliersRatio)
  (:covariance
   (&optional __covariance)
   (if __covariance (setq _covariance __covariance)) _covariance)
  (:features
   (&optional __features)
   (if __features (setq _features __features)) _features)
  (:localMapSize
   (&optional __localMapSize)
   (if __localMapSize (setq _localMapSize __localMapSize)) _localMapSize)
  (:localScanMapSize
   (&optional __localScanMapSize)
   (if __localScanMapSize (setq _localScanMapSize __localScanMapSize)) _localScanMapSize)
  (:localKeyFrames
   (&optional __localKeyFrames)
   (if __localKeyFrames (setq _localKeyFrames __localKeyFrames)) _localKeyFrames)
  (:localBundleOutliers
   (&optional __localBundleOutliers)
   (if __localBundleOutliers (setq _localBundleOutliers __localBundleOutliers)) _localBundleOutliers)
  (:localBundleConstraints
   (&optional __localBundleConstraints)
   (if __localBundleConstraints (setq _localBundleConstraints __localBundleConstraints)) _localBundleConstraints)
  (:localBundleTime
   (&optional __localBundleTime)
   (if __localBundleTime (setq _localBundleTime __localBundleTime)) _localBundleTime)
  (:keyFrameAdded
   (&optional __keyFrameAdded)
   (if __keyFrameAdded (setq _keyFrameAdded __keyFrameAdded)) _keyFrameAdded)
  (:timeEstimation
   (&optional __timeEstimation)
   (if __timeEstimation (setq _timeEstimation __timeEstimation)) _timeEstimation)
  (:timeParticleFiltering
   (&optional __timeParticleFiltering)
   (if __timeParticleFiltering (setq _timeParticleFiltering __timeParticleFiltering)) _timeParticleFiltering)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:interval
   (&optional __interval)
   (if __interval (setq _interval __interval)) _interval)
  (:distanceTravelled
   (&optional __distanceTravelled)
   (if __distanceTravelled (setq _distanceTravelled __distanceTravelled)) _distanceTravelled)
  (:transform
   (&rest __transform)
   (if (keywordp (car __transform))
       (send* _transform __transform)
     (progn
       (if __transform (setq _transform (car __transform)))
       _transform)))
  (:transformFiltered
   (&rest __transformFiltered)
   (if (keywordp (car __transformFiltered))
       (send* _transformFiltered __transformFiltered)
     (progn
       (if __transformFiltered (setq _transformFiltered (car __transformFiltered)))
       _transformFiltered)))
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:wordsKeys
   (&optional __wordsKeys)
   (if __wordsKeys (setq _wordsKeys __wordsKeys)) _wordsKeys)
  (:wordsValues
   (&rest __wordsValues)
   (if (keywordp (car __wordsValues))
       (send* _wordsValues __wordsValues)
     (progn
       (if __wordsValues (setq _wordsValues (car __wordsValues)))
       _wordsValues)))
  (:wordMatches
   (&optional __wordMatches)
   (if __wordMatches (setq _wordMatches __wordMatches)) _wordMatches)
  (:wordInliers
   (&optional __wordInliers)
   (if __wordInliers (setq _wordInliers __wordInliers)) _wordInliers)
  (:localMapKeys
   (&optional __localMapKeys)
   (if __localMapKeys (setq _localMapKeys __localMapKeys)) _localMapKeys)
  (:localMapValues
   (&rest __localMapValues)
   (if (keywordp (car __localMapValues))
       (send* _localMapValues __localMapValues)
     (progn
       (if __localMapValues (setq _localMapValues (car __localMapValues)))
       _localMapValues)))
  (:localScanMap
   (&optional __localScanMap)
   (if __localScanMap (setq _localScanMap __localScanMap)) _localScanMap)
  (:refCorners
   (&rest __refCorners)
   (if (keywordp (car __refCorners))
       (send* _refCorners __refCorners)
     (progn
       (if __refCorners (setq _refCorners (car __refCorners)))
       _refCorners)))
  (:newCorners
   (&rest __newCorners)
   (if (keywordp (car __newCorners))
       (send* _newCorners __newCorners)
     (progn
       (if __newCorners (setq _newCorners (car __newCorners)))
       _newCorners)))
  (:cornerInliers
   (&optional __cornerInliers)
   (if __cornerInliers (setq _cornerInliers __cornerInliers)) _cornerInliers)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _lost
    1
    ;; int32 _matches
    4
    ;; int32 _inliers
    4
    ;; float32 _icpInliersRatio
    4
    ;; float64[36] _covariance
    (* 8    36)
    ;; int32 _features
    4
    ;; int32 _localMapSize
    4
    ;; int32 _localScanMapSize
    4
    ;; int32 _localKeyFrames
    4
    ;; int32 _localBundleOutliers
    4
    ;; int32 _localBundleConstraints
    4
    ;; float32 _localBundleTime
    4
    ;; bool _keyFrameAdded
    1
    ;; float32 _timeEstimation
    4
    ;; float32 _timeParticleFiltering
    4
    ;; float32 _stamp
    4
    ;; float32 _interval
    4
    ;; float32 _distanceTravelled
    4
    ;; geometry_msgs/Transform _transform
    (send _transform :serialization-length)
    ;; geometry_msgs/Transform _transformFiltered
    (send _transformFiltered :serialization-length)
    ;; int32 _type
    4
    ;; int32[] _wordsKeys
    (* 4    (length _wordsKeys)) 4
    ;; rtabmap_ros/KeyPoint[] _wordsValues
    (apply #'+ (send-all _wordsValues :serialization-length)) 4
    ;; int32[] _wordMatches
    (* 4    (length _wordMatches)) 4
    ;; int32[] _wordInliers
    (* 4    (length _wordInliers)) 4
    ;; int32[] _localMapKeys
    (* 4    (length _localMapKeys)) 4
    ;; rtabmap_ros/Point3f[] _localMapValues
    (apply #'+ (send-all _localMapValues :serialization-length)) 4
    ;; uint8[] _localScanMap
    (* 1    (length _localScanMap)) 4
    ;; rtabmap_ros/Point2f[] _refCorners
    (apply #'+ (send-all _refCorners :serialization-length)) 4
    ;; rtabmap_ros/Point2f[] _newCorners
    (apply #'+ (send-all _newCorners :serialization-length)) 4
    ;; int32[] _cornerInliers
    (* 4    (length _cornerInliers)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _lost
       (if _lost (write-byte -1 s) (write-byte 0 s))
     ;; int32 _matches
       (write-long _matches s)
     ;; int32 _inliers
       (write-long _inliers s)
     ;; float32 _icpInliersRatio
       (sys::poke _icpInliersRatio (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64[36] _covariance
     (dotimes (i 36)
       (sys::poke (elt _covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; int32 _features
       (write-long _features s)
     ;; int32 _localMapSize
       (write-long _localMapSize s)
     ;; int32 _localScanMapSize
       (write-long _localScanMapSize s)
     ;; int32 _localKeyFrames
       (write-long _localKeyFrames s)
     ;; int32 _localBundleOutliers
       (write-long _localBundleOutliers s)
     ;; int32 _localBundleConstraints
       (write-long _localBundleConstraints s)
     ;; float32 _localBundleTime
       (sys::poke _localBundleTime (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _keyFrameAdded
       (if _keyFrameAdded (write-byte -1 s) (write-byte 0 s))
     ;; float32 _timeEstimation
       (sys::poke _timeEstimation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _timeParticleFiltering
       (sys::poke _timeParticleFiltering (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _stamp
       (sys::poke _stamp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _interval
       (sys::poke _interval (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distanceTravelled
       (sys::poke _distanceTravelled (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Transform _transform
       (send _transform :serialize s)
     ;; geometry_msgs/Transform _transformFiltered
       (send _transformFiltered :serialize s)
     ;; int32 _type
       (write-long _type s)
     ;; int32[] _wordsKeys
     (write-long (length _wordsKeys) s)
     (dotimes (i (length _wordsKeys))
       (write-long (elt _wordsKeys i) s)
       )
     ;; rtabmap_ros/KeyPoint[] _wordsValues
     (write-long (length _wordsValues) s)
     (dolist (elem _wordsValues)
       (send elem :serialize s)
       )
     ;; int32[] _wordMatches
     (write-long (length _wordMatches) s)
     (dotimes (i (length _wordMatches))
       (write-long (elt _wordMatches i) s)
       )
     ;; int32[] _wordInliers
     (write-long (length _wordInliers) s)
     (dotimes (i (length _wordInliers))
       (write-long (elt _wordInliers i) s)
       )
     ;; int32[] _localMapKeys
     (write-long (length _localMapKeys) s)
     (dotimes (i (length _localMapKeys))
       (write-long (elt _localMapKeys i) s)
       )
     ;; rtabmap_ros/Point3f[] _localMapValues
     (write-long (length _localMapValues) s)
     (dolist (elem _localMapValues)
       (send elem :serialize s)
       )
     ;; uint8[] _localScanMap
     (write-long (length _localScanMap) s)
     (princ _localScanMap s)
     ;; rtabmap_ros/Point2f[] _refCorners
     (write-long (length _refCorners) s)
     (dolist (elem _refCorners)
       (send elem :serialize s)
       )
     ;; rtabmap_ros/Point2f[] _newCorners
     (write-long (length _newCorners) s)
     (dolist (elem _newCorners)
       (send elem :serialize s)
       )
     ;; int32[] _cornerInliers
     (write-long (length _cornerInliers) s)
     (dotimes (i (length _cornerInliers))
       (write-long (elt _cornerInliers i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _lost
     (setq _lost (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _matches
     (setq _matches (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _inliers
     (setq _inliers (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _icpInliersRatio
     (setq _icpInliersRatio (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64[36] _covariance
   (dotimes (i (length _covariance))
     (setf (elt _covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; int32 _features
     (setq _features (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _localMapSize
     (setq _localMapSize (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _localScanMapSize
     (setq _localScanMapSize (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _localKeyFrames
     (setq _localKeyFrames (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _localBundleOutliers
     (setq _localBundleOutliers (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _localBundleConstraints
     (setq _localBundleConstraints (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _localBundleTime
     (setq _localBundleTime (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _keyFrameAdded
     (setq _keyFrameAdded (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _timeEstimation
     (setq _timeEstimation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _timeParticleFiltering
     (setq _timeParticleFiltering (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _stamp
     (setq _stamp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _interval
     (setq _interval (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distanceTravelled
     (setq _distanceTravelled (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Transform _transform
     (send _transform :deserialize buf ptr-) (incf ptr- (send _transform :serialization-length))
   ;; geometry_msgs/Transform _transformFiltered
     (send _transformFiltered :deserialize buf ptr-) (incf ptr- (send _transformFiltered :serialization-length))
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[] _wordsKeys
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wordsKeys (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _wordsKeys i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; rtabmap_ros/KeyPoint[] _wordsValues
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wordsValues (let (r) (dotimes (i n) (push (instance rtabmap_ros::KeyPoint :init) r)) r))
     (dolist (elem- _wordsValues)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32[] _wordMatches
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wordMatches (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _wordMatches i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _wordInliers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wordInliers (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _wordInliers i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _localMapKeys
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _localMapKeys (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _localMapKeys i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; rtabmap_ros/Point3f[] _localMapValues
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _localMapValues (let (r) (dotimes (i n) (push (instance rtabmap_ros::Point3f :init) r)) r))
     (dolist (elem- _localMapValues)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint8[] _localScanMap
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _localScanMap (make-array n :element-type :char))
     (replace _localScanMap buf :start2 ptr-) (incf ptr- n))
   ;; rtabmap_ros/Point2f[] _refCorners
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _refCorners (let (r) (dotimes (i n) (push (instance rtabmap_ros::Point2f :init) r)) r))
     (dolist (elem- _refCorners)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; rtabmap_ros/Point2f[] _newCorners
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _newCorners (let (r) (dotimes (i n) (push (instance rtabmap_ros::Point2f :init) r)) r))
     (dolist (elem- _newCorners)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32[] _cornerInliers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cornerInliers (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _cornerInliers i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get rtabmap_ros::OdomInfo :md5sum-) "1161e7d16e7842bb90ac136022cb3638")
(setf (get rtabmap_ros::OdomInfo :datatype-) "rtabmap_ros/OdomInfo")
(setf (get rtabmap_ros::OdomInfo :definition-)
      "
Header header

bool lost
int32 matches
int32 inliers
float32 icpInliersRatio
float64[36] covariance
int32 features
int32 localMapSize
int32 localScanMapSize
int32 localKeyFrames
int32 localBundleOutliers
int32 localBundleConstraints
float32 localBundleTime
bool keyFrameAdded
float32 timeEstimation
float32 timeParticleFiltering
float32 stamp
float32 interval
float32 distanceTravelled

geometry_msgs/Transform transform
geometry_msgs/Transform transformFiltered

# 0=F2M, 1=F2F
int32 type

# F2M odometry
#   std::multimap<int, cv::KeyPoint> words;
#   std::vector<int> wordMatches;
#   std::vector<int> wordInliers;
int32[] wordsKeys
KeyPoint[] wordsValues
int32[] wordMatches
int32[] wordInliers
int32[] localMapKeys
Point3f[] localMapValues

# compressed local scan map data
# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"
uint8[] localScanMap

# F2F odometry
#   std::vector<cv::Point2f> refCorners;
#   std::vector<cv::Point2f> newCorners;
#   std::vector<int> cornerInliers;
Point2f[] refCorners
Point2f[] newCorners
int32[] cornerInliers


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
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

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
")



(provide :rtabmap_ros/OdomInfo "1161e7d16e7842bb90ac136022cb3638")


