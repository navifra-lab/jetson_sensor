// Auto-generated. Do not edit!

// (in-package microstrain_inertial_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let MipBaseDeviceInfo = require('../msg/MipBaseDeviceInfo.js');

//-----------------------------------------------------------

class MipBaseGetDeviceInformationRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MipBaseGetDeviceInformationRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MipBaseGetDeviceInformationRequest
    let len;
    let data = new MipBaseGetDeviceInformationRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'microstrain_inertial_msgs/MipBaseGetDeviceInformationRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Service definition for the MIP command https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Commands/base_command/data/mip_cmd_base_get_device_info.htm
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MipBaseGetDeviceInformationRequest(null);
    return resolved;
    }
};

class MipBaseGetDeviceInformationResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.device_info = null;
    }
    else {
      if (initObj.hasOwnProperty('device_info')) {
        this.device_info = initObj.device_info
      }
      else {
        this.device_info = new MipBaseDeviceInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MipBaseGetDeviceInformationResponse
    // Serialize message field [device_info]
    bufferOffset = MipBaseDeviceInfo.serialize(obj.device_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MipBaseGetDeviceInformationResponse
    let len;
    let data = new MipBaseGetDeviceInformationResponse(null);
    // Deserialize message field [device_info]
    data.device_info = MipBaseDeviceInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MipBaseDeviceInfo.getMessageSize(object.device_info);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'microstrain_inertial_msgs/MipBaseGetDeviceInformationResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2c655b109370cba7cdc7620bb1869aa5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    microstrain_inertial_msgs/MipBaseDeviceInfo device_info
    
    ================================================================================
    MSG: microstrain_inertial_msgs/MipBaseDeviceInfo
    # Message definition for https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Commands/base_command/data/base_device_info.htm
    #   Note: This message will never be published on it's own, only included in other messages.
    string firmware_version  # String version of the firmware version on the device
    string model_name        # Model name (3DM-GQ7, 3DM-GX5, etc.)
    string model_number      # Model number (6284, 6285, etc.)
    string serial_number     # Serial number (6284.109766, 6285.13404, etc.)
    string lot_number        # Lot number
    string device_options    # Device options
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MipBaseGetDeviceInformationResponse(null);
    if (msg.device_info !== undefined) {
      resolved.device_info = MipBaseDeviceInfo.Resolve(msg.device_info)
    }
    else {
      resolved.device_info = new MipBaseDeviceInfo()
    }

    return resolved;
    }
};

module.exports = {
  Request: MipBaseGetDeviceInformationRequest,
  Response: MipBaseGetDeviceInformationResponse,
  md5sum() { return '2c655b109370cba7cdc7620bb1869aa5'; },
  datatype() { return 'microstrain_inertial_msgs/MipBaseGetDeviceInformation'; }
};
