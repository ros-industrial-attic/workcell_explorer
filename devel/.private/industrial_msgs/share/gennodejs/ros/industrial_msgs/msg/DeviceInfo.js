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

class DeviceInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.model = null;
      this.serial_number = null;
      this.hw_version = null;
      this.sw_version = null;
      this.address = null;
    }
    else {
      if (initObj.hasOwnProperty('model')) {
        this.model = initObj.model
      }
      else {
        this.model = '';
      }
      if (initObj.hasOwnProperty('serial_number')) {
        this.serial_number = initObj.serial_number
      }
      else {
        this.serial_number = '';
      }
      if (initObj.hasOwnProperty('hw_version')) {
        this.hw_version = initObj.hw_version
      }
      else {
        this.hw_version = '';
      }
      if (initObj.hasOwnProperty('sw_version')) {
        this.sw_version = initObj.sw_version
      }
      else {
        this.sw_version = '';
      }
      if (initObj.hasOwnProperty('address')) {
        this.address = initObj.address
      }
      else {
        this.address = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DeviceInfo
    // Serialize message field [model]
    bufferOffset = _serializer.string(obj.model, buffer, bufferOffset);
    // Serialize message field [serial_number]
    bufferOffset = _serializer.string(obj.serial_number, buffer, bufferOffset);
    // Serialize message field [hw_version]
    bufferOffset = _serializer.string(obj.hw_version, buffer, bufferOffset);
    // Serialize message field [sw_version]
    bufferOffset = _serializer.string(obj.sw_version, buffer, bufferOffset);
    // Serialize message field [address]
    bufferOffset = _serializer.string(obj.address, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DeviceInfo
    let len;
    let data = new DeviceInfo(null);
    // Deserialize message field [model]
    data.model = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [serial_number]
    data.serial_number = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [hw_version]
    data.hw_version = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [sw_version]
    data.sw_version = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [address]
    data.address = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.model.length;
    length += object.serial_number.length;
    length += object.hw_version.length;
    length += object.sw_version.length;
    length += object.address.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'industrial_msgs/DeviceInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '373ed7fa0fac92d443be9cd5198e80f0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DeviceInfo(null);
    if (msg.model !== undefined) {
      resolved.model = msg.model;
    }
    else {
      resolved.model = ''
    }

    if (msg.serial_number !== undefined) {
      resolved.serial_number = msg.serial_number;
    }
    else {
      resolved.serial_number = ''
    }

    if (msg.hw_version !== undefined) {
      resolved.hw_version = msg.hw_version;
    }
    else {
      resolved.hw_version = ''
    }

    if (msg.sw_version !== undefined) {
      resolved.sw_version = msg.sw_version;
    }
    else {
      resolved.sw_version = ''
    }

    if (msg.address !== undefined) {
      resolved.address = msg.address;
    }
    else {
      resolved.address = ''
    }

    return resolved;
    }
};

module.exports = DeviceInfo;
