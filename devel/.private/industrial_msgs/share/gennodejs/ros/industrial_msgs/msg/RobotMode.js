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

class RobotMode {
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
    // Serializes a message object of type RobotMode
    // Serialize message field [val]
    bufferOffset = _serializer.int8(obj.val, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotMode
    let len;
    let data = new RobotMode(null);
    // Deserialize message field [val]
    data.val = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'industrial_msgs/RobotMode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '24ac279e988b6b3db836e437e6ed1ba0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # The Robot mode message encapsulates the mode/teach state of the robot
    # Typically this is controlled by the pendant key switch, but not always
    
    int8 val
    
    # enumerated values
    int8 UNKNOWN=-1                 # Unknown or unavailable         
    int8 MANUAL=1 			 # Teach OR manual mode
    int8 AUTO=2                     # Automatic mode
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotMode(null);
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
RobotMode.Constants = {
  UNKNOWN: -1,
  MANUAL: 1,
  AUTO: 2,
}

module.exports = RobotMode;
