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

class MipGnssFixInfoFixFlags {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sbas_used = null;
      this.dgnss_used = null;
    }
    else {
      if (initObj.hasOwnProperty('sbas_used')) {
        this.sbas_used = initObj.sbas_used
      }
      else {
        this.sbas_used = false;
      }
      if (initObj.hasOwnProperty('dgnss_used')) {
        this.dgnss_used = initObj.dgnss_used
      }
      else {
        this.dgnss_used = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MipGnssFixInfoFixFlags
    // Serialize message field [sbas_used]
    bufferOffset = _serializer.bool(obj.sbas_used, buffer, bufferOffset);
    // Serialize message field [dgnss_used]
    bufferOffset = _serializer.bool(obj.dgnss_used, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MipGnssFixInfoFixFlags
    let len;
    let data = new MipGnssFixInfoFixFlags(null);
    // Deserialize message field [sbas_used]
    data.sbas_used = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [dgnss_used]
    data.dgnss_used = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'microstrain_inertial_msgs/MipGnssFixInfoFixFlags';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '200751727401aacbfb01ffdee0995730';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message definition for the Fix Type field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/gnss_recv_1/data/mip_field_gnss_fix_info.htm?Highlight=fix%20info
    #   Note: This message will never be published on it's own, only included in other messages.
    
    bool sbas_used
    bool dgnss_used
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MipGnssFixInfoFixFlags(null);
    if (msg.sbas_used !== undefined) {
      resolved.sbas_used = msg.sbas_used;
    }
    else {
      resolved.sbas_used = false
    }

    if (msg.dgnss_used !== undefined) {
      resolved.dgnss_used = msg.dgnss_used;
    }
    else {
      resolved.dgnss_used = false
    }

    return resolved;
    }
};

module.exports = MipGnssFixInfoFixFlags;
