// Auto-generated. Do not edit!

// (in-package industrial_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class DebugLevel {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.val = null;
    }
    else {
      if (initObj.hasOwnProperty('val')) {
        this.val = initObj.val
      }
      else {
        this.val = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DebugLevel
    // Serialize message field [val]
    bufferOffset = _serializer.uint8(obj.val, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DebugLevel
    let len;
    let data = new DebugLevel(null);
    // Deserialize message field [val]
    data.val = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'industrial_msgs/DebugLevel';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5bfde194fd95d83abdb02a03ee48fbe7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new DebugLevel(null);
    if (msg.val !== undefined) {
      resolved.val = msg.val;
    }
    else {
      resolved.val = 0
    }

    return resolved;
    }
};

// Constants for message
DebugLevel.Constants = {
  DEBUG: 5,
  INFO: 4,
  WARN: 3,
  ERROR: 2,
  FATAL: 1,
  NONE: 0,
}

module.exports = DebugLevel;
