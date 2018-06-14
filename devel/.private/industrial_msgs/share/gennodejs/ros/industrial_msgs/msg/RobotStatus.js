// Auto-generated. Do not edit!

// (in-package industrial_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RobotMode = require('./RobotMode.js');
let TriState = require('./TriState.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RobotStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.mode = null;
      this.e_stopped = null;
      this.drives_powered = null;
      this.motion_possible = null;
      this.in_motion = null;
      this.in_error = null;
      this.error_code = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = new RobotMode();
      }
      if (initObj.hasOwnProperty('e_stopped')) {
        this.e_stopped = initObj.e_stopped
      }
      else {
        this.e_stopped = new TriState();
      }
      if (initObj.hasOwnProperty('drives_powered')) {
        this.drives_powered = initObj.drives_powered
      }
      else {
        this.drives_powered = new TriState();
      }
      if (initObj.hasOwnProperty('motion_possible')) {
        this.motion_possible = initObj.motion_possible
      }
      else {
        this.motion_possible = new TriState();
      }
      if (initObj.hasOwnProperty('in_motion')) {
        this.in_motion = initObj.in_motion
      }
      else {
        this.in_motion = new TriState();
      }
      if (initObj.hasOwnProperty('in_error')) {
        this.in_error = initObj.in_error
      }
      else {
        this.in_error = new TriState();
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = RobotMode.serialize(obj.mode, buffer, bufferOffset);
    // Serialize message field [e_stopped]
    bufferOffset = TriState.serialize(obj.e_stopped, buffer, bufferOffset);
    // Serialize message field [drives_powered]
    bufferOffset = TriState.serialize(obj.drives_powered, buffer, bufferOffset);
    // Serialize message field [motion_possible]
    bufferOffset = TriState.serialize(obj.motion_possible, buffer, bufferOffset);
    // Serialize message field [in_motion]
    bufferOffset = TriState.serialize(obj.in_motion, buffer, bufferOffset);
    // Serialize message field [in_error]
    bufferOffset = TriState.serialize(obj.in_error, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.int32(obj.error_code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotStatus
    let len;
    let data = new RobotStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = RobotMode.deserialize(buffer, bufferOffset);
    // Deserialize message field [e_stopped]
    data.e_stopped = TriState.deserialize(buffer, bufferOffset);
    // Deserialize message field [drives_powered]
    data.drives_powered = TriState.deserialize(buffer, bufferOffset);
    // Deserialize message field [motion_possible]
    data.motion_possible = TriState.deserialize(buffer, bufferOffset);
    // Deserialize message field [in_motion]
    data.in_motion = TriState.deserialize(buffer, bufferOffset);
    // Deserialize message field [in_error]
    data.in_error = TriState.deserialize(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'industrial_msgs/RobotStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b733cb45a38101840b75c4c0d6093d19';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # The RobotStatus message contains low level status information 
    # that is specific to an industrial robot controller
    
    # The header frame ID is not used
    Header header
    
    # The robot mode captures the operating mode of the robot.  When in
    # manual, remote motion is not possible.
    industrial_msgs/RobotMode mode
    
    # Estop status: True if robot is e-stopped.  The drives are disabled
    # and motion is not possible.  The e-stop condition must be acknowledged
    # and cleared before any motion can begin.
    industrial_msgs/TriState e_stopped
    
    # Drive power status: True if drives are powered.  Motion commands will 
    # automatically enable the drives if required.  Drive power is not requred
    # for possible motion
    industrial_msgs/TriState drives_powered
    
    # Motion enabled: True if robot motion is possible.
    industrial_msgs/TriState motion_possible
    
    # Motion status: True if robot is in motion, otherwise false
    industrial_msgs/TriState in_motion
    
    # Error status: True if there is an error condition on the robot. Motion may
    # or may not be affected (see motion_possible)
    industrial_msgs/TriState in_error
    
    # Error code: Vendor specific error code (non zero indicates error)
    int32 error_code
    
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
    MSG: industrial_msgs/RobotMode
    # The Robot mode message encapsulates the mode/teach state of the robot
    # Typically this is controlled by the pendant key switch, but not always
    
    int8 val
    
    # enumerated values
    int8 UNKNOWN=-1                 # Unknown or unavailable         
    int8 MANUAL=1 			 # Teach OR manual mode
    int8 AUTO=2                     # Automatic mode
    
    
    ================================================================================
    MSG: industrial_msgs/TriState
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
    const resolved = new RobotStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.mode !== undefined) {
      resolved.mode = RobotMode.Resolve(msg.mode)
    }
    else {
      resolved.mode = new RobotMode()
    }

    if (msg.e_stopped !== undefined) {
      resolved.e_stopped = TriState.Resolve(msg.e_stopped)
    }
    else {
      resolved.e_stopped = new TriState()
    }

    if (msg.drives_powered !== undefined) {
      resolved.drives_powered = TriState.Resolve(msg.drives_powered)
    }
    else {
      resolved.drives_powered = new TriState()
    }

    if (msg.motion_possible !== undefined) {
      resolved.motion_possible = TriState.Resolve(msg.motion_possible)
    }
    else {
      resolved.motion_possible = new TriState()
    }

    if (msg.in_motion !== undefined) {
      resolved.in_motion = TriState.Resolve(msg.in_motion)
    }
    else {
      resolved.in_motion = new TriState()
    }

    if (msg.in_error !== undefined) {
      resolved.in_error = TriState.Resolve(msg.in_error)
    }
    else {
      resolved.in_error = new TriState()
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = 0
    }

    return resolved;
    }
};

module.exports = RobotStatus;
