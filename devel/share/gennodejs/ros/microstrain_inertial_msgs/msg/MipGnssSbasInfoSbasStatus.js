// Auto-generated. Do not edit!

// (in-package microstrain_inertial_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MipGnssSbasInfoSbasStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.range_available = null;
      this.corrections_available = null;
      this.integrity_available = null;
      this.test_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('range_available')) {
        this.range_available = initObj.range_available
      }
      else {
        this.range_available = false;
      }
      if (initObj.hasOwnProperty('corrections_available')) {
        this.corrections_available = initObj.corrections_available
      }
      else {
        this.corrections_available = false;
      }
      if (initObj.hasOwnProperty('integrity_available')) {
        this.integrity_available = initObj.integrity_available
      }
      else {
        this.integrity_available = false;
      }
      if (initObj.hasOwnProperty('test_mode')) {
        this.test_mode = initObj.test_mode
      }
      else {
        this.test_mode = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MipGnssSbasInfoSbasStatus
    // Serialize message field [range_available]
    bufferOffset = _serializer.bool(obj.range_available, buffer, bufferOffset);
    // Serialize message field [corrections_available]
    bufferOffset = _serializer.bool(obj.corrections_available, buffer, bufferOffset);
    // Serialize message field [integrity_available]
    bufferOffset = _serializer.bool(obj.integrity_available, buffer, bufferOffset);
    // Serialize message field [test_mode]
    bufferOffset = _serializer.bool(obj.test_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MipGnssSbasInfoSbasStatus
    let len;
    let data = new MipGnssSbasInfoSbasStatus(null);
    // Deserialize message field [range_available]
    data.range_available = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [corrections_available]
    data.corrections_available = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [integrity_available]
    data.integrity_available = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [test_mode]
    data.test_mode = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'microstrain_inertial_msgs/MipGnssSbasInfoSbasStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd44b1dcf4b6c5470a42c909b93caefc4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message definition for the Sbas Status field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/gnss_recv_1/data/mip_field_gnss_sbas_info.htm?Highlight=sbas%20info
    #   Note: This message will never be published on it's own, only included in other messages.
    
    bool range_available
    bool corrections_available
    bool integrity_available
    bool test_mode
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MipGnssSbasInfoSbasStatus(null);
    if (msg.range_available !== undefined) {
      resolved.range_available = msg.range_available;
    }
    else {
      resolved.range_available = false
    }

    if (msg.corrections_available !== undefined) {
      resolved.corrections_available = msg.corrections_available;
    }
    else {
      resolved.corrections_available = false
    }

    if (msg.integrity_available !== undefined) {
      resolved.integrity_available = msg.integrity_available;
    }
    else {
      resolved.integrity_available = false
    }

    if (msg.test_mode !== undefined) {
      resolved.test_mode = msg.test_mode;
    }
    else {
      resolved.test_mode = false
    }

    return resolved;
    }
};

module.exports = MipGnssSbasInfoSbasStatus;
