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

class TriState {
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
    // Serializes a message object of type TriState
    // Serialize message field [val]
    bufferOffset = _serializer.int8(obj.val, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TriState
    let len;
    let data = new TriState(null);
    // Deserialize message field [val]
    data.val = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'industrial_msgs/TriState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'deb03829f3c2d0f1b647fa38d7087952';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # The tri-state captures boolean values with the additional state of unknown
    
    int8 val
    
    # enumerated values
    
    # Unknown or unavailable 
    int8 UNKNOWN=-1  
    
    # High state                       
    int8 TRUE=1
    int8 ON=1
    int8 ENABLED=1
    int8 HIGH=1
    int8 CLOSED=1
    
    # Low state
    int8 FALSE=0
    int8 OFF=0
    int8 DISABLED=0
    int8 LOW=0
    int8 OPEN=0
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TriState(null);
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
TriState.Constants = {
  UNKNOWN: -1,
  TRUE: 1,
  ON: 1,
  ENABLED: 1,
  HIGH: 1,
  CLOSED: 1,
  FALSE: 0,
  OFF: 0,
  DISABLED: 0,
  LOW: 0,
  OPEN: 0,
}

module.exports = TriState;
