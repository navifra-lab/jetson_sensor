// Auto-generated. Do not edit!

// (in-package microstrain_inertial_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MipHeader = require('./MipHeader.js');
let MipGnssCorrectionsRtkCorrectionsStatusEpochStatus = require('./MipGnssCorrectionsRtkCorrectionsStatusEpochStatus.js');
let MipGnssCorrectionsRtkCorrectionsStatusDongleStatus = require('./MipGnssCorrectionsRtkCorrectionsStatusDongleStatus.js');

//-----------------------------------------------------------

class MipGnssCorrectionsRtkCorrectionsStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.time_of_week = null;
      this.week_number = null;
      this.epoch_status = null;
      this.dongle_status = null;
      this.gps_correction_latency = null;
      this.glonass_correction_latency = null;
      this.galileo_correction_latency = null;
      this.beidou_correction_latency = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new MipHeader();
      }
      if (initObj.hasOwnProperty('time_of_week')) {
        this.time_of_week = initObj.time_of_week
      }
      else {
        this.time_of_week = 0.0;
      }
      if (initObj.hasOwnProperty('week_number')) {
        this.week_number = initObj.week_number
      }
      else {
        this.week_number = 0;
      }
      if (initObj.hasOwnProperty('epoch_status')) {
        this.epoch_status = initObj.epoch_status
      }
      else {
        this.epoch_status = new MipGnssCorrectionsRtkCorrectionsStatusEpochStatus();
      }
      if (initObj.hasOwnProperty('dongle_status')) {
        this.dongle_status = initObj.dongle_status
      }
      else {
        this.dongle_status = new MipGnssCorrectionsRtkCorrectionsStatusDongleStatus();
      }
      if (initObj.hasOwnProperty('gps_correction_latency')) {
        this.gps_correction_latency = initObj.gps_correction_latency
      }
      else {
        this.gps_correction_latency = 0.0;
      }
      if (initObj.hasOwnProperty('glonass_correction_latency')) {
        this.glonass_correction_latency = initObj.glonass_correction_latency
      }
      else {
        this.glonass_correction_latency = 0.0;
      }
      if (initObj.hasOwnProperty('galileo_correction_latency')) {
        this.galileo_correction_latency = initObj.galileo_correction_latency
      }
      else {
        this.galileo_correction_latency = 0.0;
      }
      if (initObj.hasOwnProperty('beidou_correction_latency')) {
        this.beidou_correction_latency = initObj.beidou_correction_latency
      }
      else {
        this.beidou_correction_latency = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MipGnssCorrectionsRtkCorrectionsStatus
    // Serialize message field [header]
    bufferOffset = MipHeader.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [time_of_week]
    bufferOffset = _serializer.float64(obj.time_of_week, buffer, bufferOffset);
    // Serialize message field [week_number]
    bufferOffset = _serializer.uint16(obj.week_number, buffer, bufferOffset);
    // Serialize message field [epoch_status]
    bufferOffset = MipGnssCorrectionsRtkCorrectionsStatusEpochStatus.serialize(obj.epoch_status, buffer, bufferOffset);
    // Serialize message field [dongle_status]
    bufferOffset = MipGnssCorrectionsRtkCorrectionsStatusDongleStatus.serialize(obj.dongle_status, buffer, bufferOffset);
    // Serialize message field [gps_correction_latency]
    bufferOffset = _serializer.float32(obj.gps_correction_latency, buffer, bufferOffset);
    // Serialize message field [glonass_correction_latency]
    bufferOffset = _serializer.float32(obj.glonass_correction_latency, buffer, bufferOffset);
    // Serialize message field [galileo_correction_latency]
    bufferOffset = _serializer.float32(obj.galileo_correction_latency, buffer, bufferOffset);
    // Serialize message field [beidou_correction_latency]
    bufferOffset = _serializer.float32(obj.beidou_correction_latency, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MipGnssCorrectionsRtkCorrectionsStatus
    let len;
    let data = new MipGnssCorrectionsRtkCorrectionsStatus(null);
    // Deserialize message field [header]
    data.header = MipHeader.deserialize(buffer, bufferOffset);
    // Deserialize message field [time_of_week]
    data.time_of_week = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [week_number]
    data.week_number = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [epoch_status]
    data.epoch_status = MipGnssCorrectionsRtkCorrectionsStatusEpochStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [dongle_status]
    data.dongle_status = MipGnssCorrectionsRtkCorrectionsStatusDongleStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [gps_correction_latency]
    data.gps_correction_latency = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [glonass_correction_latency]
    data.glonass_correction_latency = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [galileo_correction_latency]
    data.galileo_correction_latency = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [beidou_correction_latency]
    data.beidou_correction_latency = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MipHeader.getMessageSize(object.header);
    return length + 45;
  }

  static datatype() {
    // Returns string type for a message object
    return 'microstrain_inertial_msgs/MipGnssCorrectionsRtkCorrectionsStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a2de1c3721150da51fc4cbcdbe40ed22';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message definition for the MIP field https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/gnss_corrections/data/mip_field_gnss_rtk_corrections_status.htm
    
    # Header containing common information
    #   header.frame_id has no meaning in this message
    microstrain_inertial_msgs/MipHeader header
    
    # GPS time of week (seconds)
    float64 time_of_week
    
    # GPS weeks since 1980 (weeks)
    uint16 week_number
    
    # Parsed out version of the Epoch Status bitfield
    microstrain_inertial_msgs/MipGnssCorrectionsRtkCorrectionsStatusEpochStatus epoch_status
    
    # Parsed out version of the Dongle Status bitfield
    microstrain_inertial_msgs/MipGnssCorrectionsRtkCorrectionsStatusDongleStatus dongle_status
    
    # Latency of last GPS correction (seconds)
    float32 gps_correction_latency
    
    # Latency of last GLONASS correction (seconds)
    float32 glonass_correction_latency
    
    # Latency of last Galileo correction (seconds)
    float32 galileo_correction_latency
    
    # Latency of last Beidou correction (seconds)
    float32 beidou_correction_latency
    
    ================================================================================
    MSG: microstrain_inertial_msgs/MipHeader
    # Represents a standard header that all MIP fields should include at the beginning of their message definition
    #   Note: This message will never be published on it's own, only included in other messages
    
    # Standard ROS header.
    #   header.stamp will always be populated with the ROS time that this message was populated
    #   header.frame_id is dependent on the full message definition. Most messages will not use this
    std_msgs/Header header
    
    # If the message was triggered by an event, this will be set, otherwise it will be set to 0 (will be 0 most of the time)
    # For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_event_source.htm
    uint8 event_source
    
    # Reference timestamp of when the data was sampled if the device supports it. For devices that do not support this, it will always be 0
    # For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_reference_timestamp.htm
    uint64 reference_timestamp
    
    # GPS timestamp of when the data was sampled if the device supports it
    # For more information, see: https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/shared_data/data/mip_field_shared_gps_timestamp.htm
    # Note that this timestamp may be blank in certain messages, but there will often be equivalent fields in the messages
    microstrain_inertial_msgs/MipGpsTimestamp gps_timestamp
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: microstrain_inertial_msgs/MipGpsTimestamp
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
    ================================================================================
    MSG: microstrain_inertial_msgs/MipGnssCorrectionsRtkCorrectionsStatusEpochStatus
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
    ================================================================================
    MSG: microstrain_inertial_msgs/MipGnssCorrectionsRtkCorrectionsStatusDongleStatus
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
    const resolved = new MipGnssCorrectionsRtkCorrectionsStatus(null);
    if (msg.header !== undefined) {
      resolved.header = MipHeader.Resolve(msg.header)
    }
    else {
      resolved.header = new MipHeader()
    }

    if (msg.time_of_week !== undefined) {
      resolved.time_of_week = msg.time_of_week;
    }
    else {
      resolved.time_of_week = 0.0
    }

    if (msg.week_number !== undefined) {
      resolved.week_number = msg.week_number;
    }
    else {
      resolved.week_number = 0
    }

    if (msg.epoch_status !== undefined) {
      resolved.epoch_status = MipGnssCorrectionsRtkCorrectionsStatusEpochStatus.Resolve(msg.epoch_status)
    }
    else {
      resolved.epoch_status = new MipGnssCorrectionsRtkCorrectionsStatusEpochStatus()
    }

    if (msg.dongle_status !== undefined) {
      resolved.dongle_status = MipGnssCorrectionsRtkCorrectionsStatusDongleStatus.Resolve(msg.dongle_status)
    }
    else {
      resolved.dongle_status = new MipGnssCorrectionsRtkCorrectionsStatusDongleStatus()
    }

    if (msg.gps_correction_latency !== undefined) {
      resolved.gps_correction_latency = msg.gps_correction_latency;
    }
    else {
      resolved.gps_correction_latency = 0.0
    }

    if (msg.glonass_correction_latency !== undefined) {
      resolved.glonass_correction_latency = msg.glonass_correction_latency;
    }
    else {
      resolved.glonass_correction_latency = 0.0
    }

    if (msg.galileo_correction_latency !== undefined) {
      resolved.galileo_correction_latency = msg.galileo_correction_latency;
    }
    else {
      resolved.galileo_correction_latency = 0.0
    }

    if (msg.beidou_correction_latency !== undefined) {
      resolved.beidou_correction_latency = msg.beidou_correction_latency;
    }
    else {
      resolved.beidou_correction_latency = 0.0
    }

    return resolved;
    }
};

module.exports = MipGnssCorrectionsRtkCorrectionsStatus;
