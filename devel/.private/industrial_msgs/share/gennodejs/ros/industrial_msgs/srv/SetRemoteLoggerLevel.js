// Auto-generated. Do not edit!

// (in-package industrial_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DebugLevel = require('../msg/DebugLevel.js');

//-----------------------------------------------------------

let ServiceReturnCode = require('../msg/ServiceReturnCode.js');

//-----------------------------------------------------------

class SetRemoteLoggerLevelRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.level = null;
    }
    else {
      if (initObj.hasOwnProperty('level')) {
        this.level = initObj.level
      }
      else {
        this.level = new DebugLevel();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetRemoteLoggerLevelRequest
    // Serialize message field [level]
    bufferOffset = DebugLevel.serialize(obj.level, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetRemoteLoggerLevelRequest
    let len;
    let data = new SetRemoteLoggerLevelRequest(null);
    // Deserialize message field [level]
    data.level = DebugLevel.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'industrial_msgs/SetRemoteLoggerLevelRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3a0089a136293a269fa1a44788ce9777';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    
    industrial_msgs/DebugLevel level
    
    ================================================================================
    MSG: industrial_msgs/DebugLevel
    # Debug level message enumeration.  This may replicate some functionality that
    # alreay exists in the ROS logger.
    # TODO: Get more information on the ROS Logger.
    uint8 val
    
    uint8 DEBUG = 5
    uint8 INFO = 4
    uint8 WARN = 3
    uint8 ERROR = 2
    uint8 FATAL = 1
    uint8 NONE = 0 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetRemoteLoggerLevelRequest(null);
    if (msg.level !== undefined) {
      resolved.level = DebugLevel.Resolve(msg.level)
    }
    else {
      resolved.level = new DebugLevel()
    }

    return resolved;
    }
};

class SetRemoteLoggerLevelResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.code = null;
    }
    else {
      if (initObj.hasOwnProperty('code')) {
        this.code = initObj.code
      }
      else {
        this.code = new ServiceReturnCode();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetRemoteLoggerLevelResponse
    // Serialize message field [code]
    bufferOffset = ServiceReturnCode.serialize(obj.code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetRemoteLoggerLevelResponse
    let len;
    let data = new SetRemoteLoggerLevelResponse(null);
    // Deserialize message field [code]
    data.code = ServiceReturnCode.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'industrial_msgs/SetRemoteLoggerLevelResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '50b1f38f75f5677e5692f3b3e7e1ea48';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    industrial_msgs/ServiceReturnCode code
    
    
    ================================================================================
    MSG: industrial_msgs/ServiceReturnCode
    # Service return codes for simple requests.  All ROS-Industrial service
    # replies are required to have a return code indicating success or failure
    # Specific return codes for different failure should be negative.
    int8 val
    
    int8 SUCCESS = 1
    int8 FAILURE = -1
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetRemoteLoggerLevelResponse(null);
    if (msg.code !== undefined) {
      resolved.code = ServiceReturnCode.Resolve(msg.code)
    }
    else {
      resolved.code = new ServiceReturnCode()
    }

    return resolved;
    }
};

module.exports = {
  Request: SetRemoteLoggerLevelRequest,
  Response: SetRemoteLoggerLevelResponse,
  md5sum() { return '4ae8385cb830c0d46129570c3394af54'; },
  datatype() { return 'industrial_msgs/SetRemoteLoggerLevel'; }
};
