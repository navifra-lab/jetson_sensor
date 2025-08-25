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
let MipFilterGnssDualAntennaStatusStatusFlags = require('./MipFilterGnssDualAntennaStatusStatusFlags.js');

//-----------------------------------------------------------

class MipFilterGnssDualAntennaStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.time_of_week = null;
      this.heading = null;
      this.heading_unc = null;
      this.fix_type = null;
      this.status_flags = null;
      this.valid_flags = null;
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
      if (initObj.hasOwnProperty('heading')) {
        this.heading = initObj.heading
      }
      else {
        this.heading = 0.0;
      }
      if (initObj.hasOwnProperty('heading_unc')) {
        this.heading_unc = initObj.heading_unc
      }
      else {
        this.heading_unc = 0.0;
      }
      if (initObj.hasOwnProperty('fix_type')) {
        this.fix_type = initObj.fix_type
      }
      else {
        this.fix_type = 0;
      }
      if (initObj.hasOwnProperty('status_flags')) {
        this.status_flags = initObj.status_flags
      }
      else {
        this.status_flags = new MipFilterGnssDualAntennaStatusStatusFlags();
      }
      if (initObj.hasOwnProperty('valid_flags')) {
        this.valid_flags = initObj.valid_flags
      }
      else {
        this.valid_flags = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MipFilterGnssDualAntennaStatus
    // Serialize message field [header]
    bufferOffset = MipHeader.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [time_of_week]
    bufferOffset = _serializer.float32(obj.time_of_week, buffer, bufferOffset);
    // Serialize message field [heading]
    bufferOffset = _serializer.float32(obj.heading, buffer, bufferOffset);
    // Serialize message field [heading_unc]
    bufferOffset = _serializer.float32(obj.heading_unc, buffer, bufferOffset);
    // Serialize message field [fix_type]
    bufferOffset = _serializer.uint8(obj.fix_type, buffer, bufferOffset);
    // Serialize message field [status_flags]
    bufferOffset = MipFilterGnssDualAntennaStatusStatusFlags.serialize(obj.status_flags, buffer, bufferOffset);
    // Serialize message field [valid_flags]
    bufferOffset = _serializer.uint16(obj.valid_flags, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MipFilterGnssDualAntennaStatus
    let len;
    let data = new MipFilterGnssDualAntennaStatus(null);
    // Deserialize message field [header]
    data.header = MipHeader.deserialize(buffer, bufferOffset);
    // Deserialize message field [time_of_week]
    data.time_of_week = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [heading]
    data.heading = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [heading_unc]
    data.heading_unc = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fix_type]
    data.fix_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [status_flags]
    data.status_flags = MipFilterGnssDualAntennaStatusStatusFlags.deserialize(buffer, bufferOffset);
    // Deserialize message field [valid_flags]
    data.valid_flags = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MipHeader.getMessageSize(object.header);
    return length + 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'microstrain_inertial_msgs/MipFilterGnssDualAntennaStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd3e767a3dabde7b291551114e9a5c07c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message definition for the MIP field https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_gnss_dual_antenna_status.htm
    
    # Header containing common information
    #   header.frame_id has no meaning in this message
    microstrain_inertial_msgs/MipHeader header
    
    # Last dual-antenna GNSS aiding measurement time of week (seconds)
    float32 time_of_week
    
    # Heading in radians
    float32 heading
    
    # Heading uncertainty in radians
    float32 heading_unc
    
    # Fix type indicator. See FIX_TYPE_* enums for possible values
    uint8 fix_type
    
    # Parsed out version of the Status Flags bitfield
    microstrain_inertial_msgs/MipFilterGnssDualAntennaStatusStatusFlags status_flags
    
    # Valid flags (0 = invalid, 1 = valid)
    uint16 valid_flags
    
    # Possible values for fix_type
    uint8 FIX_TYPE_FIX_NONE     = 0
    uint8 FIX_TYPE_FIX_DA_FLOAT = 1
    uint8 FIX_TYPE_FIX_DA_FIXED = 2
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
    MSG: microstrain_inertial_msgs/MipFilterGnssDualAntennaStatusStatusFlags
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
    const resolved = new MipFilterGnssDualAntennaStatus(null);
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

    if (msg.heading !== undefined) {
      resolved.heading = msg.heading;
    }
    else {
      resolved.heading = 0.0
    }

    if (msg.heading_unc !== undefined) {
      resolved.heading_unc = msg.heading_unc;
    }
    else {
      resolved.heading_unc = 0.0
    }

    if (msg.fix_type !== undefined) {
      resolved.fix_type = msg.fix_type;
    }
    else {
      resolved.fix_type = 0
    }

    if (msg.status_flags !== undefined) {
      resolved.status_flags = MipFilterGnssDualAntennaStatusStatusFlags.Resolve(msg.status_flags)
    }
    else {
      resolved.status_flags = new MipFilterGnssDualAntennaStatusStatusFlags()
    }

    if (msg.valid_flags !== undefined) {
      resolved.valid_flags = msg.valid_flags;
    }
    else {
      resolved.valid_flags = 0
    }

    return resolved;
    }
};

// Constants for message
MipFilterGnssDualAntennaStatus.Constants = {
  FIX_TYPE_FIX_NONE: 0,
  FIX_TYPE_FIX_DA_FLOAT: 1,
  FIX_TYPE_FIX_DA_FIXED: 2,
}

module.exports = MipFilterGnssDualAntennaStatus;
