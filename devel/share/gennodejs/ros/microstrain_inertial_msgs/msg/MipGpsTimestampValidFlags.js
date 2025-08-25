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

class MipGpsTimestampValidFlags {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tow = null;
      this.week_number = null;
      this.time_valid = null;
    }
    else {
      if (initObj.hasOwnProperty('tow')) {
        this.tow = initObj.tow
      }
      else {
        this.tow = false;
      }
      if (initObj.hasOwnProperty('week_number')) {
        this.week_number = initObj.week_number
      }
      else {
        this.week_number = false;
      }
      if (initObj.hasOwnProperty('time_valid')) {
        this.time_valid = initObj.time_valid
      }
      else {
        this.time_valid = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MipGpsTimestampValidFlags
    // Serialize message field [tow]
    bufferOffset = _serializer.bool(obj.tow, buffer, bufferOffset);
    // Serialize message field [week_number]
    bufferOffset = _serializer.bool(obj.week_number, buffer, bufferOffset);
    // Serialize message field [time_valid]
    bufferOffset = _serializer.bool(obj.time_valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MipGpsTimestampValidFlags
    let len;
    let data = new MipGpsTimestampValidFlags(null);
    // Deserialize message field [tow]
    data.tow = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [week_number]
    data.week_number = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [time_valid]
    data.time_valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'microstrain_inertial_msgs/MipGpsTimestampValidFlags';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '50384058bd1cca07930272238284e5b7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message definition for the valid_flags field of https://files.microstrain.com/CV7+Online/external_content/dcp/Data/0xff/data/0xd3.htm
    #   Note: This message will never be published on it's own, only included in other messages.
    
    # Whole number seconds TOW has been set
    bool tow
    
    # Week number has been set
    bool week_number
    
    # Both TOW and Week Number have been set
    bool time_valid
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MipGpsTimestampValidFlags(null);
    if (msg.tow !== undefined) {
      resolved.tow = msg.tow;
    }
    else {
      resolved.tow = false
    }

    if (msg.week_number !== undefined) {
      resolved.week_number = msg.week_number;
    }
    else {
      resolved.week_number = false
    }

    if (msg.time_valid !== undefined) {
      resolved.time_valid = msg.time_valid;
    }
    else {
      resolved.time_valid = false
    }

    return resolved;
    }
};

module.exports = MipGpsTimestampValidFlags;
