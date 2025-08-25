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

class MipGnssCorrectionsRtkCorrectionsStatusEpochStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.antenna_location_received = null;
      this.antenna_description_received = null;
      this.gps_received = null;
      this.galileo_received = null;
      this.glonass_received = null;
      this.beidou_received = null;
      this.using_gps_msm_messages = null;
      this.using_glonass_msm_messages = null;
      this.dongle_status_read_failed = null;
    }
    else {
      if (initObj.hasOwnProperty('antenna_location_received')) {
        this.antenna_location_received = initObj.antenna_location_received
      }
      else {
        this.antenna_location_received = false;
      }
      if (initObj.hasOwnProperty('antenna_description_received')) {
        this.antenna_description_received = initObj.antenna_description_received
      }
      else {
        this.antenna_description_received = false;
      }
      if (initObj.hasOwnProperty('gps_received')) {
        this.gps_received = initObj.gps_received
      }
      else {
        this.gps_received = false;
      }
      if (initObj.hasOwnProperty('galileo_received')) {
        this.galileo_received = initObj.galileo_received
      }
      else {
        this.galileo_received = false;
      }
      if (initObj.hasOwnProperty('glonass_received')) {
        this.glonass_received = initObj.glonass_received
      }
      else {
        this.glonass_received = false;
      }
      if (initObj.hasOwnProperty('beidou_received')) {
        this.beidou_received = initObj.beidou_received
      }
      else {
        this.beidou_received = false;
      }
      if (initObj.hasOwnProperty('using_gps_msm_messages')) {
        this.using_gps_msm_messages = initObj.using_gps_msm_messages
      }
      else {
        this.using_gps_msm_messages = false;
      }
      if (initObj.hasOwnProperty('using_glonass_msm_messages')) {
        this.using_glonass_msm_messages = initObj.using_glonass_msm_messages
      }
      else {
        this.using_glonass_msm_messages = false;
      }
      if (initObj.hasOwnProperty('dongle_status_read_failed')) {
        this.dongle_status_read_failed = initObj.dongle_status_read_failed
      }
      else {
        this.dongle_status_read_failed = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MipGnssCorrectionsRtkCorrectionsStatusEpochStatus
    // Serialize message field [antenna_location_received]
    bufferOffset = _serializer.bool(obj.antenna_location_received, buffer, bufferOffset);
    // Serialize message field [antenna_description_received]
    bufferOffset = _serializer.bool(obj.antenna_description_received, buffer, bufferOffset);
    // Serialize message field [gps_received]
    bufferOffset = _serializer.bool(obj.gps_received, buffer, bufferOffset);
    // Serialize message field [galileo_received]
    bufferOffset = _serializer.bool(obj.galileo_received, buffer, bufferOffset);
    // Serialize message field [glonass_received]
    bufferOffset = _serializer.bool(obj.glonass_received, buffer, bufferOffset);
    // Serialize message field [beidou_received]
    bufferOffset = _serializer.bool(obj.beidou_received, buffer, bufferOffset);
    // Serialize message field [using_gps_msm_messages]
    bufferOffset = _serializer.bool(obj.using_gps_msm_messages, buffer, bufferOffset);
    // Serialize message field [using_glonass_msm_messages]
    bufferOffset = _serializer.bool(obj.using_glonass_msm_messages, buffer, bufferOffset);
    // Serialize message field [dongle_status_read_failed]
    bufferOffset = _serializer.bool(obj.dongle_status_read_failed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MipGnssCorrectionsRtkCorrectionsStatusEpochStatus
    let len;
    let data = new MipGnssCorrectionsRtkCorrectionsStatusEpochStatus(null);
    // Deserialize message field [antenna_location_received]
    data.antenna_location_received = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [antenna_description_received]
    data.antenna_description_received = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gps_received]
    data.gps_received = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [galileo_received]
    data.galileo_received = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [glonass_received]
    data.glonass_received = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [beidou_received]
    data.beidou_received = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [using_gps_msm_messages]
    data.using_gps_msm_messages = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [using_glonass_msm_messages]
    data.using_glonass_msm_messages = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [dongle_status_read_failed]
    data.dongle_status_read_failed = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'microstrain_inertial_msgs/MipGnssCorrectionsRtkCorrectionsStatusEpochStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '88d715db92e6df1db097b1ff798927c2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message definition for the Epoch Status field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/gnss_corrections/data/mip_field_gnss_rtk_corrections_status.htm?Highlight=rtk%20status
    #   Note: This message will never be published on it's own, only included in other messages.
    
    bool antenna_location_received
    bool antenna_description_received
    bool gps_received
    bool galileo_received
    bool glonass_received
    bool beidou_received
    bool using_gps_msm_messages  # Using MSM messages for GPS corrections instead of RTCM messages 1001-1004
    bool using_glonass_msm_messages  # Using MSM messages for GLONASS corrections instead of RTCM messages 1009-1012
    bool dongle_status_read_failed  # A read of the dongle status was attempted, but failed
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MipGnssCorrectionsRtkCorrectionsStatusEpochStatus(null);
    if (msg.antenna_location_received !== undefined) {
      resolved.antenna_location_received = msg.antenna_location_received;
    }
    else {
      resolved.antenna_location_received = false
    }

    if (msg.antenna_description_received !== undefined) {
      resolved.antenna_description_received = msg.antenna_description_received;
    }
    else {
      resolved.antenna_description_received = false
    }

    if (msg.gps_received !== undefined) {
      resolved.gps_received = msg.gps_received;
    }
    else {
      resolved.gps_received = false
    }

    if (msg.galileo_received !== undefined) {
      resolved.galileo_received = msg.galileo_received;
    }
    else {
      resolved.galileo_received = false
    }

    if (msg.glonass_received !== undefined) {
      resolved.glonass_received = msg.glonass_received;
    }
    else {
      resolved.glonass_received = false
    }

    if (msg.beidou_received !== undefined) {
      resolved.beidou_received = msg.beidou_received;
    }
    else {
      resolved.beidou_received = false
    }

    if (msg.using_gps_msm_messages !== undefined) {
      resolved.using_gps_msm_messages = msg.using_gps_msm_messages;
    }
    else {
      resolved.using_gps_msm_messages = false
    }

    if (msg.using_glonass_msm_messages !== undefined) {
      resolved.using_glonass_msm_messages = msg.using_glonass_msm_messages;
    }
    else {
      resolved.using_glonass_msm_messages = false
    }

    if (msg.dongle_status_read_failed !== undefined) {
      resolved.dongle_status_read_failed = msg.dongle_status_read_failed;
    }
    else {
      resolved.dongle_status_read_failed = false
    }

    return resolved;
    }
};

module.exports = MipGnssCorrectionsRtkCorrectionsStatusEpochStatus;
