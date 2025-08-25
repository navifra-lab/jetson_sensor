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


//-----------------------------------------------------------

class Mip3dmGpioStateReadRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pin = null;
    }
    else {
      if (initObj.hasOwnProperty('pin')) {
        this.pin = initObj.pin
      }
      else {
        this.pin = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Mip3dmGpioStateReadRequest
    // Serialize message field [pin]
    bufferOffset = _serializer.uint8(obj.pin, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Mip3dmGpioStateReadRequest
    let len;
    let data = new Mip3dmGpioStateReadRequest(null);
    // Deserialize message field [pin]
    data.pin = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'microstrain_inertial_msgs/Mip3dmGpioStateReadRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '41386d6ac585eedbab7b4d4f9192cbcc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Service definition for the MIP command https://files.microstrain.com/GQ7+User+Manual/external_content/dcp/Commands/0x0c/data/0x42.htm
    
    # GPIO pin number counting from 1 which you want to read the configuration for
    uint8 pin
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Mip3dmGpioStateReadRequest(null);
    if (msg.pin !== undefined) {
      resolved.pin = msg.pin;
    }
    else {
      resolved.pin = 0
    }

    return resolved;
    }
};

class Mip3dmGpioStateReadResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pin = null;
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('pin')) {
        this.pin = initObj.pin
      }
      else {
        this.pin = 0;
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Mip3dmGpioStateReadResponse
    // Serialize message field [pin]
    bufferOffset = _serializer.uint8(obj.pin, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.bool(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Mip3dmGpioStateReadResponse
    let len;
    let data = new Mip3dmGpioStateReadResponse(null);
    // Deserialize message field [pin]
    data.pin = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'microstrain_inertial_msgs/Mip3dmGpioStateReadResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '83707be3fa18d2ffe57381ea034aa262';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # GPIO pin number counting from 1. Cannot be 0.
    uint8 pin
    
    # The pin state
    bool state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Mip3dmGpioStateReadResponse(null);
    if (msg.pin !== undefined) {
      resolved.pin = msg.pin;
    }
    else {
      resolved.pin = 0
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = false
    }

    return resolved;
    }
};

module.exports = {
  Request: Mip3dmGpioStateReadRequest,
  Response: Mip3dmGpioStateReadResponse,
  md5sum() { return '93f849169a0e8031b7d96348e252c870'; },
  datatype() { return 'microstrain_inertial_msgs/Mip3dmGpioStateRead'; }
};
