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

class Mip3dmCaptureGyroBiasRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Mip3dmCaptureGyroBiasRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Mip3dmCaptureGyroBiasRequest
    let len;
    let data = new Mip3dmCaptureGyroBiasRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'microstrain_inertial_msgs/Mip3dmCaptureGyroBiasRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Service definition for the MIP command https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Commands/3dm_command/data/mip_cmd_3dm_capture_gyro_bias.htm?Highlight=capture%20gyro%20bias
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Mip3dmCaptureGyroBiasRequest(null);
    return resolved;
    }
};

class Mip3dmCaptureGyroBiasResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.bias = null;
    }
    else {
      if (initObj.hasOwnProperty('bias')) {
        this.bias = initObj.bias
      }
      else {
        this.bias = new Array(3).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Mip3dmCaptureGyroBiasResponse
    // Check that the constant length array field [bias] has the right length
    if (obj.bias.length !== 3) {
      throw new Error('Unable to serialize array field bias - length must be 3')
    }
    // Serialize message field [bias]
    bufferOffset = _arraySerializer.float32(obj.bias, buffer, bufferOffset, 3);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Mip3dmCaptureGyroBiasResponse
    let len;
    let data = new Mip3dmCaptureGyroBiasResponse(null);
    // Deserialize message field [bias]
    data.bias = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'microstrain_inertial_msgs/Mip3dmCaptureGyroBiasResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c3544fdea5e4e5d21daeac4669eef238';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[3] bias
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Mip3dmCaptureGyroBiasResponse(null);
    if (msg.bias !== undefined) {
      resolved.bias = msg.bias;
    }
    else {
      resolved.bias = new Array(3).fill(0)
    }

    return resolved;
    }
};

module.exports = {
  Request: Mip3dmCaptureGyroBiasRequest,
  Response: Mip3dmCaptureGyroBiasResponse,
  md5sum() { return 'c3544fdea5e4e5d21daeac4669eef238'; },
  datatype() { return 'microstrain_inertial_msgs/Mip3dmCaptureGyroBias'; }
};
