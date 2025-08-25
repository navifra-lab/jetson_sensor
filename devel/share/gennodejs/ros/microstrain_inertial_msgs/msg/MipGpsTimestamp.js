// Auto-generated. Do not edit!

// (in-package microstrain_inertial_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MipGpsTimestampValidFlags = require('./MipGpsTimestampValidFlags.js');

//-----------------------------------------------------------

class MipGpsTimestamp {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tow = null;
      this.week_number = null;
      this.valid_flags = null;
    }
    else {
      if (initObj.hasOwnProperty('tow')) {
        this.tow = initObj.tow
      }
      else {
        this.tow = 0.0;
      }
      if (initObj.hasOwnProperty('week_number')) {
        this.week_number = initObj.week_number
      }
      else {
        this.week_number = 0;
      }
      if (initObj.hasOwnProperty('valid_flags')) {
        this.valid_flags = initObj.valid_flags
      }
      else {
        this.valid_flags = new MipGpsTimestampValidFlags();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MipGpsTimestamp
    // Serialize message field [tow]
    bufferOffset = _serializer.float64(obj.tow, buffer, bufferOffset);
    // Serialize message field [week_number]
    bufferOffset = _serializer.uint16(obj.week_number, buffer, bufferOffset);
    // Serialize message field [valid_flags]
    bufferOffset = MipGpsTimestampValidFlags.serialize(obj.valid_flags, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MipGpsTimestamp
    let len;
    let data = new MipGpsTimestamp(null);
    // Deserialize message field [tow]
    data.tow = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [week_number]
    data.week_number = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [valid_flags]
    data.valid_flags = MipGpsTimestampValidFlags.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'microstrain_inertial_msgs/MipGpsTimestamp';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dff12f3cfc94aed05021c19e947f2a66';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Definition of a GPS timestamp.
    # For more information see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm
    #   Note: This message will never be published on it's own, only included in other messages
    
    # GPS time of week (seconds)
    float64 tow
    
    # GPS Week number since 1980 (weeks)
    uint16 week_number
    
    # Valid Flags bitfield
    microstrain_inertial_msgs/MipGpsTimestampValidFlags valid_flags
    ================================================================================
    MSG: microstrain_inertial_msgs/MipGpsTimestampValidFlags
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
    const resolved = new MipGpsTimestamp(null);
    if (msg.tow !== undefined) {
      resolved.tow = msg.tow;
    }
    else {
      resolved.tow = 0.0
    }

    if (msg.week_number !== undefined) {
      resolved.week_number = msg.week_number;
    }
    else {
      resolved.week_number = 0
    }

    if (msg.valid_flags !== undefined) {
      resolved.valid_flags = MipGpsTimestampValidFlags.Resolve(msg.valid_flags)
    }
    else {
      resolved.valid_flags = new MipGpsTimestampValidFlags()
    }

    return resolved;
    }
};

module.exports = MipGpsTimestamp;
