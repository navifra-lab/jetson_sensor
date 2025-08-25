// Auto-generated. Do not edit!

// (in-package microstrain_inertial_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MipGpsTimestamp = require('./MipGpsTimestamp.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MipHeader {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.event_source = null;
      this.reference_timestamp = null;
      this.gps_timestamp = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('event_source')) {
        this.event_source = initObj.event_source
      }
      else {
        this.event_source = 0;
      }
      if (initObj.hasOwnProperty('reference_timestamp')) {
        this.reference_timestamp = initObj.reference_timestamp
      }
      else {
        this.reference_timestamp = 0;
      }
      if (initObj.hasOwnProperty('gps_timestamp')) {
        this.gps_timestamp = initObj.gps_timestamp
      }
      else {
        this.gps_timestamp = new MipGpsTimestamp();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MipHeader
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [event_source]
    bufferOffset = _serializer.uint8(obj.event_source, buffer, bufferOffset);
    // Serialize message field [reference_timestamp]
    bufferOffset = _serializer.uint64(obj.reference_timestamp, buffer, bufferOffset);
    // Serialize message field [gps_timestamp]
    bufferOffset = MipGpsTimestamp.serialize(obj.gps_timestamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MipHeader
    let len;
    let data = new MipHeader(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [event_source]
    data.event_source = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reference_timestamp]
    data.reference_timestamp = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [gps_timestamp]
    data.gps_timestamp = MipGpsTimestamp.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 22;
  }

  static datatype() {
    // Returns string type for a message object
    return 'microstrain_inertial_msgs/MipHeader';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '744333c9bf2617366c1413a75c739880';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MipHeader(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.event_source !== undefined) {
      resolved.event_source = msg.event_source;
    }
    else {
      resolved.event_source = 0
    }

    if (msg.reference_timestamp !== undefined) {
      resolved.reference_timestamp = msg.reference_timestamp;
    }
    else {
      resolved.reference_timestamp = 0
    }

    if (msg.gps_timestamp !== undefined) {
      resolved.gps_timestamp = MipGpsTimestamp.Resolve(msg.gps_timestamp)
    }
    else {
      resolved.gps_timestamp = new MipGpsTimestamp()
    }

    return resolved;
    }
};

module.exports = MipHeader;
