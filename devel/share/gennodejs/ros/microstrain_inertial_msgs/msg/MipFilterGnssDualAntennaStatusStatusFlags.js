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

class MipFilterGnssDualAntennaStatusStatusFlags {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rcv_1_data_valid = null;
      this.rcv_2_data_valid = null;
      this.antenna_offsets_valid = null;
    }
    else {
      if (initObj.hasOwnProperty('rcv_1_data_valid')) {
        this.rcv_1_data_valid = initObj.rcv_1_data_valid
      }
      else {
        this.rcv_1_data_valid = false;
      }
      if (initObj.hasOwnProperty('rcv_2_data_valid')) {
        this.rcv_2_data_valid = initObj.rcv_2_data_valid
      }
      else {
        this.rcv_2_data_valid = false;
      }
      if (initObj.hasOwnProperty('antenna_offsets_valid')) {
        this.antenna_offsets_valid = initObj.antenna_offsets_valid
      }
      else {
        this.antenna_offsets_valid = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MipFilterGnssDualAntennaStatusStatusFlags
    // Serialize message field [rcv_1_data_valid]
    bufferOffset = _serializer.bool(obj.rcv_1_data_valid, buffer, bufferOffset);
    // Serialize message field [rcv_2_data_valid]
    bufferOffset = _serializer.bool(obj.rcv_2_data_valid, buffer, bufferOffset);
    // Serialize message field [antenna_offsets_valid]
    bufferOffset = _serializer.bool(obj.antenna_offsets_valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MipFilterGnssDualAntennaStatusStatusFlags
    let len;
    let data = new MipFilterGnssDualAntennaStatusStatusFlags(null);
    // Deserialize message field [rcv_1_data_valid]
    data.rcv_1_data_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rcv_2_data_valid]
    data.rcv_2_data_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [antenna_offsets_valid]
    data.antenna_offsets_valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'microstrain_inertial_msgs/MipFilterGnssDualAntennaStatusStatusFlags';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '606778f7e3bc3fceb7877383568e2671';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message definition for Status Flags field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_gnss_dual_antenna_status.htm?Highlight=dual%20antenna
    #   Note: This message will never be published on it's own, only included in other messages.
    
    bool rcv_1_data_valid
    bool rcv_2_data_valid
    bool antenna_offsets_valid
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MipFilterGnssDualAntennaStatusStatusFlags(null);
    if (msg.rcv_1_data_valid !== undefined) {
      resolved.rcv_1_data_valid = msg.rcv_1_data_valid;
    }
    else {
      resolved.rcv_1_data_valid = false
    }

    if (msg.rcv_2_data_valid !== undefined) {
      resolved.rcv_2_data_valid = msg.rcv_2_data_valid;
    }
    else {
      resolved.rcv_2_data_valid = false
    }

    if (msg.antenna_offsets_valid !== undefined) {
      resolved.antenna_offsets_valid = msg.antenna_offsets_valid;
    }
    else {
      resolved.antenna_offsets_valid = false
    }

    return resolved;
    }
};

module.exports = MipFilterGnssDualAntennaStatusStatusFlags;
