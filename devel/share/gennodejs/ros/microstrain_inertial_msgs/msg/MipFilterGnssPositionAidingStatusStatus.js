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

class MipFilterGnssPositionAidingStatusStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tight_coupling = null;
      this.differential = null;
      this.integer_fix = null;
      this.gps_l1 = null;
      this.gps_l2 = null;
      this.gps_l5 = null;
      this.glo_l1 = null;
      this.glo_l2 = null;
      this.gal_e1 = null;
      this.gal_e5 = null;
      this.gal_e6 = null;
      this.bei_b1 = null;
      this.bei_b2 = null;
      this.bei_b3 = null;
      this.no_fix = null;
      this.config_error = null;
    }
    else {
      if (initObj.hasOwnProperty('tight_coupling')) {
        this.tight_coupling = initObj.tight_coupling
      }
      else {
        this.tight_coupling = false;
      }
      if (initObj.hasOwnProperty('differential')) {
        this.differential = initObj.differential
      }
      else {
        this.differential = false;
      }
      if (initObj.hasOwnProperty('integer_fix')) {
        this.integer_fix = initObj.integer_fix
      }
      else {
        this.integer_fix = false;
      }
      if (initObj.hasOwnProperty('gps_l1')) {
        this.gps_l1 = initObj.gps_l1
      }
      else {
        this.gps_l1 = false;
      }
      if (initObj.hasOwnProperty('gps_l2')) {
        this.gps_l2 = initObj.gps_l2
      }
      else {
        this.gps_l2 = false;
      }
      if (initObj.hasOwnProperty('gps_l5')) {
        this.gps_l5 = initObj.gps_l5
      }
      else {
        this.gps_l5 = false;
      }
      if (initObj.hasOwnProperty('glo_l1')) {
        this.glo_l1 = initObj.glo_l1
      }
      else {
        this.glo_l1 = false;
      }
      if (initObj.hasOwnProperty('glo_l2')) {
        this.glo_l2 = initObj.glo_l2
      }
      else {
        this.glo_l2 = false;
      }
      if (initObj.hasOwnProperty('gal_e1')) {
        this.gal_e1 = initObj.gal_e1
      }
      else {
        this.gal_e1 = false;
      }
      if (initObj.hasOwnProperty('gal_e5')) {
        this.gal_e5 = initObj.gal_e5
      }
      else {
        this.gal_e5 = false;
      }
      if (initObj.hasOwnProperty('gal_e6')) {
        this.gal_e6 = initObj.gal_e6
      }
      else {
        this.gal_e6 = false;
      }
      if (initObj.hasOwnProperty('bei_b1')) {
        this.bei_b1 = initObj.bei_b1
      }
      else {
        this.bei_b1 = false;
      }
      if (initObj.hasOwnProperty('bei_b2')) {
        this.bei_b2 = initObj.bei_b2
      }
      else {
        this.bei_b2 = false;
      }
      if (initObj.hasOwnProperty('bei_b3')) {
        this.bei_b3 = initObj.bei_b3
      }
      else {
        this.bei_b3 = false;
      }
      if (initObj.hasOwnProperty('no_fix')) {
        this.no_fix = initObj.no_fix
      }
      else {
        this.no_fix = false;
      }
      if (initObj.hasOwnProperty('config_error')) {
        this.config_error = initObj.config_error
      }
      else {
        this.config_error = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MipFilterGnssPositionAidingStatusStatus
    // Serialize message field [tight_coupling]
    bufferOffset = _serializer.bool(obj.tight_coupling, buffer, bufferOffset);
    // Serialize message field [differential]
    bufferOffset = _serializer.bool(obj.differential, buffer, bufferOffset);
    // Serialize message field [integer_fix]
    bufferOffset = _serializer.bool(obj.integer_fix, buffer, bufferOffset);
    // Serialize message field [gps_l1]
    bufferOffset = _serializer.bool(obj.gps_l1, buffer, bufferOffset);
    // Serialize message field [gps_l2]
    bufferOffset = _serializer.bool(obj.gps_l2, buffer, bufferOffset);
    // Serialize message field [gps_l5]
    bufferOffset = _serializer.bool(obj.gps_l5, buffer, bufferOffset);
    // Serialize message field [glo_l1]
    bufferOffset = _serializer.bool(obj.glo_l1, buffer, bufferOffset);
    // Serialize message field [glo_l2]
    bufferOffset = _serializer.bool(obj.glo_l2, buffer, bufferOffset);
    // Serialize message field [gal_e1]
    bufferOffset = _serializer.bool(obj.gal_e1, buffer, bufferOffset);
    // Serialize message field [gal_e5]
    bufferOffset = _serializer.bool(obj.gal_e5, buffer, bufferOffset);
    // Serialize message field [gal_e6]
    bufferOffset = _serializer.bool(obj.gal_e6, buffer, bufferOffset);
    // Serialize message field [bei_b1]
    bufferOffset = _serializer.bool(obj.bei_b1, buffer, bufferOffset);
    // Serialize message field [bei_b2]
    bufferOffset = _serializer.bool(obj.bei_b2, buffer, bufferOffset);
    // Serialize message field [bei_b3]
    bufferOffset = _serializer.bool(obj.bei_b3, buffer, bufferOffset);
    // Serialize message field [no_fix]
    bufferOffset = _serializer.bool(obj.no_fix, buffer, bufferOffset);
    // Serialize message field [config_error]
    bufferOffset = _serializer.bool(obj.config_error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MipFilterGnssPositionAidingStatusStatus
    let len;
    let data = new MipFilterGnssPositionAidingStatusStatus(null);
    // Deserialize message field [tight_coupling]
    data.tight_coupling = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [differential]
    data.differential = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [integer_fix]
    data.integer_fix = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gps_l1]
    data.gps_l1 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gps_l2]
    data.gps_l2 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gps_l5]
    data.gps_l5 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [glo_l1]
    data.glo_l1 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [glo_l2]
    data.glo_l2 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gal_e1]
    data.gal_e1 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gal_e5]
    data.gal_e5 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gal_e6]
    data.gal_e6 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [bei_b1]
    data.bei_b1 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [bei_b2]
    data.bei_b2 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [bei_b3]
    data.bei_b3 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [no_fix]
    data.no_fix = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [config_error]
    data.config_error = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'microstrain_inertial_msgs/MipFilterGnssPositionAidingStatusStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '16a70154d04cba5f7c01e663ddb16c49';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message definition for the Status field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_gnss_pos_aid_status.htm?Highlight=gnss%20position%20aiding
    #   Note: This message will never be published on it's own, only included in other messages.
    
    bool tight_coupling  # If 1, the Kalman filter is processing raw range information from this GNSS module
    bool differential    # If 1, the Kalman filter is processing RTK corrections from this GNSS module
    bool integer_fix     # If 1, the Kalman filter has an RTK integer fix from this GNSS module, indicating the best position performance possible
    bool gps_l1          # If 1, the Kalman filter is using GPS L1 measurements
    bool gps_l2          # If 1, the Kalman filter is using GPS L2 measurements
    bool gps_l5          # If 1, the Kalman filter is using GPS L5 measurements
    bool glo_l1          # If 1, the Kalman filter is using GLONASS L1 measurements
    bool glo_l2          # If 1, the Kalman filter is using GLONASS L2 measurements
    bool gal_e1          # If 1, the Kalman filter is using Galileo E1 measurements
    bool gal_e5          # If 1, the Kalman filter is using Galileo E5 measurements
    bool gal_e6          # If 1, the Kalman filter is using Galileo E6 measurements
    bool bei_b1          # If 1, the Kalman filter is using Beidou B1 measurements (not enabled on GQ7 currently)
    bool bei_b2          # If 1, the Kalman filter is using Beidou B2 measurements (not enabled on GQ7 currently)
    bool bei_b3          # If 1, the Kalman filter is using Beidou B3 measurements (not enabled on GQ7 currently)
    bool no_fix          # If 1, this GNSS module is reporting no position fix
    bool config_error    # If 1, there is likely an issue with the antenna offset for this GNSS module
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MipFilterGnssPositionAidingStatusStatus(null);
    if (msg.tight_coupling !== undefined) {
      resolved.tight_coupling = msg.tight_coupling;
    }
    else {
      resolved.tight_coupling = false
    }

    if (msg.differential !== undefined) {
      resolved.differential = msg.differential;
    }
    else {
      resolved.differential = false
    }

    if (msg.integer_fix !== undefined) {
      resolved.integer_fix = msg.integer_fix;
    }
    else {
      resolved.integer_fix = false
    }

    if (msg.gps_l1 !== undefined) {
      resolved.gps_l1 = msg.gps_l1;
    }
    else {
      resolved.gps_l1 = false
    }

    if (msg.gps_l2 !== undefined) {
      resolved.gps_l2 = msg.gps_l2;
    }
    else {
      resolved.gps_l2 = false
    }

    if (msg.gps_l5 !== undefined) {
      resolved.gps_l5 = msg.gps_l5;
    }
    else {
      resolved.gps_l5 = false
    }

    if (msg.glo_l1 !== undefined) {
      resolved.glo_l1 = msg.glo_l1;
    }
    else {
      resolved.glo_l1 = false
    }

    if (msg.glo_l2 !== undefined) {
      resolved.glo_l2 = msg.glo_l2;
    }
    else {
      resolved.glo_l2 = false
    }

    if (msg.gal_e1 !== undefined) {
      resolved.gal_e1 = msg.gal_e1;
    }
    else {
      resolved.gal_e1 = false
    }

    if (msg.gal_e5 !== undefined) {
      resolved.gal_e5 = msg.gal_e5;
    }
    else {
      resolved.gal_e5 = false
    }

    if (msg.gal_e6 !== undefined) {
      resolved.gal_e6 = msg.gal_e6;
    }
    else {
      resolved.gal_e6 = false
    }

    if (msg.bei_b1 !== undefined) {
      resolved.bei_b1 = msg.bei_b1;
    }
    else {
      resolved.bei_b1 = false
    }

    if (msg.bei_b2 !== undefined) {
      resolved.bei_b2 = msg.bei_b2;
    }
    else {
      resolved.bei_b2 = false
    }

    if (msg.bei_b3 !== undefined) {
      resolved.bei_b3 = msg.bei_b3;
    }
    else {
      resolved.bei_b3 = false
    }

    if (msg.no_fix !== undefined) {
      resolved.no_fix = msg.no_fix;
    }
    else {
      resolved.no_fix = false
    }

    if (msg.config_error !== undefined) {
      resolved.config_error = msg.config_error;
    }
    else {
      resolved.config_error = false
    }

    return resolved;
    }
};

module.exports = MipFilterGnssPositionAidingStatusStatus;
