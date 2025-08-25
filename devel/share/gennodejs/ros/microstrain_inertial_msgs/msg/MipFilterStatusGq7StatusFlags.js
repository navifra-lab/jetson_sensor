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

class MipFilterStatusGq7StatusFlags {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.filter_condition = null;
      this.roll_pitch_warning = null;
      this.heading_warning = null;
      this.position_warning = null;
      this.velocity_warning = null;
      this.imu_bias_warning = null;
      this.gnss_clk_warning = null;
      this.antenna_lever_arm_warning = null;
      this.mounting_transform_warning = null;
      this.time_sync_warning = null;
      this.solution_error = null;
    }
    else {
      if (initObj.hasOwnProperty('filter_condition')) {
        this.filter_condition = initObj.filter_condition
      }
      else {
        this.filter_condition = 0;
      }
      if (initObj.hasOwnProperty('roll_pitch_warning')) {
        this.roll_pitch_warning = initObj.roll_pitch_warning
      }
      else {
        this.roll_pitch_warning = false;
      }
      if (initObj.hasOwnProperty('heading_warning')) {
        this.heading_warning = initObj.heading_warning
      }
      else {
        this.heading_warning = false;
      }
      if (initObj.hasOwnProperty('position_warning')) {
        this.position_warning = initObj.position_warning
      }
      else {
        this.position_warning = false;
      }
      if (initObj.hasOwnProperty('velocity_warning')) {
        this.velocity_warning = initObj.velocity_warning
      }
      else {
        this.velocity_warning = false;
      }
      if (initObj.hasOwnProperty('imu_bias_warning')) {
        this.imu_bias_warning = initObj.imu_bias_warning
      }
      else {
        this.imu_bias_warning = false;
      }
      if (initObj.hasOwnProperty('gnss_clk_warning')) {
        this.gnss_clk_warning = initObj.gnss_clk_warning
      }
      else {
        this.gnss_clk_warning = false;
      }
      if (initObj.hasOwnProperty('antenna_lever_arm_warning')) {
        this.antenna_lever_arm_warning = initObj.antenna_lever_arm_warning
      }
      else {
        this.antenna_lever_arm_warning = false;
      }
      if (initObj.hasOwnProperty('mounting_transform_warning')) {
        this.mounting_transform_warning = initObj.mounting_transform_warning
      }
      else {
        this.mounting_transform_warning = false;
      }
      if (initObj.hasOwnProperty('time_sync_warning')) {
        this.time_sync_warning = initObj.time_sync_warning
      }
      else {
        this.time_sync_warning = false;
      }
      if (initObj.hasOwnProperty('solution_error')) {
        this.solution_error = initObj.solution_error
      }
      else {
        this.solution_error = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MipFilterStatusGq7StatusFlags
    // Serialize message field [filter_condition]
    bufferOffset = _serializer.uint8(obj.filter_condition, buffer, bufferOffset);
    // Serialize message field [roll_pitch_warning]
    bufferOffset = _serializer.bool(obj.roll_pitch_warning, buffer, bufferOffset);
    // Serialize message field [heading_warning]
    bufferOffset = _serializer.bool(obj.heading_warning, buffer, bufferOffset);
    // Serialize message field [position_warning]
    bufferOffset = _serializer.bool(obj.position_warning, buffer, bufferOffset);
    // Serialize message field [velocity_warning]
    bufferOffset = _serializer.bool(obj.velocity_warning, buffer, bufferOffset);
    // Serialize message field [imu_bias_warning]
    bufferOffset = _serializer.bool(obj.imu_bias_warning, buffer, bufferOffset);
    // Serialize message field [gnss_clk_warning]
    bufferOffset = _serializer.bool(obj.gnss_clk_warning, buffer, bufferOffset);
    // Serialize message field [antenna_lever_arm_warning]
    bufferOffset = _serializer.bool(obj.antenna_lever_arm_warning, buffer, bufferOffset);
    // Serialize message field [mounting_transform_warning]
    bufferOffset = _serializer.bool(obj.mounting_transform_warning, buffer, bufferOffset);
    // Serialize message field [time_sync_warning]
    bufferOffset = _serializer.bool(obj.time_sync_warning, buffer, bufferOffset);
    // Serialize message field [solution_error]
    bufferOffset = _serializer.bool(obj.solution_error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MipFilterStatusGq7StatusFlags
    let len;
    let data = new MipFilterStatusGq7StatusFlags(null);
    // Deserialize message field [filter_condition]
    data.filter_condition = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [roll_pitch_warning]
    data.roll_pitch_warning = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [heading_warning]
    data.heading_warning = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [position_warning]
    data.position_warning = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [velocity_warning]
    data.velocity_warning = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [imu_bias_warning]
    data.imu_bias_warning = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gnss_clk_warning]
    data.gnss_clk_warning = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [antenna_lever_arm_warning]
    data.antenna_lever_arm_warning = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mounting_transform_warning]
    data.mounting_transform_warning = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [time_sync_warning]
    data.time_sync_warning = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [solution_error]
    data.solution_error = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'microstrain_inertial_msgs/MipFilterStatusGq7StatusFlags';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1db9853b9f08ade89304b0b0fc0f9df7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message definition for the Status Flags (GQ7, CV7, etc.) field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_status.htm?Highlight=filter%20status
    #   Note: This message will never be published on it's own, only included in other messages.
    
    uint8 filter_condition  # See FILTER_CONDITION_* enums for possible values
    bool  roll_pitch_warning
    bool  heading_warning
    bool  position_warning
    bool  velocity_warning
    bool  imu_bias_warning
    bool  gnss_clk_warning
    bool  antenna_lever_arm_warning
    bool  mounting_transform_warning
    bool  time_sync_warning  # No time synchronization pulse detected
    bool  solution_error  # This includes all bits between 12 and 15, if any of them are set there is a GQ7 solution error
    
    # Possible values for filter_condition when the connected device is a prospect device (GQ7, CV7, etc)
    uint8 FILTER_CONDITION_STABLE     = 1
    uint8 FILTER_CONDITION_CONVERGING = 2
    uint8 FILTER_CONDITION_UNSTABLE   = 3
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MipFilterStatusGq7StatusFlags(null);
    if (msg.filter_condition !== undefined) {
      resolved.filter_condition = msg.filter_condition;
    }
    else {
      resolved.filter_condition = 0
    }

    if (msg.roll_pitch_warning !== undefined) {
      resolved.roll_pitch_warning = msg.roll_pitch_warning;
    }
    else {
      resolved.roll_pitch_warning = false
    }

    if (msg.heading_warning !== undefined) {
      resolved.heading_warning = msg.heading_warning;
    }
    else {
      resolved.heading_warning = false
    }

    if (msg.position_warning !== undefined) {
      resolved.position_warning = msg.position_warning;
    }
    else {
      resolved.position_warning = false
    }

    if (msg.velocity_warning !== undefined) {
      resolved.velocity_warning = msg.velocity_warning;
    }
    else {
      resolved.velocity_warning = false
    }

    if (msg.imu_bias_warning !== undefined) {
      resolved.imu_bias_warning = msg.imu_bias_warning;
    }
    else {
      resolved.imu_bias_warning = false
    }

    if (msg.gnss_clk_warning !== undefined) {
      resolved.gnss_clk_warning = msg.gnss_clk_warning;
    }
    else {
      resolved.gnss_clk_warning = false
    }

    if (msg.antenna_lever_arm_warning !== undefined) {
      resolved.antenna_lever_arm_warning = msg.antenna_lever_arm_warning;
    }
    else {
      resolved.antenna_lever_arm_warning = false
    }

    if (msg.mounting_transform_warning !== undefined) {
      resolved.mounting_transform_warning = msg.mounting_transform_warning;
    }
    else {
      resolved.mounting_transform_warning = false
    }

    if (msg.time_sync_warning !== undefined) {
      resolved.time_sync_warning = msg.time_sync_warning;
    }
    else {
      resolved.time_sync_warning = false
    }

    if (msg.solution_error !== undefined) {
      resolved.solution_error = msg.solution_error;
    }
    else {
      resolved.solution_error = false
    }

    return resolved;
    }
};

// Constants for message
MipFilterStatusGq7StatusFlags.Constants = {
  FILTER_CONDITION_STABLE: 1,
  FILTER_CONDITION_CONVERGING: 2,
  FILTER_CONDITION_UNSTABLE: 3,
}

module.exports = MipFilterStatusGq7StatusFlags;
