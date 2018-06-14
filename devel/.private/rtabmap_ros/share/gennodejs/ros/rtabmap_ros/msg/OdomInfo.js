// Auto-generated. Do not edit!

// (in-package rtabmap_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let KeyPoint = require('./KeyPoint.js');
let Point3f = require('./Point3f.js');
let Point2f = require('./Point2f.js');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class OdomInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.lost = null;
      this.matches = null;
      this.inliers = null;
      this.icpInliersRatio = null;
      this.covariance = null;
      this.features = null;
      this.localMapSize = null;
      this.localScanMapSize = null;
      this.localKeyFrames = null;
      this.localBundleOutliers = null;
      this.localBundleConstraints = null;
      this.localBundleTime = null;
      this.keyFrameAdded = null;
      this.timeEstimation = null;
      this.timeParticleFiltering = null;
      this.stamp = null;
      this.interval = null;
      this.distanceTravelled = null;
      this.transform = null;
      this.transformFiltered = null;
      this.type = null;
      this.wordsKeys = null;
      this.wordsValues = null;
      this.wordMatches = null;
      this.wordInliers = null;
      this.localMapKeys = null;
      this.localMapValues = null;
      this.localScanMap = null;
      this.refCorners = null;
      this.newCorners = null;
      this.cornerInliers = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('lost')) {
        this.lost = initObj.lost
      }
      else {
        this.lost = false;
      }
      if (initObj.hasOwnProperty('matches')) {
        this.matches = initObj.matches
      }
      else {
        this.matches = 0;
      }
      if (initObj.hasOwnProperty('inliers')) {
        this.inliers = initObj.inliers
      }
      else {
        this.inliers = 0;
      }
      if (initObj.hasOwnProperty('icpInliersRatio')) {
        this.icpInliersRatio = initObj.icpInliersRatio
      }
      else {
        this.icpInliersRatio = 0.0;
      }
      if (initObj.hasOwnProperty('covariance')) {
        this.covariance = initObj.covariance
      }
      else {
        this.covariance = new Array(36).fill(0);
      }
      if (initObj.hasOwnProperty('features')) {
        this.features = initObj.features
      }
      else {
        this.features = 0;
      }
      if (initObj.hasOwnProperty('localMapSize')) {
        this.localMapSize = initObj.localMapSize
      }
      else {
        this.localMapSize = 0;
      }
      if (initObj.hasOwnProperty('localScanMapSize')) {
        this.localScanMapSize = initObj.localScanMapSize
      }
      else {
        this.localScanMapSize = 0;
      }
      if (initObj.hasOwnProperty('localKeyFrames')) {
        this.localKeyFrames = initObj.localKeyFrames
      }
      else {
        this.localKeyFrames = 0;
      }
      if (initObj.hasOwnProperty('localBundleOutliers')) {
        this.localBundleOutliers = initObj.localBundleOutliers
      }
      else {
        this.localBundleOutliers = 0;
      }
      if (initObj.hasOwnProperty('localBundleConstraints')) {
        this.localBundleConstraints = initObj.localBundleConstraints
      }
      else {
        this.localBundleConstraints = 0;
      }
      if (initObj.hasOwnProperty('localBundleTime')) {
        this.localBundleTime = initObj.localBundleTime
      }
      else {
        this.localBundleTime = 0.0;
      }
      if (initObj.hasOwnProperty('keyFrameAdded')) {
        this.keyFrameAdded = initObj.keyFrameAdded
      }
      else {
        this.keyFrameAdded = false;
      }
      if (initObj.hasOwnProperty('timeEstimation')) {
        this.timeEstimation = initObj.timeEstimation
      }
      else {
        this.timeEstimation = 0.0;
      }
      if (initObj.hasOwnProperty('timeParticleFiltering')) {
        this.timeParticleFiltering = initObj.timeParticleFiltering
      }
      else {
        this.timeParticleFiltering = 0.0;
      }
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = 0.0;
      }
      if (initObj.hasOwnProperty('interval')) {
        this.interval = initObj.interval
      }
      else {
        this.interval = 0.0;
      }
      if (initObj.hasOwnProperty('distanceTravelled')) {
        this.distanceTravelled = initObj.distanceTravelled
      }
      else {
        this.distanceTravelled = 0.0;
      }
      if (initObj.hasOwnProperty('transform')) {
        this.transform = initObj.transform
      }
      else {
        this.transform = new geometry_msgs.msg.Transform();
      }
      if (initObj.hasOwnProperty('transformFiltered')) {
        this.transformFiltered = initObj.transformFiltered
      }
      else {
        this.transformFiltered = new geometry_msgs.msg.Transform();
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('wordsKeys')) {
        this.wordsKeys = initObj.wordsKeys
      }
      else {
        this.wordsKeys = [];
      }
      if (initObj.hasOwnProperty('wordsValues')) {
        this.wordsValues = initObj.wordsValues
      }
      else {
        this.wordsValues = [];
      }
      if (initObj.hasOwnProperty('wordMatches')) {
        this.wordMatches = initObj.wordMatches
      }
      else {
        this.wordMatches = [];
      }
      if (initObj.hasOwnProperty('wordInliers')) {
        this.wordInliers = initObj.wordInliers
      }
      else {
        this.wordInliers = [];
      }
      if (initObj.hasOwnProperty('localMapKeys')) {
        this.localMapKeys = initObj.localMapKeys
      }
      else {
        this.localMapKeys = [];
      }
      if (initObj.hasOwnProperty('localMapValues')) {
        this.localMapValues = initObj.localMapValues
      }
      else {
        this.localMapValues = [];
      }
      if (initObj.hasOwnProperty('localScanMap')) {
        this.localScanMap = initObj.localScanMap
      }
      else {
        this.localScanMap = [];
      }
      if (initObj.hasOwnProperty('refCorners')) {
        this.refCorners = initObj.refCorners
      }
      else {
        this.refCorners = [];
      }
      if (initObj.hasOwnProperty('newCorners')) {
        this.newCorners = initObj.newCorners
      }
      else {
        this.newCorners = [];
      }
      if (initObj.hasOwnProperty('cornerInliers')) {
        this.cornerInliers = initObj.cornerInliers
      }
      else {
        this.cornerInliers = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OdomInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [lost]
    bufferOffset = _serializer.bool(obj.lost, buffer, bufferOffset);
    // Serialize message field [matches]
    bufferOffset = _serializer.int32(obj.matches, buffer, bufferOffset);
    // Serialize message field [inliers]
    bufferOffset = _serializer.int32(obj.inliers, buffer, bufferOffset);
    // Serialize message field [icpInliersRatio]
    bufferOffset = _serializer.float32(obj.icpInliersRatio, buffer, bufferOffset);
    // Check that the constant length array field [covariance] has the right length
    if (obj.covariance.length !== 36) {
      throw new Error('Unable to serialize array field covariance - length must be 36')
    }
    // Serialize message field [covariance]
    bufferOffset = _arraySerializer.float64(obj.covariance, buffer, bufferOffset, 36);
    // Serialize message field [features]
    bufferOffset = _serializer.int32(obj.features, buffer, bufferOffset);
    // Serialize message field [localMapSize]
    bufferOffset = _serializer.int32(obj.localMapSize, buffer, bufferOffset);
    // Serialize message field [localScanMapSize]
    bufferOffset = _serializer.int32(obj.localScanMapSize, buffer, bufferOffset);
    // Serialize message field [localKeyFrames]
    bufferOffset = _serializer.int32(obj.localKeyFrames, buffer, bufferOffset);
    // Serialize message field [localBundleOutliers]
    bufferOffset = _serializer.int32(obj.localBundleOutliers, buffer, bufferOffset);
    // Serialize message field [localBundleConstraints]
    bufferOffset = _serializer.int32(obj.localBundleConstraints, buffer, bufferOffset);
    // Serialize message field [localBundleTime]
    bufferOffset = _serializer.float32(obj.localBundleTime, buffer, bufferOffset);
    // Serialize message field [keyFrameAdded]
    bufferOffset = _serializer.bool(obj.keyFrameAdded, buffer, bufferOffset);
    // Serialize message field [timeEstimation]
    bufferOffset = _serializer.float32(obj.timeEstimation, buffer, bufferOffset);
    // Serialize message field [timeParticleFiltering]
    bufferOffset = _serializer.float32(obj.timeParticleFiltering, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.float32(obj.stamp, buffer, bufferOffset);
    // Serialize message field [interval]
    bufferOffset = _serializer.float32(obj.interval, buffer, bufferOffset);
    // Serialize message field [distanceTravelled]
    bufferOffset = _serializer.float32(obj.distanceTravelled, buffer, bufferOffset);
    // Serialize message field [transform]
    bufferOffset = geometry_msgs.msg.Transform.serialize(obj.transform, buffer, bufferOffset);
    // Serialize message field [transformFiltered]
    bufferOffset = geometry_msgs.msg.Transform.serialize(obj.transformFiltered, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int32(obj.type, buffer, bufferOffset);
    // Serialize message field [wordsKeys]
    bufferOffset = _arraySerializer.int32(obj.wordsKeys, buffer, bufferOffset, null);
    // Serialize message field [wordsValues]
    // Serialize the length for message field [wordsValues]
    bufferOffset = _serializer.uint32(obj.wordsValues.length, buffer, bufferOffset);
    obj.wordsValues.forEach((val) => {
      bufferOffset = KeyPoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [wordMatches]
    bufferOffset = _arraySerializer.int32(obj.wordMatches, buffer, bufferOffset, null);
    // Serialize message field [wordInliers]
    bufferOffset = _arraySerializer.int32(obj.wordInliers, buffer, bufferOffset, null);
    // Serialize message field [localMapKeys]
    bufferOffset = _arraySerializer.int32(obj.localMapKeys, buffer, bufferOffset, null);
    // Serialize message field [localMapValues]
    // Serialize the length for message field [localMapValues]
    bufferOffset = _serializer.uint32(obj.localMapValues.length, buffer, bufferOffset);
    obj.localMapValues.forEach((val) => {
      bufferOffset = Point3f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [localScanMap]
    bufferOffset = _arraySerializer.uint8(obj.localScanMap, buffer, bufferOffset, null);
    // Serialize message field [refCorners]
    // Serialize the length for message field [refCorners]
    bufferOffset = _serializer.uint32(obj.refCorners.length, buffer, bufferOffset);
    obj.refCorners.forEach((val) => {
      bufferOffset = Point2f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [newCorners]
    // Serialize the length for message field [newCorners]
    bufferOffset = _serializer.uint32(obj.newCorners.length, buffer, bufferOffset);
    obj.newCorners.forEach((val) => {
      bufferOffset = Point2f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [cornerInliers]
    bufferOffset = _arraySerializer.int32(obj.cornerInliers, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OdomInfo
    let len;
    let data = new OdomInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [lost]
    data.lost = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [matches]
    data.matches = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [inliers]
    data.inliers = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [icpInliersRatio]
    data.icpInliersRatio = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [covariance]
    data.covariance = _arrayDeserializer.float64(buffer, bufferOffset, 36)
    // Deserialize message field [features]
    data.features = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [localMapSize]
    data.localMapSize = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [localScanMapSize]
    data.localScanMapSize = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [localKeyFrames]
    data.localKeyFrames = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [localBundleOutliers]
    data.localBundleOutliers = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [localBundleConstraints]
    data.localBundleConstraints = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [localBundleTime]
    data.localBundleTime = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [keyFrameAdded]
    data.keyFrameAdded = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [timeEstimation]
    data.timeEstimation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [timeParticleFiltering]
    data.timeParticleFiltering = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [interval]
    data.interval = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distanceTravelled]
    data.distanceTravelled = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [transform]
    data.transform = geometry_msgs.msg.Transform.deserialize(buffer, bufferOffset);
    // Deserialize message field [transformFiltered]
    data.transformFiltered = geometry_msgs.msg.Transform.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [wordsKeys]
    data.wordsKeys = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [wordsValues]
    // Deserialize array length for message field [wordsValues]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.wordsValues = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.wordsValues[i] = KeyPoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [wordMatches]
    data.wordMatches = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [wordInliers]
    data.wordInliers = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [localMapKeys]
    data.localMapKeys = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [localMapValues]
    // Deserialize array length for message field [localMapValues]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.localMapValues = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.localMapValues[i] = Point3f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [localScanMap]
    data.localScanMap = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [refCorners]
    // Deserialize array length for message field [refCorners]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.refCorners = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.refCorners[i] = Point2f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [newCorners]
    // Deserialize array length for message field [newCorners]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.newCorners = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.newCorners[i] = Point2f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [cornerInliers]
    data.cornerInliers = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.wordsKeys.length;
    length += 28 * object.wordsValues.length;
    length += 4 * object.wordMatches.length;
    length += 4 * object.wordInliers.length;
    length += 4 * object.localMapKeys.length;
    length += 12 * object.localMapValues.length;
    length += object.localScanMap.length;
    length += 8 * object.refCorners.length;
    length += 8 * object.newCorners.length;
    length += 4 * object.cornerInliers.length;
    return length + 506;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rtabmap_ros/OdomInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1161e7d16e7842bb90ac136022cb3638';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
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
    # use rtabmap::util3d::uncompressData() from "rtabmap/core/util3d.h"
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OdomInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.lost !== undefined) {
      resolved.lost = msg.lost;
    }
    else {
      resolved.lost = false
    }

    if (msg.matches !== undefined) {
      resolved.matches = msg.matches;
    }
    else {
      resolved.matches = 0
    }

    if (msg.inliers !== undefined) {
      resolved.inliers = msg.inliers;
    }
    else {
      resolved.inliers = 0
    }

    if (msg.icpInliersRatio !== undefined) {
      resolved.icpInliersRatio = msg.icpInliersRatio;
    }
    else {
      resolved.icpInliersRatio = 0.0
    }

    if (msg.covariance !== undefined) {
      resolved.covariance = msg.covariance;
    }
    else {
      resolved.covariance = new Array(36).fill(0)
    }

    if (msg.features !== undefined) {
      resolved.features = msg.features;
    }
    else {
      resolved.features = 0
    }

    if (msg.localMapSize !== undefined) {
      resolved.localMapSize = msg.localMapSize;
    }
    else {
      resolved.localMapSize = 0
    }

    if (msg.localScanMapSize !== undefined) {
      resolved.localScanMapSize = msg.localScanMapSize;
    }
    else {
      resolved.localScanMapSize = 0
    }

    if (msg.localKeyFrames !== undefined) {
      resolved.localKeyFrames = msg.localKeyFrames;
    }
    else {
      resolved.localKeyFrames = 0
    }

    if (msg.localBundleOutliers !== undefined) {
      resolved.localBundleOutliers = msg.localBundleOutliers;
    }
    else {
      resolved.localBundleOutliers = 0
    }

    if (msg.localBundleConstraints !== undefined) {
      resolved.localBundleConstraints = msg.localBundleConstraints;
    }
    else {
      resolved.localBundleConstraints = 0
    }

    if (msg.localBundleTime !== undefined) {
      resolved.localBundleTime = msg.localBundleTime;
    }
    else {
      resolved.localBundleTime = 0.0
    }

    if (msg.keyFrameAdded !== undefined) {
      resolved.keyFrameAdded = msg.keyFrameAdded;
    }
    else {
      resolved.keyFrameAdded = false
    }

    if (msg.timeEstimation !== undefined) {
      resolved.timeEstimation = msg.timeEstimation;
    }
    else {
      resolved.timeEstimation = 0.0
    }

    if (msg.timeParticleFiltering !== undefined) {
      resolved.timeParticleFiltering = msg.timeParticleFiltering;
    }
    else {
      resolved.timeParticleFiltering = 0.0
    }

    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = 0.0
    }

    if (msg.interval !== undefined) {
      resolved.interval = msg.interval;
    }
    else {
      resolved.interval = 0.0
    }

    if (msg.distanceTravelled !== undefined) {
      resolved.distanceTravelled = msg.distanceTravelled;
    }
    else {
      resolved.distanceTravelled = 0.0
    }

    if (msg.transform !== undefined) {
      resolved.transform = geometry_msgs.msg.Transform.Resolve(msg.transform)
    }
    else {
      resolved.transform = new geometry_msgs.msg.Transform()
    }

    if (msg.transformFiltered !== undefined) {
      resolved.transformFiltered = geometry_msgs.msg.Transform.Resolve(msg.transformFiltered)
    }
    else {
      resolved.transformFiltered = new geometry_msgs.msg.Transform()
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.wordsKeys !== undefined) {
      resolved.wordsKeys = msg.wordsKeys;
    }
    else {
      resolved.wordsKeys = []
    }

    if (msg.wordsValues !== undefined) {
      resolved.wordsValues = new Array(msg.wordsValues.length);
      for (let i = 0; i < resolved.wordsValues.length; ++i) {
        resolved.wordsValues[i] = KeyPoint.Resolve(msg.wordsValues[i]);
      }
    }
    else {
      resolved.wordsValues = []
    }

    if (msg.wordMatches !== undefined) {
      resolved.wordMatches = msg.wordMatches;
    }
    else {
      resolved.wordMatches = []
    }

    if (msg.wordInliers !== undefined) {
      resolved.wordInliers = msg.wordInliers;
    }
    else {
      resolved.wordInliers = []
    }

    if (msg.localMapKeys !== undefined) {
      resolved.localMapKeys = msg.localMapKeys;
    }
    else {
      resolved.localMapKeys = []
    }

    if (msg.localMapValues !== undefined) {
      resolved.localMapValues = new Array(msg.localMapValues.length);
      for (let i = 0; i < resolved.localMapValues.length; ++i) {
        resolved.localMapValues[i] = Point3f.Resolve(msg.localMapValues[i]);
      }
    }
    else {
      resolved.localMapValues = []
    }

    if (msg.localScanMap !== undefined) {
      resolved.localScanMap = msg.localScanMap;
    }
    else {
      resolved.localScanMap = []
    }

    if (msg.refCorners !== undefined) {
      resolved.refCorners = new Array(msg.refCorners.length);
      for (let i = 0; i < resolved.refCorners.length; ++i) {
        resolved.refCorners[i] = Point2f.Resolve(msg.refCorners[i]);
      }
    }
    else {
      resolved.refCorners = []
    }

    if (msg.newCorners !== undefined) {
      resolved.newCorners = new Array(msg.newCorners.length);
      for (let i = 0; i < resolved.newCorners.length; ++i) {
        resolved.newCorners[i] = Point2f.Resolve(msg.newCorners[i]);
      }
    }
    else {
      resolved.newCorners = []
    }

    if (msg.cornerInliers !== undefined) {
      resolved.cornerInliers = msg.cornerInliers;
    }
    else {
      resolved.cornerInliers = []
    }

    return resolved;
    }
};

module.exports = OdomInfo;
