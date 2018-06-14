// Auto-generated. Do not edit!

// (in-package industrial_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let ServiceReturnCode = require('../msg/ServiceReturnCode.js');

//-----------------------------------------------------------

class SetDrivePowerRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.drive_power = null;
    }
    else {
      if (initObj.hasOwnProperty('drive_power')) {
        this.drive_power = initObj.drive_power
      }
      else {
        this.drive_power = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetDrivePowerRequest
    // Serialize message field [drive_power]
    bufferOffset = _serializer.bool(obj.drive_power, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetDrivePowerRequest
    let len;
    let data = new SetDrivePowerRequest(null);
    // Deserialize message field [drive_power]
    data.drive_power = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'industrial_msgs/SetDrivePowerRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ad0065fa1febb42851b8c0a0493a1234';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    bool drive_power
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetDrivePowerRequest(null);
    if (msg.drive_power !== undefined) {
      resolved.drive_power = msg.drive_power;
    }
    else {
      resolved.drive_power = false
    }

    return resolved;
    }
};

class SetDrivePowerResponse {
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
    // Serializes a message object of type SetDrivePowerResponse
    // Serialize message field [code]
    bufferOffset = ServiceReturnCode.serialize(obj.code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetDrivePowerResponse
    let len;
    let data = new SetDrivePowerResponse(null);
    // Deserialize message field [code]
    data.code = ServiceReturnCode.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'industrial_msgs/SetDrivePowerResponse';
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
    const resolved = new SetDrivePowerResponse(null);
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
  Request: SetDrivePowerRequest,
  Response: SetDrivePowerResponse,
  md5sum() { return '89dc29b38aedf0d168daa33da97de48a'; },
  datatype() { return 'industrial_msgs/SetDrivePower'; }
};
