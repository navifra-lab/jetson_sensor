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

class MipGnssCorrectionsRtkCorrectionsStatusDongleStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.modem_state = null;
      this.connection_type = null;
      this.rssi = null;
      this.signal_quality = null;
      this.tower_change_indicator = null;
      this.nmea_timeout_flag = null;
      this.server_timeout_flag = null;
      this.rtcm_timeout_flag = null;
      this.device_out_of_range_flag = null;
      this.corrections_unavailable_flag = null;
    }
    else {
      if (initObj.hasOwnProperty('modem_state')) {
        this.modem_state = initObj.modem_state
      }
      else {
        this.modem_state = 0;
      }
      if (initObj.hasOwnProperty('connection_type')) {
        this.connection_type = initObj.connection_type
      }
      else {
        this.connection_type = 0;
      }
      if (initObj.hasOwnProperty('rssi')) {
        this.rssi = initObj.rssi
      }
      else {
        this.rssi = 0;
      }
      if (initObj.hasOwnProperty('signal_quality')) {
        this.signal_quality = initObj.signal_quality
      }
      else {
        this.signal_quality = 0;
      }
      if (initObj.hasOwnProperty('tower_change_indicator')) {
        this.tower_change_indicator = initObj.tower_change_indicator
      }
      else {
        this.tower_change_indicator = 0;
      }
      if (initObj.hasOwnProperty('nmea_timeout_flag')) {
        this.nmea_timeout_flag = initObj.nmea_timeout_flag
      }
      else {
        this.nmea_timeout_flag = false;
      }
      if (initObj.hasOwnProperty('server_timeout_flag')) {
        this.server_timeout_flag = initObj.server_timeout_flag
      }
      else {
        this.server_timeout_flag = false;
      }
      if (initObj.hasOwnProperty('rtcm_timeout_flag')) {
        this.rtcm_timeout_flag = initObj.rtcm_timeout_flag
      }
      else {
        this.rtcm_timeout_flag = false;
      }
      if (initObj.hasOwnProperty('device_out_of_range_flag')) {
        this.device_out_of_range_flag = initObj.device_out_of_range_flag
      }
      else {
        this.device_out_of_range_flag = false;
      }
      if (initObj.hasOwnProperty('corrections_unavailable_flag')) {
        this.corrections_unavailable_flag = initObj.corrections_unavailable_flag
      }
      else {
        this.corrections_unavailable_flag = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MipGnssCorrectionsRtkCorrectionsStatusDongleStatus
    // Serialize message field [modem_state]
    bufferOffset = _serializer.uint8(obj.modem_state, buffer, bufferOffset);
    // Serialize message field [connection_type]
    bufferOffset = _serializer.uint8(obj.connection_type, buffer, bufferOffset);
    // Serialize message field [rssi]
    bufferOffset = _serializer.int8(obj.rssi, buffer, bufferOffset);
    // Serialize message field [signal_quality]
    bufferOffset = _serializer.uint8(obj.signal_quality, buffer, bufferOffset);
    // Serialize message field [tower_change_indicator]
    bufferOffset = _serializer.uint8(obj.tower_change_indicator, buffer, bufferOffset);
    // Serialize message field [nmea_timeout_flag]
    bufferOffset = _serializer.bool(obj.nmea_timeout_flag, buffer, bufferOffset);
    // Serialize message field [server_timeout_flag]
    bufferOffset = _serializer.bool(obj.server_timeout_flag, buffer, bufferOffset);
    // Serialize message field [rtcm_timeout_flag]
    bufferOffset = _serializer.bool(obj.rtcm_timeout_flag, buffer, bufferOffset);
    // Serialize message field [device_out_of_range_flag]
    bufferOffset = _serializer.bool(obj.device_out_of_range_flag, buffer, bufferOffset);
    // Serialize message field [corrections_unavailable_flag]
    bufferOffset = _serializer.bool(obj.corrections_unavailable_flag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MipGnssCorrectionsRtkCorrectionsStatusDongleStatus
    let len;
    let data = new MipGnssCorrectionsRtkCorrectionsStatusDongleStatus(null);
    // Deserialize message field [modem_state]
    data.modem_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [connection_type]
    data.connection_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [rssi]
    data.rssi = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [signal_quality]
    data.signal_quality = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [tower_change_indicator]
    data.tower_change_indicator = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [nmea_timeout_flag]
    data.nmea_timeout_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [server_timeout_flag]
    data.server_timeout_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rtcm_timeout_flag]
    data.rtcm_timeout_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [device_out_of_range_flag]
    data.device_out_of_range_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [corrections_unavailable_flag]
    data.corrections_unavailable_flag = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'microstrain_inertial_msgs/MipGnssCorrectionsRtkCorrectionsStatusDongleStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c6b32ecff25b8d73f86e7e5db3fce5f8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message definition for the Dongle Status field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/gnss_corrections/data/mip_field_gnss_rtk_corrections_status.htm?Highlight=rtk%20status
    #   Note: This message will never be published on it's own, only included in other messages.
    
    # Modem State bits from the Dongle Status field. See MODEM_STATE_* enums for possible values
    uint8 modem_state
    
    # Connection Type bits from the Dongle Status field. See CONNECTION_TYPE_* enums for possible values
    uint8 connection_type
    
    # RSSI bits from the Dongle Status field. Units are in dBm
    int8 rssi
    
    # Signal Quality bits from the Dongle Status field.
    # 0-10 indication of signal quality, 0 means unavailable/invalid/not connected, 1 is poor, 10 is excellent.
    uint8 signal_quality
    
    # Tower Change Indicator bits from the Dongle Status field.
    # 4-bit value that increments each time a cell tower change occurs. Rolls over from 15 to 0.
    uint8 tower_change_indicator
    
    # NMEA Timeout Flag bit from the Dongle Status field.
    # The device has not received a valid NMEA message from the GQ7 in the past 3 seconds
    bool nmea_timeout_flag
    
    # Server Timeout Flag bit from the Dongle Status field.
    # The device has not received any communications with the server in the past 3 seconds.
    bool server_timeout_flag
    
    # RTCM Timeout Flag bit from the Dongle Status field.
    # The device has not received a valid RTCM message from the server in the past 3 seconds.
    bool rtcm_timeout_flag
    
    # Device Out of Range Flag bit from the Dongle Status field
    # The device's reported position is beyond the server-side configured distance to a base station and will not receive corrections
    bool device_out_of_range_flag
    
    # Corrections Unavailable Flag bit from the Dongle Status field
    # The server is reporting that corrections are not available given the user's account settings
    bool corrections_unavailable_flag
    
    # Possible values for dongle_modem_state
    uint8 MODEM_STATE_OFF = 0
    uint8 MODEM_STATE_NO_NETWORK = 1
    uint8 MODEM_STATE_NETWORK_CONNECTED = 2
    uint8 MODEM_STATE_CONFIGURING_DATA_CONTEXT = 3
    uint8 MODEM_STATE_ACTIVATING_DATA_CONTEXT = 4
    uint8 MODEM_STATE_CONFIGURING_SOCKET = 5
    uint8 MODEM_STATE_WAITING_ON_SERVER_HANDSHAKE = 6
    uint8 MODEM_STATE_CONNECTED_AND_IDLE = 7
    uint8 MODEM_STATE_CONNECTED_AND_STREAMING = 8
    
    # Possible values for dongle_connection_type
    uint8 CONNECTION_TYPE_NO_CONNECTION = 0
    uint8 CONNECTION_TYPE_CONNECTION_2G = 2
    uint8 CONNECTION_TYPE_CONNECTION_3G = 3
    uint8 CONNECTION_TYPE_CONNECTION_4G = 4
    uint8 CONNECTION_TYPE_CONNECTION_5G = 5
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MipGnssCorrectionsRtkCorrectionsStatusDongleStatus(null);
    if (msg.modem_state !== undefined) {
      resolved.modem_state = msg.modem_state;
    }
    else {
      resolved.modem_state = 0
    }

    if (msg.connection_type !== undefined) {
      resolved.connection_type = msg.connection_type;
    }
    else {
      resolved.connection_type = 0
    }

    if (msg.rssi !== undefined) {
      resolved.rssi = msg.rssi;
    }
    else {
      resolved.rssi = 0
    }

    if (msg.signal_quality !== undefined) {
      resolved.signal_quality = msg.signal_quality;
    }
    else {
      resolved.signal_quality = 0
    }

    if (msg.tower_change_indicator !== undefined) {
      resolved.tower_change_indicator = msg.tower_change_indicator;
    }
    else {
      resolved.tower_change_indicator = 0
    }

    if (msg.nmea_timeout_flag !== undefined) {
      resolved.nmea_timeout_flag = msg.nmea_timeout_flag;
    }
    else {
      resolved.nmea_timeout_flag = false
    }

    if (msg.server_timeout_flag !== undefined) {
      resolved.server_timeout_flag = msg.server_timeout_flag;
    }
    else {
      resolved.server_timeout_flag = false
    }

    if (msg.rtcm_timeout_flag !== undefined) {
      resolved.rtcm_timeout_flag = msg.rtcm_timeout_flag;
    }
    else {
      resolved.rtcm_timeout_flag = false
    }

    if (msg.device_out_of_range_flag !== undefined) {
      resolved.device_out_of_range_flag = msg.device_out_of_range_flag;
    }
    else {
      resolved.device_out_of_range_flag = false
    }

    if (msg.corrections_unavailable_flag !== undefined) {
      resolved.corrections_unavailable_flag = msg.corrections_unavailable_flag;
    }
    else {
      resolved.corrections_unavailable_flag = false
    }

    return resolved;
    }
};

// Constants for message
MipGnssCorrectionsRtkCorrectionsStatusDongleStatus.Constants = {
  MODEM_STATE_OFF: 0,
  MODEM_STATE_NO_NETWORK: 1,
  MODEM_STATE_NETWORK_CONNECTED: 2,
  MODEM_STATE_CONFIGURING_DATA_CONTEXT: 3,
  MODEM_STATE_ACTIVATING_DATA_CONTEXT: 4,
  MODEM_STATE_CONFIGURING_SOCKET: 5,
  MODEM_STATE_WAITING_ON_SERVER_HANDSHAKE: 6,
  MODEM_STATE_CONNECTED_AND_IDLE: 7,
  MODEM_STATE_CONNECTED_AND_STREAMING: 8,
  CONNECTION_TYPE_NO_CONNECTION: 0,
  CONNECTION_TYPE_CONNECTION_2G: 2,
  CONNECTION_TYPE_CONNECTION_3G: 3,
  CONNECTION_TYPE_CONNECTION_4G: 4,
  CONNECTION_TYPE_CONNECTION_5G: 5,
}

module.exports = MipGnssCorrectionsRtkCorrectionsStatusDongleStatus;
