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
let MipFilterStatusGx5StatusFlags = require('./MipFilterStatusGx5StatusFlags.js');
let MipFilterStatusGq7StatusFlags = require('./MipFilterStatusGq7StatusFlags.js');

//-----------------------------------------------------------

class MipFilterStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.filter_state = null;
      this.dynamics_mode = null;
      this.gx5_status_flags = null;
      this.gq7_status_flags = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new MipHeader();
      }
      if (initObj.hasOwnProperty('filter_state')) {
        this.filter_state = initObj.filter_state
      }
      else {
        this.filter_state = 0;
      }
      if (initObj.hasOwnProperty('dynamics_mode')) {
        this.dynamics_mode = initObj.dynamics_mode
      }
      else {
        this.dynamics_mode = 0;
      }
      if (initObj.hasOwnProperty('gx5_status_flags')) {
        this.gx5_status_flags = initObj.gx5_status_flags
      }
      else {
        this.gx5_status_flags = new MipFilterStatusGx5StatusFlags();
      }
      if (initObj.hasOwnProperty('gq7_status_flags')) {
        this.gq7_status_flags = initObj.gq7_status_flags
      }
      else {
        this.gq7_status_flags = new MipFilterStatusGq7StatusFlags();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MipFilterStatus
    // Serialize message field [header]
    bufferOffset = MipHeader.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [filter_state]
    bufferOffset = _serializer.uint16(obj.filter_state, buffer, bufferOffset);
    // Serialize message field [dynamics_mode]
    bufferOffset = _serializer.uint16(obj.dynamics_mode, buffer, bufferOffset);
    // Serialize message field [gx5_status_flags]
    bufferOffset = MipFilterStatusGx5StatusFlags.serialize(obj.gx5_status_flags, buffer, bufferOffset);
    // Serialize message field [gq7_status_flags]
    bufferOffset = MipFilterStatusGq7StatusFlags.serialize(obj.gq7_status_flags, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MipFilterStatus
    let len;
    let data = new MipFilterStatus(null);
    // Deserialize message field [header]
    data.header = MipHeader.deserialize(buffer, bufferOffset);
    // Deserialize message field [filter_state]
    data.filter_state = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [dynamics_mode]
    data.dynamics_mode = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [gx5_status_flags]
    data.gx5_status_flags = MipFilterStatusGx5StatusFlags.deserialize(buffer, bufferOffset);
    // Deserialize message field [gq7_status_flags]
    data.gq7_status_flags = MipFilterStatusGq7StatusFlags.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MipHeader.getMessageSize(object.header);
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'microstrain_inertial_msgs/MipFilterStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4aa95a55ec5be9507ec04d6ed003846c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message definition for the MIP field https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_status.htm
    
    # Header containing common information
    #   header.frame_id has no meaning in this message
    microstrain_inertial_msgs/MipHeader header
    
    # Device-specific filter state. Please consult the user manual for definition. See FILTER_STATE_* enums for possible values
    uint16 filter_state
    
    # Device-specific dynamics mode. Please consult the user manual for definition. See DYNAMICS_MODE_* enums for possible values
    # Note that for prospect devices (GQ7, CV7, etc), this field has a default value, and should be mostly ignored
    uint16 dynamics_mode
    
    # Parsed out version of the Status Flags bitfield when the connected device is a philo device (GX5, CX5, CV5, etc)
    microstrain_inertial_msgs/MipFilterStatusGx5StatusFlags gx5_status_flags
    
    # Parsed out version of the Status Flags bitfield when the connected device is a prospect device (GQ7, CV7, etc)
    microstrain_inertial_msgs/MipFilterStatusGq7StatusFlags gq7_status_flags
    
    # Possible values for filter_state when the connected device is a philo device (GX5, CX5, CV5, etc)
    uint16 FILTER_STATE_GX5_STARTUP            = 0
    uint16 FILTER_STATE_GX5_INIT               = 1
    uint16 FILTER_STATE_GX5_RUN_SOLUTION_VALID = 2
    uint16 FILTER_STATE_GX5_RUN_SOLUTION_ERROR = 3
    
    # Possible values for filter_state when the connected device is a prospect device (GQ7, CV7, etc)
    uint16 FILTER_STATE_GQ7_INIT      = 1
    uint16 FILTER_STATE_GQ7_VERT_GYRO = 2
    uint16 FILTER_STATE_GQ7_AHRS      = 3
    uint16 FILTER_STATE_GQ7_FULL_NAV  = 4
    
    # Possible values for dynamics_mode when the connected device is a philo device (GX5, CX5, CV5, etc)
    uint16 DYNAMICS_MODE_GX5_PORTABLE   = 1
    uint16 DYNAMICS_MODE_GX5_AUTOMOTIVE = 2
    uint16 DYNAMICS_MODE_GX5_AIRBORNE   = 3
    
    # Possible values for dynamics_mode when the connected device is a prospect device (GQ7, CV7, etc)
    # Note that on older firmware the GQ7 will often report 0 for it's dynamics mode, it is strongly advised to ignore this field
    uint16 DYNAMICS_MODE_GQ7_DEFAULT = 1
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
    MSG: microstrain_inertial_msgs/MipFilterStatusGx5StatusFlags
    # Message definition for the Status Flags (GX5, CV5, CX5, etc.) field of https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_status.htm?Highlight=filter%20status
    #   Note: This message will never be published on it's own, only included in other messages.
    
    bool init_no_attitude
    bool init_no_position_velocity
    bool run_imu_unavailable
    bool run_gps_unavailable
    bool run_matrix_singularity
    bool run_position_covariance_warning
    bool run_velocity_covariance_warning
    bool run_attitude_covariance_warning
    bool run_nan_in_solution_warning
    bool run_gyro_bias_est_high_warning
    bool run_accel_bias_est_high_warning
    bool run_gyro_scale_factor_est_high_warning
    bool run_accel_scale_factor_est_high_warning
    bool run_mag_bias_est_high_warning
    bool run_ant_offset_correction_est_high_warning
    bool run_mag_hard_iron_est_high_warning
    bool run_mag_soft_iron_est_high_warning
    ================================================================================
    MSG: microstrain_inertial_msgs/MipFilterStatusGq7StatusFlags
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
    const resolved = new MipFilterStatus(null);
    if (msg.header !== undefined) {
      resolved.header = MipHeader.Resolve(msg.header)
    }
    else {
      resolved.header = new MipHeader()
    }

    if (msg.filter_state !== undefined) {
      resolved.filter_state = msg.filter_state;
    }
    else {
      resolved.filter_state = 0
    }

    if (msg.dynamics_mode !== undefined) {
      resolved.dynamics_mode = msg.dynamics_mode;
    }
    else {
      resolved.dynamics_mode = 0
    }

    if (msg.gx5_status_flags !== undefined) {
      resolved.gx5_status_flags = MipFilterStatusGx5StatusFlags.Resolve(msg.gx5_status_flags)
    }
    else {
      resolved.gx5_status_flags = new MipFilterStatusGx5StatusFlags()
    }

    if (msg.gq7_status_flags !== undefined) {
      resolved.gq7_status_flags = MipFilterStatusGq7StatusFlags.Resolve(msg.gq7_status_flags)
    }
    else {
      resolved.gq7_status_flags = new MipFilterStatusGq7StatusFlags()
    }

    return resolved;
    }
};

// Constants for message
MipFilterStatus.Constants = {
  FILTER_STATE_GX5_STARTUP: 0,
  FILTER_STATE_GX5_INIT: 1,
  FILTER_STATE_GX5_RUN_SOLUTION_VALID: 2,
  FILTER_STATE_GX5_RUN_SOLUTION_ERROR: 3,
  FILTER_STATE_GQ7_INIT: 1,
  FILTER_STATE_GQ7_VERT_GYRO: 2,
  FILTER_STATE_GQ7_AHRS: 3,
  FILTER_STATE_GQ7_FULL_NAV: 4,
  DYNAMICS_MODE_GX5_PORTABLE: 1,
  DYNAMICS_MODE_GX5_AUTOMOTIVE: 2,
  DYNAMICS_MODE_GX5_AIRBORNE: 3,
  DYNAMICS_MODE_GQ7_DEFAULT: 1,
}

module.exports = MipFilterStatus;
