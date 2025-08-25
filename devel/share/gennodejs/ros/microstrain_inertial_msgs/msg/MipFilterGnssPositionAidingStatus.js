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
let MipFilterGnssPositionAidingStatusStatus = require('./MipFilterGnssPositionAidingStatusStatus.js');

//-----------------------------------------------------------

class MipFilterGnssPositionAidingStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.receiver_id = null;
      this.time_of_week = null;
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new MipHeader();
      }
      if (initObj.hasOwnProperty('receiver_id')) {
        this.receiver_id = initObj.receiver_id
      }
      else {
        this.receiver_id = 0;
      }
      if (initObj.hasOwnProperty('time_of_week')) {
        this.time_of_week = initObj.time_of_week
      }
      else {
        this.time_of_week = 0.0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = new MipFilterGnssPositionAidingStatusStatus();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MipFilterGnssPositionAidingStatus
    // Serialize message field [header]
    bufferOffset = MipHeader.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [receiver_id]
    bufferOffset = _serializer.uint8(obj.receiver_id, buffer, bufferOffset);
    // Serialize message field [time_of_week]
    bufferOffset = _serializer.float64(obj.time_of_week, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = MipFilterGnssPositionAidingStatusStatus.serialize(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MipFilterGnssPositionAidingStatus
    let len;
    let data = new MipFilterGnssPositionAidingStatus(null);
    // Deserialize message field [header]
    data.header = MipHeader.deserialize(buffer, bufferOffset);
    // Deserialize message field [receiver_id]
    data.receiver_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [time_of_week]
    data.time_of_week = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = MipFilterGnssPositionAidingStatusStatus.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MipHeader.getMessageSize(object.header);
    return length + 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'microstrain_inertial_msgs/MipFilterGnssPositionAidingStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '97f8979b7a4f7e85d0f8ea4ee09129ed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message definition for the MIP field https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_gnss_pos_aid_status.htm
    
    # Header containing common information
    #   header.frame_id has no meaning in this message
    microstrain_inertial_msgs/MipHeader header
    
    # Receiver ID. For GQ7, this will be 1 for GNSS1 and 2 for GNSS2
    uint8 receiver_id
    
    # Last GNSS aiding measurement time of week (seconds)
    float64 time_of_week
    
    # Parsed out version of the status bit field
    microstrain_inertial_msgs/MipFilterGnssPositionAidingStatusStatus status
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
    MSG: microstrain_inertial_msgs/MipFilterGnssPositionAidingStatusStatus
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
    const resolved = new MipFilterGnssPositionAidingStatus(null);
    if (msg.header !== undefined) {
      resolved.header = MipHeader.Resolve(msg.header)
    }
    else {
      resolved.header = new MipHeader()
    }

    if (msg.receiver_id !== undefined) {
      resolved.receiver_id = msg.receiver_id;
    }
    else {
      resolved.receiver_id = 0
    }

    if (msg.time_of_week !== undefined) {
      resolved.time_of_week = msg.time_of_week;
    }
    else {
      resolved.time_of_week = 0.0
    }

    if (msg.status !== undefined) {
      resolved.status = MipFilterGnssPositionAidingStatusStatus.Resolve(msg.status)
    }
    else {
      resolved.status = new MipFilterGnssPositionAidingStatusStatus()
    }

    return resolved;
    }
};

module.exports = MipFilterGnssPositionAidingStatus;
