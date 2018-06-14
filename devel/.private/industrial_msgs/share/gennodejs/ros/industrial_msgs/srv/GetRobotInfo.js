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

let DeviceInfo = require('../msg/DeviceInfo.js');
let ServiceReturnCode = require('../msg/ServiceReturnCode.js');

//-----------------------------------------------------------

class GetRobotInfoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetRobotInfoRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetRobotInfoRequest
    let len;
    let data = new GetRobotInfoRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'industrial_msgs/GetRobotInfoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetRobotInfoRequest(null);
    return resolved;
    }
};

class GetRobotInfoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.controller = null;
      this.robots = null;
      this.code = null;
    }
    else {
      if (initObj.hasOwnProperty('controller')) {
        this.controller = initObj.controller
      }
      else {
        this.controller = new DeviceInfo();
      }
      if (initObj.hasOwnProperty('robots')) {
        this.robots = initObj.robots
      }
      else {
        this.robots = [];
      }
      if (initObj.hasOwnProperty('code')) {
        this.code = initObj.code
      }
      else {
        this.code = new ServiceReturnCode();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetRobotInfoResponse
    // Serialize message field [controller]
    bufferOffset = DeviceInfo.serialize(obj.controller, buffer, bufferOffset);
    // Serialize message field [robots]
    // Serialize the length for message field [robots]
    bufferOffset = _serializer.uint32(obj.robots.length, buffer, bufferOffset);
    obj.robots.forEach((val) => {
      bufferOffset = DeviceInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [code]
    bufferOffset = ServiceReturnCode.serialize(obj.code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetRobotInfoResponse
    let len;
    let data = new GetRobotInfoResponse(null);
    // Deserialize message field [controller]
    data.controller = DeviceInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [robots]
    // Deserialize array length for message field [robots]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.robots = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.robots[i] = DeviceInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [code]
    data.code = ServiceReturnCode.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += DeviceInfo.getMessageSize(object.controller);
    object.robots.forEach((val) => {
      length += DeviceInfo.getMessageSize(val);
    });
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'industrial_msgs/GetRobotInfoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5db3230b3e61c85a320b999ffd7f3b3f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    industrial_msgs/DeviceInfo controller
    industrial_msgs/DeviceInfo[] robots
    industrial_msgs/ServiceReturnCode code
    
    
    ================================================================================
    MSG: industrial_msgs/DeviceInfo
    # Device info captures device agnostic information about a piece of hardware.
    # This message is meant as a generic as possible.  Items that don't apply should
    # be left blank.  This message is not meant to replace diagnostic messages, but
    # rather provide a standard service message that can be used to populate standard
    # components (like a GUI for example)
    
    string model
    string serial_number
    string hw_version
    string sw_version
    string address
    
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
    const resolved = new GetRobotInfoResponse(null);
    if (msg.controller !== undefined) {
      resolved.controller = DeviceInfo.Resolve(msg.controller)
    }
    else {
      resolved.controller = new DeviceInfo()
    }

    if (msg.robots !== undefined) {
      resolved.robots = new Array(msg.robots.length);
      for (let i = 0; i < resolved.robots.length; ++i) {
        resolved.robots[i] = DeviceInfo.Resolve(msg.robots[i]);
      }
    }
    else {
      resolved.robots = []
    }

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
  Request: GetRobotInfoRequest,
  Response: GetRobotInfoResponse,
  md5sum() { return '5db3230b3e61c85a320b999ffd7f3b3f'; },
  datatype() { return 'industrial_msgs/GetRobotInfo'; }
};
