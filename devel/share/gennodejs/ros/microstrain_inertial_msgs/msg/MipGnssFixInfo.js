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
let MipGnssFixInfoFixFlags = require('./MipGnssFixInfoFixFlags.js');

//-----------------------------------------------------------

class MipGnssFixInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.fix_type = null;
      this.num_sv = null;
      this.fix_flags = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new MipHeader();
      }
      if (initObj.hasOwnProperty('fix_type')) {
        this.fix_type = initObj.fix_type
      }
      else {
        this.fix_type = 0;
      }
      if (initObj.hasOwnProperty('num_sv')) {
        this.num_sv = initObj.num_sv
      }
      else {
        this.num_sv = 0;
      }
      if (initObj.hasOwnProperty('fix_flags')) {
        this.fix_flags = initObj.fix_flags
      }
      else {
        this.fix_flags = new MipGnssFixInfoFixFlags();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MipGnssFixInfo
    // Serialize message field [header]
    bufferOffset = MipHeader.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [fix_type]
    bufferOffset = _serializer.uint8(obj.fix_type, buffer, bufferOffset);
    // Serialize message field [num_sv]
    bufferOffset = _serializer.uint8(obj.num_sv, buffer, bufferOffset);
    // Serialize message field [fix_flags]
    bufferOffset = MipGnssFixInfoFixFlags.serialize(obj.fix_flags, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MipGnssFixInfo
    let len;
    let data = new MipGnssFixInfo(null);
    // Deserialize message field [header]
    data.header = MipHeader.deserialize(buffer, bufferOffset);
    // Deserialize message field [fix_type]
    data.fix_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [num_sv]
    data.num_sv = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [fix_flags]
    data.fix_flags = MipGnssFixInfoFixFlags.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MipHeader.getMessageSize(object.header);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'microstrain_inertial_msgs/MipGnssFixInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '981a71050cd7ff7c9ee9bd9a4ffe93a8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message definition for the MIP field https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/gnss_recv_1/data/mip_field_gnss_fix_info.htm
    
    # Header containing common information
    #   header.frame_id has no meaning in this message
    microstrain_inertial_msgs/MipHeader header
    
    # Fix type. See FIX_TYPE_* enums for possible values
    uint8 fix_type
    
    # Number of satellites in view for this receiver
    uint8 num_sv
    
    # Parsed out version of the fix_flags bitfield
    microstrain_inertial_msgs/MipGnssFixInfoFixFlags fix_flags
    
    # Valid values for the fix_type field
    uint8 FIX_TYPE_FIX_3D        = 0
    uint8 FIX_TYPE_FIX_2D        = 1
    uint8 FIX_TYPE_FIX_TIME_ONLY = 2
    uint8 FIX_TYPE_FIX_NONE      = 3
    uint8 FIX_TYPE_FIX_INVALID   = 4
    uint8 FIX_TYPE_FIX_RTK_FLOAT = 5
    uint8 FIX_TYPE_FIX_RTK_FIXED = 6
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
    MSG: microstrain_inertial_msgs/MipGnssFixInfoFixFlags
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
    const resolved = new MipGnssFixInfo(null);
    if (msg.header !== undefined) {
      resolved.header = MipHeader.Resolve(msg.header)
    }
    else {
      resolved.header = new MipHeader()
    }

    if (msg.fix_type !== undefined) {
      resolved.fix_type = msg.fix_type;
    }
    else {
      resolved.fix_type = 0
    }

    if (msg.num_sv !== undefined) {
      resolved.num_sv = msg.num_sv;
    }
    else {
      resolved.num_sv = 0
    }

    if (msg.fix_flags !== undefined) {
      resolved.fix_flags = MipGnssFixInfoFixFlags.Resolve(msg.fix_flags)
    }
    else {
      resolved.fix_flags = new MipGnssFixInfoFixFlags()
    }

    return resolved;
    }
};

// Constants for message
MipGnssFixInfo.Constants = {
  FIX_TYPE_FIX_3D: 0,
  FIX_TYPE_FIX_2D: 1,
  FIX_TYPE_FIX_TIME_ONLY: 2,
  FIX_TYPE_FIX_NONE: 3,
  FIX_TYPE_FIX_INVALID: 4,
  FIX_TYPE_FIX_RTK_FLOAT: 5,
  FIX_TYPE_FIX_RTK_FIXED: 6,
}

module.exports = MipGnssFixInfo;
