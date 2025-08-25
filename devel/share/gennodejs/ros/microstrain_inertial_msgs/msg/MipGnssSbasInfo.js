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
let MipGnssSbasInfoSbasStatus = require('./MipGnssSbasInfoSbasStatus.js');

//-----------------------------------------------------------

class MipGnssSbasInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.time_of_week = null;
      this.week_number = null;
      this.sbas_system = null;
      this.sbas_id = null;
      this.count = null;
      this.sbas_status = null;
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
      if (initObj.hasOwnProperty('sbas_system')) {
        this.sbas_system = initObj.sbas_system
      }
      else {
        this.sbas_system = 0;
      }
      if (initObj.hasOwnProperty('sbas_id')) {
        this.sbas_id = initObj.sbas_id
      }
      else {
        this.sbas_id = 0;
      }
      if (initObj.hasOwnProperty('count')) {
        this.count = initObj.count
      }
      else {
        this.count = 0;
      }
      if (initObj.hasOwnProperty('sbas_status')) {
        this.sbas_status = initObj.sbas_status
      }
      else {
        this.sbas_status = new MipGnssSbasInfoSbasStatus();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MipGnssSbasInfo
    // Serialize message field [header]
    bufferOffset = MipHeader.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [time_of_week]
    bufferOffset = _serializer.float64(obj.time_of_week, buffer, bufferOffset);
    // Serialize message field [week_number]
    bufferOffset = _serializer.uint16(obj.week_number, buffer, bufferOffset);
    // Serialize message field [sbas_system]
    bufferOffset = _serializer.uint8(obj.sbas_system, buffer, bufferOffset);
    // Serialize message field [sbas_id]
    bufferOffset = _serializer.uint8(obj.sbas_id, buffer, bufferOffset);
    // Serialize message field [count]
    bufferOffset = _serializer.uint8(obj.count, buffer, bufferOffset);
    // Serialize message field [sbas_status]
    bufferOffset = MipGnssSbasInfoSbasStatus.serialize(obj.sbas_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MipGnssSbasInfo
    let len;
    let data = new MipGnssSbasInfo(null);
    // Deserialize message field [header]
    data.header = MipHeader.deserialize(buffer, bufferOffset);
    // Deserialize message field [time_of_week]
    data.time_of_week = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [week_number]
    data.week_number = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [sbas_system]
    data.sbas_system = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sbas_id]
    data.sbas_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [count]
    data.count = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sbas_status]
    data.sbas_status = MipGnssSbasInfoSbasStatus.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MipHeader.getMessageSize(object.header);
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'microstrain_inertial_msgs/MipGnssSbasInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3bf8d39005d90e152e75be3cb6afe0a6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message definition for the MIP field https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/gnss_recv_1/data/mip_field_gnss_sbas_info.htm
    
    # Header containing common information
    #   header.frame_id has no meaning in this message
    microstrain_inertial_msgs/MipHeader header
    
    # GPS time of week (seconds)
    float64 time_of_week
    
    # GPS weeks since 1980 (weeks)
    uint16 week_number
    
    # SBAS system if. See SBAS_SYSTEM_* enums for possible values
    uint8 sbas_system
    
    # SBAS satellite id
    uint8 sbas_id
    
    # Number of SBAS corrections
    uint8 count
    
    # Parsed out version of the SBAS status bitfield
    microstrain_inertial_msgs/MipGnssSbasInfoSbasStatus sbas_status
    
    # Possible values for the sbas_system field
    uint8 SBAS_SYSTEM_UNKNOWN = 0
    uint8 SBAS_SYSTEM_WAAS    = 1
    uint8 SBAS_SYSTEM_EGNOS   = 2
    uint8 SBAS_SYSTEM_MSAS    = 3
    uint8 SBAS_SYSTEM_GAGAN   = 4
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
    MSG: microstrain_inertial_msgs/MipGnssSbasInfoSbasStatus
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
    const resolved = new MipGnssSbasInfo(null);
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

    if (msg.sbas_system !== undefined) {
      resolved.sbas_system = msg.sbas_system;
    }
    else {
      resolved.sbas_system = 0
    }

    if (msg.sbas_id !== undefined) {
      resolved.sbas_id = msg.sbas_id;
    }
    else {
      resolved.sbas_id = 0
    }

    if (msg.count !== undefined) {
      resolved.count = msg.count;
    }
    else {
      resolved.count = 0
    }

    if (msg.sbas_status !== undefined) {
      resolved.sbas_status = MipGnssSbasInfoSbasStatus.Resolve(msg.sbas_status)
    }
    else {
      resolved.sbas_status = new MipGnssSbasInfoSbasStatus()
    }

    return resolved;
    }
};

// Constants for message
MipGnssSbasInfo.Constants = {
  SBAS_SYSTEM_UNKNOWN: 0,
  SBAS_SYSTEM_WAAS: 1,
  SBAS_SYSTEM_EGNOS: 2,
  SBAS_SYSTEM_MSAS: 3,
  SBAS_SYSTEM_GAGAN: 4,
}

module.exports = MipGnssSbasInfo;
