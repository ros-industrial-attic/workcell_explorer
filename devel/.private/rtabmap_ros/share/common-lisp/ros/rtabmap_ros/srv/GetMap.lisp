; Auto-generated. Do not edit!


(cl:in-package rtabmap_ros-srv)


;//! \htmlinclude GetMap-request.msg.html

(cl:defclass <GetMap-request> (roslisp-msg-protocol:ros-message)
  ((global
    :reader global
    :initarg :global
    :type cl:boolean
    :initform cl:nil)
   (optimized
    :reader optimized
    :initarg :optimized
    :type cl:boolean
    :initform cl:nil)
   (graphOnly
    :reader graphOnly
    :initarg :graphOnly
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetMap-request (<GetMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtabmap_ros-srv:<GetMap-request> is deprecated: use rtabmap_ros-srv:GetMap-request instead.")))

(cl:ensure-generic-function 'global-val :lambda-list '(m))
(cl:defmethod global-val ((m <GetMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_ros-srv:global-val is deprecated.  Use rtabmap_ros-srv:global instead.")
  (global m))

(cl:ensure-generic-function 'optimized-val :lambda-list '(m))
(cl:defmethod optimized-val ((m <GetMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_ros-srv:optimized-val is deprecated.  Use rtabmap_ros-srv:optimized instead.")
  (optimized m))

(cl:ensure-generic-function 'graphOnly-val :lambda-list '(m))
(cl:defmethod graphOnly-val ((m <GetMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_ros-srv:graphOnly-val is deprecated.  Use rtabmap_ros-srv:graphOnly instead.")
  (graphOnly m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMap-request>) ostream)
  "Serializes a message object of type '<GetMap-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'global) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'optimized) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'graphOnly) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMap-request>) istream)
  "Deserializes a message object of type '<GetMap-request>"
    (cl:setf (cl:slot-value msg 'global) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'optimized) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'graphOnly) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMap-request>)))
  "Returns string type for a service object of type '<GetMap-request>"
  "rtabmap_ros/GetMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMap-request)))
  "Returns string type for a service object of type 'GetMap-request"
  "rtabmap_ros/GetMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMap-request>)))
  "Returns md5sum for a message object of type '<GetMap-request>"
  "3e091ec560a4c98743c1ae8c5f13ea55")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMap-request)))
  "Returns md5sum for a message object of type 'GetMap-request"
  "3e091ec560a4c98743c1ae8c5f13ea55")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMap-request>)))
  "Returns full string definition for message of type '<GetMap-request>"
  (cl:format cl:nil "~%bool global~%bool optimized~%bool graphOnly~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMap-request)))
  "Returns full string definition for message of type 'GetMap-request"
  (cl:format cl:nil "~%bool global~%bool optimized~%bool graphOnly~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMap-request>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMap-request
    (cl:cons ':global (global msg))
    (cl:cons ':optimized (optimized msg))
    (cl:cons ':graphOnly (graphOnly msg))
))
;//! \htmlinclude GetMap-response.msg.html

(cl:defclass <GetMap-response> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type rtabmap_ros-msg:MapData
    :initform (cl:make-instance 'rtabmap_ros-msg:MapData)))
)

(cl:defclass GetMap-response (<GetMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtabmap_ros-srv:<GetMap-response> is deprecated: use rtabmap_ros-srv:GetMap-response instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <GetMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_ros-srv:data-val is deprecated.  Use rtabmap_ros-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMap-response>) ostream)
  "Serializes a message object of type '<GetMap-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMap-response>) istream)
  "Deserializes a message object of type '<GetMap-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMap-response>)))
  "Returns string type for a service object of type '<GetMap-response>"
  "rtabmap_ros/GetMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMap-response)))
  "Returns string type for a service object of type 'GetMap-response"
  "rtabmap_ros/GetMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMap-response>)))
  "Returns md5sum for a message object of type '<GetMap-response>"
  "3e091ec560a4c98743c1ae8c5f13ea55")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMap-response)))
  "Returns md5sum for a message object of type 'GetMap-response"
  "3e091ec560a4c98743c1ae8c5f13ea55")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMap-response>)))
  "Returns full string definition for message of type '<GetMap-response>"
  (cl:format cl:nil "~%MapData data~%~%~%================================================================================~%MSG: rtabmap_ros/MapData~%~%Header header~%~%##################~%# Optimized graph~%##################~%MapGraph graph~%~%##################~%# Graph data~%##################~%NodeData[] nodes~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: rtabmap_ros/MapGraph~%~%Header header~%~%##~%# /map to /odom transform~%# Always identity when the graph is optimized from the latest pose.~%##~%geometry_msgs/Transform mapToOdom~%~%# The poses~%int32[] posesId~%geometry_msgs/Pose[] poses~%~%# The links~%Link[] links~%~%~%~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: rtabmap_ros/Link~%#class rtabmap::Link~%#{~%#   int from;~%#   int to;~%#   Type type;~%#   Transform transform;~%#   cv::Mat(6,6,CV_64FC1) information;~%#}~%~%int32 fromId~%int32 toId~%int32 type~%geometry_msgs/Transform transform~%float64[36] information~%================================================================================~%MSG: rtabmap_ros/NodeData~%~%int32 id~%int32 mapId~%int32 weight~%float64 stamp~%string label~%~%# Pose from odometry not corrected~%geometry_msgs/Pose pose~%~%# Ground truth (optional)~%geometry_msgs/Pose groundTruthPose~%~%# compressed image in /camera_link frame~%# use rtabmap::util3d::uncompressImage() from \"rtabmap/core/util3d.h\"~%uint8[] image~%~%# compressed depth image in /camera_link frame~%# use rtabmap::util3d::uncompressImage() from \"rtabmap/core/util3d.h\"~%uint8[] depth~%~%# Camera models~%float32[] fx~%float32[] fy~%float32[] cx~%float32[] cy~%float32[] width~%float32[] height~%float32 baseline~%# local transform (/base_link -> /camera_link)~%geometry_msgs/Transform[] localTransform~%~%# compressed 2D laser scan in /base_link frame~%# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"~%uint8[] laserScan~%int32 laserScanMaxPts~%float32 laserScanMaxRange~%geometry_msgs/Transform laserScanLocalTransform~%~%# compressed user data~%# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"~%uint8[] userData~%~%# compressed occupancy grid~%# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"~%uint8[] grid_ground~%uint8[] grid_obstacles~%float32 grid_cell_size~%Point3f grid_view_point~%~%# std::multimap<wordId, cv::Keypoint>~%# std::multimap<wordId, pcl::PointXYZ>~%int32[] wordIds~%KeyPoint[] wordKpts~%sensor_msgs/PointCloud2 wordPts~%~%# compressed descriptors~%# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"~%uint8[] descriptors~%~%================================================================================~%MSG: rtabmap_ros/Point3f~%#class cv::Point3f~%#{~%#    float x;~%#    float y;~%#    float z;~%#}~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: rtabmap_ros/KeyPoint~%#class cv::KeyPoint~%#{~%#    Point2f pt;~%#    float size;~%#    float angle;~%#    float response;~%#    int octave;~%#    int class_id;~%#}~%~%Point2f pt~%float32 size~%float32 angle~%float32 response~%int32 octave~%int32 class_id~%================================================================================~%MSG: rtabmap_ros/Point2f~%#class cv::Point2f~%#{~%#    float x;~%#    float y;~%#}~%~%float32 x~%float32 y~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMap-response)))
  "Returns full string definition for message of type 'GetMap-response"
  (cl:format cl:nil "~%MapData data~%~%~%================================================================================~%MSG: rtabmap_ros/MapData~%~%Header header~%~%##################~%# Optimized graph~%##################~%MapGraph graph~%~%##################~%# Graph data~%##################~%NodeData[] nodes~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: rtabmap_ros/MapGraph~%~%Header header~%~%##~%# /map to /odom transform~%# Always identity when the graph is optimized from the latest pose.~%##~%geometry_msgs/Transform mapToOdom~%~%# The poses~%int32[] posesId~%geometry_msgs/Pose[] poses~%~%# The links~%Link[] links~%~%~%~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: rtabmap_ros/Link~%#class rtabmap::Link~%#{~%#   int from;~%#   int to;~%#   Type type;~%#   Transform transform;~%#   cv::Mat(6,6,CV_64FC1) information;~%#}~%~%int32 fromId~%int32 toId~%int32 type~%geometry_msgs/Transform transform~%float64[36] information~%================================================================================~%MSG: rtabmap_ros/NodeData~%~%int32 id~%int32 mapId~%int32 weight~%float64 stamp~%string label~%~%# Pose from odometry not corrected~%geometry_msgs/Pose pose~%~%# Ground truth (optional)~%geometry_msgs/Pose groundTruthPose~%~%# compressed image in /camera_link frame~%# use rtabmap::util3d::uncompressImage() from \"rtabmap/core/util3d.h\"~%uint8[] image~%~%# compressed depth image in /camera_link frame~%# use rtabmap::util3d::uncompressImage() from \"rtabmap/core/util3d.h\"~%uint8[] depth~%~%# Camera models~%float32[] fx~%float32[] fy~%float32[] cx~%float32[] cy~%float32[] width~%float32[] height~%float32 baseline~%# local transform (/base_link -> /camera_link)~%geometry_msgs/Transform[] localTransform~%~%# compressed 2D laser scan in /base_link frame~%# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"~%uint8[] laserScan~%int32 laserScanMaxPts~%float32 laserScanMaxRange~%geometry_msgs/Transform laserScanLocalTransform~%~%# compressed user data~%# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"~%uint8[] userData~%~%# compressed occupancy grid~%# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"~%uint8[] grid_ground~%uint8[] grid_obstacles~%float32 grid_cell_size~%Point3f grid_view_point~%~%# std::multimap<wordId, cv::Keypoint>~%# std::multimap<wordId, pcl::PointXYZ>~%int32[] wordIds~%KeyPoint[] wordKpts~%sensor_msgs/PointCloud2 wordPts~%~%# compressed descriptors~%# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"~%uint8[] descriptors~%~%================================================================================~%MSG: rtabmap_ros/Point3f~%#class cv::Point3f~%#{~%#    float x;~%#    float y;~%#    float z;~%#}~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: rtabmap_ros/KeyPoint~%#class cv::KeyPoint~%#{~%#    Point2f pt;~%#    float size;~%#    float angle;~%#    float response;~%#    int octave;~%#    int class_id;~%#}~%~%Point2f pt~%float32 size~%float32 angle~%float32 response~%int32 octave~%int32 class_id~%================================================================================~%MSG: rtabmap_ros/Point2f~%#class cv::Point2f~%#{~%#    float x;~%#    float y;~%#}~%~%float32 x~%float32 y~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMap-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMap-response
    (cl:cons ':data (data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetMap)))
  'GetMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetMap)))
  'GetMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMap)))
  "Returns string type for a service object of type '<GetMap>"
  "rtabmap_ros/GetMap")