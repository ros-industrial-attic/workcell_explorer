
"use strict";

let SetDrivePower = require('./SetDrivePower.js')
let StartMotion = require('./StartMotion.js')
let StopMotion = require('./StopMotion.js')
let GetRobotInfo = require('./GetRobotInfo.js')
let CmdJointTrajectory = require('./CmdJointTrajectory.js')
let SetRemoteLoggerLevel = require('./SetRemoteLoggerLevel.js')

module.exports = {
  SetDrivePower: SetDrivePower,
  StartMotion: StartMotion,
  StopMotion: StopMotion,
  GetRobotInfo: GetRobotInfo,
  CmdJointTrajectory: CmdJointTrajectory,
  SetRemoteLoggerLevel: SetRemoteLoggerLevel,
};
