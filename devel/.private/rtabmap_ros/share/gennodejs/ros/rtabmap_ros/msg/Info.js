// Auto-generated. Do not edit!

// (in-package rtabmap_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Info {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.refId = null;
      this.loopClosureId = null;
      this.proximityDetectionId = null;
      this.loopClosureTransform = null;
      this.posteriorKeys = null;
      this.posteriorValues = null;
      this.likelihoodKeys = null;
      this.likelihoodValues = null;
      this.rawLikelihoodKeys = null;
      this.rawLikelihoodValues = null;
      this.weightsKeys = null;
      this.weightsValues = null;
      this.statsKeys = null;
      this.statsValues = null;
      this.localPath = null;
      this.currentGoalId = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('refId')) {
        this.refId = initObj.refId
      }
      else {
        this.refId = 0;
      }
      if (initObj.hasOwnProperty('loopClosureId')) {
        this.loopClosureId = initObj.loopClosureId
      }
      else {
        this.loopClosureId = 0;
      }
      if (initObj.hasOwnProperty('proximityDetectionId')) {
        this.proximityDetectionId = initObj.proximityDetectionId
      }
      else {
        this.proximityDetectionId = 0;
      }
      if (initObj.hasOwnProperty('loopClosureTransform')) {
        this.loopClosureTransform = initObj.loopClosureTransform
      }
      else {
        this.loopClosureTransform = new geometry_msgs.msg.Transform();
      }
      if (initObj.hasOwnProperty('posteriorKeys')) {
        this.posteriorKeys = initObj.posteriorKeys
      }
      else {
        this.posteriorKeys = [];
      }
      if (initObj.hasOwnProperty('posteriorValues')) {
        this.posteriorValues = initObj.posteriorValues
      }
      else {
        this.posteriorValues = [];
      }
      if (initObj.hasOwnProperty('likelihoodKeys')) {
        this.likelihoodKeys = initObj.likelihoodKeys
      }
      else {
        this.likelihoodKeys = [];
      }
      if (initObj.hasOwnProperty('likelihoodValues')) {
        this.likelihoodValues = initObj.likelihoodValues
      }
      else {
        this.likelihoodValues = [];
      }
      if (initObj.hasOwnProperty('rawLikelihoodKeys')) {
        this.rawLikelihoodKeys = initObj.rawLikelihoodKeys
      }
      else {
        this.rawLikelihoodKeys = [];
      }
      if (initObj.hasOwnProperty('rawLikelihoodValues')) {
        this.rawLikelihoodValues = initObj.rawLikelihoodValues
      }
      else {
        this.rawLikelihoodValues = [];
      }
      if (initObj.hasOwnProperty('weightsKeys')) {
        this.weightsKeys = initObj.weightsKeys
      }
      else {
        this.weightsKeys = [];
      }
      if (initObj.hasOwnProperty('weightsValues')) {
        this.weightsValues = initObj.weightsValues
      }
      else {
        this.weightsValues = [];
      }
      if (initObj.hasOwnProperty('statsKeys')) {
        this.statsKeys = initObj.statsKeys
      }
      else {
        this.statsKeys = [];
      }
      if (initObj.hasOwnProperty('statsValues')) {
        this.statsValues = initObj.statsValues
      }
      else {
        this.statsValues = [];
      }
      if (initObj.hasOwnProperty('localPath')) {
        this.localPath = initObj.localPath
      }
      else {
        this.localPath = [];
      }
      if (initObj.hasOwnProperty('currentGoalId')) {
        this.currentGoalId = initObj.currentGoalId
      }
      else {
        this.currentGoalId = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Info
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [refId]
    bufferOffset = _serializer.int32(obj.refId, buffer, bufferOffset);
    // Serialize message field [loopClosureId]
    bufferOffset = _serializer.int32(obj.loopClosureId, buffer, bufferOffset);
    // Serialize message field [proximityDetectionId]
    bufferOffset = _serializer.int32(obj.proximityDetectionId, buffer, bufferOffset);
    // Serialize message field [loopClosureTransform]
    bufferOffset = geometry_msgs.msg.Transform.serialize(obj.loopClosureTransform, buffer, bufferOffset);
    // Serialize message field [posteriorKeys]
    bufferOffset = _arraySerializer.int32(obj.posteriorKeys, buffer, bufferOffset, null);
    // Serialize message field [posteriorValues]
    bufferOffset = _arraySerializer.float32(obj.posteriorValues, buffer, bufferOffset, null);
    // Serialize message field [likelihoodKeys]
    bufferOffset = _arraySerializer.int32(obj.likelihoodKeys, buffer, bufferOffset, null);
    // Serialize message field [likelihoodValues]
    bufferOffset = _arraySerializer.float32(obj.likelihoodValues, buffer, bufferOffset, null);
    // Serialize message field [rawLikelihoodKeys]
    bufferOffset = _arraySerializer.int32(obj.rawLikelihoodKeys, buffer, bufferOffset, null);
    // Serialize message field [rawLikelihoodValues]
    bufferOffset = _arraySerializer.float32(obj.rawLikelihoodValues, buffer, bufferOffset, null);
    // Serialize message field [weightsKeys]
    bufferOffset = _arraySerializer.int32(obj.weightsKeys, buffer, bufferOffset, null);
    // Serialize message field [weightsValues]
    bufferOffset = _arraySerializer.int32(obj.weightsValues, buffer, bufferOffset, null);
    // Serialize message field [statsKeys]
    bufferOffset = _arraySerializer.string(obj.statsKeys, buffer, bufferOffset, null);
    // Serialize message field [statsValues]
    bufferOffset = _arraySerializer.float32(obj.statsValues, buffer, bufferOffset, null);
    // Serialize message field [localPath]
    bufferOffset = _arraySerializer.int32(obj.localPath, buffer, bufferOffset, null);
    // Serialize message field [currentGoalId]
    bufferOffset = _serializer.int32(obj.currentGoalId, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Info
    let len;
    let data = new Info(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [refId]
    data.refId = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [loopClosureId]
    data.loopClosureId = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [proximityDetectionId]
    data.proximityDetectionId = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [loopClosureTransform]
    data.loopClosureTransform = geometry_msgs.msg.Transform.deserialize(buffer, bufferOffset);
    // Deserialize message field [posteriorKeys]
    data.posteriorKeys = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [posteriorValues]
    data.posteriorValues = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [likelihoodKeys]
    data.likelihoodKeys = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [likelihoodValues]
    data.likelihoodValues = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [rawLikelihoodKeys]
    data.rawLikelihoodKeys = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [rawLikelihoodValues]
    data.rawLikelihoodValues = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [weightsKeys]
    data.weightsKeys = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [weightsValues]
    data.weightsValues = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [statsKeys]
    data.statsKeys = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [statsValues]
    data.statsValues = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [localPath]
    data.localPath = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [currentGoalId]
    data.currentGoalId = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.posteriorKeys.length;
    length += 4 * object.posteriorValues.length;
    length += 4 * object.likelihoodKeys.length;
    length += 4 * object.likelihoodValues.length;
    length += 4 * object.rawLikelihoodKeys.length;
    length += 4 * object.rawLikelihoodValues.length;
    length += 4 * object.weightsKeys.length;
    length += 4 * object.weightsValues.length;
    object.statsKeys.forEach((val) => {
      length += 4 + val.length;
    });
    length += 4 * object.statsValues.length;
    length += 4 * object.localPath.length;
    return length + 116;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rtabmap_ros/Info';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a3319209ed98ef442877eb716ab8963b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    ########################################
    # RTAB-Map info with statistics 
    ########################################
    
    Header header
    
    int32 refId
    int32 loopClosureId
    int32 proximityDetectionId
    
    geometry_msgs/Transform loopClosureTransform
    
    ####
    # For statistics...
    ####
    # std::map<int, float> posterior;
    int32[] posteriorKeys
    float32[] posteriorValues
    
    # std::map<int, float> likelihood;
    int32[] likelihoodKeys
    float32[] likelihoodValues
    
    # std::map<int, float> rawLikelihood;
    int32[] rawLikelihoodKeys
    float32[] rawLikelihoodValues
    
    # std::map<int, int> weights;
    int32[] weightsKeys
    int32[] weightsValues
    
    # std::map<std::string, float> stats
    string[] statsKeys
    float32[] statsValues
    
    # std::vector<int> localPath
    int32[] localPath
    int32 currentGoalId
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Info(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.refId !== undefined) {
      resolved.refId = msg.refId;
    }
    else {
      resolved.refId = 0
    }

    if (msg.loopClosureId !== undefined) {
      resolved.loopClosureId = msg.loopClosureId;
    }
    else {
      resolved.loopClosureId = 0
    }

    if (msg.proximityDetectionId !== undefined) {
      resolved.proximityDetectionId = msg.proximityDetectionId;
    }
    else {
      resolved.proximityDetectionId = 0
    }

    if (msg.loopClosureTransform !== undefined) {
      resolved.loopClosureTransform = geometry_msgs.msg.Transform.Resolve(msg.loopClosureTransform)
    }
    else {
      resolved.loopClosureTransform = new geometry_msgs.msg.Transform()
    }

    if (msg.posteriorKeys !== undefined) {
      resolved.posteriorKeys = msg.posteriorKeys;
    }
    else {
      resolved.posteriorKeys = []
    }

    if (msg.posteriorValues !== undefined) {
      resolved.posteriorValues = msg.posteriorValues;
    }
    else {
      resolved.posteriorValues = []
    }

    if (msg.likelihoodKeys !== undefined) {
      resolved.likelihoodKeys = msg.likelihoodKeys;
    }
    else {
      resolved.likelihoodKeys = []
    }

    if (msg.likelihoodValues !== undefined) {
      resolved.likelihoodValues = msg.likelihoodValues;
    }
    else {
      resolved.likelihoodValues = []
    }

    if (msg.rawLikelihoodKeys !== undefined) {
      resolved.rawLikelihoodKeys = msg.rawLikelihoodKeys;
    }
    else {
      resolved.rawLikelihoodKeys = []
    }

    if (msg.rawLikelihoodValues !== undefined) {
      resolved.rawLikelihoodValues = msg.rawLikelihoodValues;
    }
    else {
      resolved.rawLikelihoodValues = []
    }

    if (msg.weightsKeys !== undefined) {
      resolved.weightsKeys = msg.weightsKeys;
    }
    else {
      resolved.weightsKeys = []
    }

    if (msg.weightsValues !== undefined) {
      resolved.weightsValues = msg.weightsValues;
    }
    else {
      resolved.weightsValues = []
    }

    if (msg.statsKeys !== undefined) {
      resolved.statsKeys = msg.statsKeys;
    }
    else {
      resolved.statsKeys = []
    }

    if (msg.statsValues !== undefined) {
      resolved.statsValues = msg.statsValues;
    }
    else {
      resolved.statsValues = []
    }

    if (msg.localPath !== undefined) {
      resolved.localPath = msg.localPath;
    }
    else {
      resolved.localPath = []
    }

    if (msg.currentGoalId !== undefined) {
      resolved.currentGoalId = msg.currentGoalId;
    }
    else {
      resolved.currentGoalId = 0
    }

    return resolved;
    }
};

module.exports = Info;
