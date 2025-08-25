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

class MipFilterStatusGx5StatusFlags {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.init_no_attitude = null;
      this.init_no_position_velocity = null;
      this.run_imu_unavailable = null;
      this.run_gps_unavailable = null;
      this.run_matrix_singularity = null;
      this.run_position_covariance_warning = null;
      this.run_velocity_covariance_warning = null;
      this.run_attitude_covariance_warning = null;
      this.run_nan_in_solution_warning = null;
      this.run_gyro_bias_est_high_warning = null;
      this.run_accel_bias_est_high_warning = null;
      this.run_gyro_scale_factor_est_high_warning = null;
      this.run_accel_scale_factor_est_high_warning = null;
      this.run_mag_bias_est_high_warning = null;
      this.run_ant_offset_correction_est_high_warning = null;
      this.run_mag_hard_iron_est_high_warning = null;
      this.run_mag_soft_iron_est_high_warning = null;
    }
    else {
      if (initObj.hasOwnProperty('init_no_attitude')) {
        this.init_no_attitude = initObj.init_no_attitude
      }
      else {
        this.init_no_attitude = false;
      }
      if (initObj.hasOwnProperty('init_no_position_velocity')) {
        this.init_no_position_velocity = initObj.init_no_position_velocity
      }
      else {
        this.init_no_position_velocity = false;
      }
      if (initObj.hasOwnProperty('run_imu_unavailable')) {
        this.run_imu_unavailable = initObj.run_imu_unavailable
      }
      else {
        this.run_imu_unavailable = false;
      }
      if (initObj.hasOwnProperty('run_gps_unavailable')) {
        this.run_gps_unavailable = initObj.run_gps_unavailable
      }
      else {
        this.run_gps_unavailable = false;
      }
      if (initObj.hasOwnProperty('run_matrix_singularity')) {
        this.run_matrix_singularity = initObj.run_matrix_singularity
      }
      else {
        this.run_matrix_singularity = false;
      }
      if (initObj.hasOwnProperty('run_position_covariance_warning')) {
        this.run_position_covariance_warning = initObj.run_position_covariance_warning
      }
      else {
        this.run_position_covariance_warning = false;
      }
      if (initObj.hasOwnProperty('run_velocity_covariance_warning')) {
        this.run_velocity_covariance_warning = initObj.run_velocity_covariance_warning
      }
      else {
        this.run_velocity_covariance_warning = false;
      }
      if (initObj.hasOwnProperty('run_attitude_covariance_warning')) {
        this.run_attitude_covariance_warning = initObj.run_attitude_covariance_warning
      }
      else {
        this.run_attitude_covariance_warning = false;
      }
      if (initObj.hasOwnProperty('run_nan_in_solution_warning')) {
        this.run_nan_in_solution_warning = initObj.run_nan_in_solution_warning
      }
      else {
        this.run_nan_in_solution_warning = false;
      }
      if (initObj.hasOwnProperty('run_gyro_bias_est_high_warning')) {
        this.run_gyro_bias_est_high_warning = initObj.run_gyro_bias_est_high_warning
      }
      else {
        this.run_gyro_bias_est_high_warning = false;
      }
      if (initObj.hasOwnProperty('run_accel_bias_est_high_warning')) {
        this.run_accel_bias_est_high_warning = initObj.run_accel_bias_est_high_warning
      }
      else {
        this.run_accel_bias_est_high_warning = false;
      }
      if (initObj.hasOwnProperty('run_gyro_scale_factor_est_high_warning')) {
        this.run_gyro_scale_factor_est_high_warning = initObj.run_gyro_scale_factor_est_high_warning
      }
      else {
        this.run_gyro_scale_factor_est_high_warning = false;
      }
      if (initObj.hasOwnProperty('run_accel_scale_factor_est_high_warning')) {
        this.run_accel_scale_factor_est_high_warning = initObj.run_accel_scale_factor_est_high_warning
      }
      else {
        this.run_accel_scale_factor_est_high_warning = false;
      }
      if (initObj.hasOwnProperty('run_mag_bias_est_high_warning')) {
        this.run_mag_bias_est_high_warning = initObj.run_mag_bias_est_high_warning
      }
      else {
        this.run_mag_bias_est_high_warning = false;
      }
      if (initObj.hasOwnProperty('run_ant_offset_correction_est_high_warning')) {
        this.run_ant_offset_correction_est_high_warning = initObj.run_ant_offset_correction_est_high_warning
      }
      else {
        this.run_ant_offset_correction_est_high_warning = false;
      }
      if (initObj.hasOwnProperty('run_mag_hard_iron_est_high_warning')) {
        this.run_mag_hard_iron_est_high_warning = initObj.run_mag_hard_iron_est_high_warning
      }
      else {
        this.run_mag_hard_iron_est_high_warning = false;
      }
      if (initObj.hasOwnProperty('run_mag_soft_iron_est_high_warning')) {
        this.run_mag_soft_iron_est_high_warning = initObj.run_mag_soft_iron_est_high_warning
      }
      else {
        this.run_mag_soft_iron_est_high_warning = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MipFilterStatusGx5StatusFlags
    // Serialize message field [init_no_attitude]
    bufferOffset = _serializer.bool(obj.init_no_attitude, buffer, bufferOffset);
    // Serialize message field [init_no_position_velocity]
    bufferOffset = _serializer.bool(obj.init_no_position_velocity, buffer, bufferOffset);
    // Serialize message field [run_imu_unavailable]
    bufferOffset = _serializer.bool(obj.run_imu_unavailable, buffer, bufferOffset);
    // Serialize message field [run_gps_unavailable]
    bufferOffset = _serializer.bool(obj.run_gps_unavailable, buffer, bufferOffset);
    // Serialize message field [run_matrix_singularity]
    bufferOffset = _serializer.bool(obj.run_matrix_singularity, buffer, bufferOffset);
    // Serialize message field [run_position_covariance_warning]
    bufferOffset = _serializer.bool(obj.run_position_covariance_warning, buffer, bufferOffset);
    // Serialize message field [run_velocity_covariance_warning]
    bufferOffset = _serializer.bool(obj.run_velocity_covariance_warning, buffer, bufferOffset);
    // Serialize message field [run_attitude_covariance_warning]
    bufferOffset = _serializer.bool(obj.run_attitude_covariance_warning, buffer, bufferOffset);
    // Serialize message field [run_nan_in_solution_warning]
    bufferOffset = _serializer.bool(obj.run_nan_in_solution_warning, buffer, bufferOffset);
    // Serialize message field [run_gyro_bias_est_high_warning]
    bufferOffset = _serializer.bool(obj.run_gyro_bias_est_high_warning, buffer, bufferOffset);
    // Serialize message field [run_accel_bias_est_high_warning]
    bufferOffset = _serializer.bool(obj.run_accel_bias_est_high_warning, buffer, bufferOffset);
    // Serialize message field [run_gyro_scale_factor_est_high_warning]
    bufferOffset = _serializer.bool(obj.run_gyro_scale_factor_est_high_warning, buffer, bufferOffset);
    // Serialize message field [run_accel_scale_factor_est_high_warning]
    bufferOffset = _serializer.bool(obj.run_accel_scale_factor_est_high_warning, buffer, bufferOffset);
    // Serialize message field [run_mag_bias_est_high_warning]
    bufferOffset = _serializer.bool(obj.run_mag_bias_est_high_warning, buffer, bufferOffset);
    // Serialize message field [run_ant_offset_correction_est_high_warning]
    bufferOffset = _serializer.bool(obj.run_ant_offset_correction_est_high_warning, buffer, bufferOffset);
    // Serialize message field [run_mag_hard_iron_est_high_warning]
    bufferOffset = _serializer.bool(obj.run_mag_hard_iron_est_high_warning, buffer, bufferOffset);
    // Serialize message field [run_mag_soft_iron_est_high_warning]
    bufferOffset = _serializer.bool(obj.run_mag_soft_iron_est_high_warning, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MipFilterStatusGx5StatusFlags
    let len;
    let data = new MipFilterStatusGx5StatusFlags(null);
    // Deserialize message field [init_no_attitude]
    data.init_no_attitude = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [init_no_position_velocity]
    data.init_no_position_velocity = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [run_imu_unavailable]
    data.run_imu_unavailable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [run_gps_unavailable]
    data.run_gps_unavailable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [run_matrix_singularity]
    data.run_matrix_singularity = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [run_position_covariance_warning]
    data.run_position_covariance_warning = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [run_velocity_covariance_warning]
    data.run_velocity_covariance_warning = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [run_attitude_covariance_warning]
    data.run_attitude_covariance_warning = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [run_nan_in_solution_warning]
    data.run_nan_in_solution_warning = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [run_gyro_bias_est_high_warning]
    data.run_gyro_bias_est_high_warning = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [run_accel_bias_est_high_warning]
    data.run_accel_bias_est_high_warning = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [run_gyro_scale_factor_est_high_warning]
    data.run_gyro_scale_factor_est_high_warning = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [run_accel_scale_factor_est_high_warning]
    data.run_accel_scale_factor_est_high_warning = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [run_mag_bias_est_high_warning]
    data.run_mag_bias_est_high_warning = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [run_ant_offset_correction_est_high_warning]
    data.run_ant_offset_correction_est_high_warning = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [run_mag_hard_iron_est_high_warning]
    data.run_mag_hard_iron_est_high_warning = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [run_mag_soft_iron_est_high_warning]
    data.run_mag_soft_iron_est_high_warning = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'microstrain_inertial_msgs/MipFilterStatusGx5StatusFlags';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '82e4f81fef282c1265a9db8f5c2b8418';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MipFilterStatusGx5StatusFlags(null);
    if (msg.init_no_attitude !== undefined) {
      resolved.init_no_attitude = msg.init_no_attitude;
    }
    else {
      resolved.init_no_attitude = false
    }

    if (msg.init_no_position_velocity !== undefined) {
      resolved.init_no_position_velocity = msg.init_no_position_velocity;
    }
    else {
      resolved.init_no_position_velocity = false
    }

    if (msg.run_imu_unavailable !== undefined) {
      resolved.run_imu_unavailable = msg.run_imu_unavailable;
    }
    else {
      resolved.run_imu_unavailable = false
    }

    if (msg.run_gps_unavailable !== undefined) {
      resolved.run_gps_unavailable = msg.run_gps_unavailable;
    }
    else {
      resolved.run_gps_unavailable = false
    }

    if (msg.run_matrix_singularity !== undefined) {
      resolved.run_matrix_singularity = msg.run_matrix_singularity;
    }
    else {
      resolved.run_matrix_singularity = false
    }

    if (msg.run_position_covariance_warning !== undefined) {
      resolved.run_position_covariance_warning = msg.run_position_covariance_warning;
    }
    else {
      resolved.run_position_covariance_warning = false
    }

    if (msg.run_velocity_covariance_warning !== undefined) {
      resolved.run_velocity_covariance_warning = msg.run_velocity_covariance_warning;
    }
    else {
      resolved.run_velocity_covariance_warning = false
    }

    if (msg.run_attitude_covariance_warning !== undefined) {
      resolved.run_attitude_covariance_warning = msg.run_attitude_covariance_warning;
    }
    else {
      resolved.run_attitude_covariance_warning = false
    }

    if (msg.run_nan_in_solution_warning !== undefined) {
      resolved.run_nan_in_solution_warning = msg.run_nan_in_solution_warning;
    }
    else {
      resolved.run_nan_in_solution_warning = false
    }

    if (msg.run_gyro_bias_est_high_warning !== undefined) {
      resolved.run_gyro_bias_est_high_warning = msg.run_gyro_bias_est_high_warning;
    }
    else {
      resolved.run_gyro_bias_est_high_warning = false
    }

    if (msg.run_accel_bias_est_high_warning !== undefined) {
      resolved.run_accel_bias_est_high_warning = msg.run_accel_bias_est_high_warning;
    }
    else {
      resolved.run_accel_bias_est_high_warning = false
    }

    if (msg.run_gyro_scale_factor_est_high_warning !== undefined) {
      resolved.run_gyro_scale_factor_est_high_warning = msg.run_gyro_scale_factor_est_high_warning;
    }
    else {
      resolved.run_gyro_scale_factor_est_high_warning = false
    }

    if (msg.run_accel_scale_factor_est_high_warning !== undefined) {
      resolved.run_accel_scale_factor_est_high_warning = msg.run_accel_scale_factor_est_high_warning;
    }
    else {
      resolved.run_accel_scale_factor_est_high_warning = false
    }

    if (msg.run_mag_bias_est_high_warning !== undefined) {
      resolved.run_mag_bias_est_high_warning = msg.run_mag_bias_est_high_warning;
    }
    else {
      resolved.run_mag_bias_est_high_warning = false
    }

    if (msg.run_ant_offset_correction_est_high_warning !== undefined) {
      resolved.run_ant_offset_correction_est_high_warning = msg.run_ant_offset_correction_est_high_warning;
    }
    else {
      resolved.run_ant_offset_correction_est_high_warning = false
    }

    if (msg.run_mag_hard_iron_est_high_warning !== undefined) {
      resolved.run_mag_hard_iron_est_high_warning = msg.run_mag_hard_iron_est_high_warning;
    }
    else {
      resolved.run_mag_hard_iron_est_high_warning = false
    }

    if (msg.run_mag_soft_iron_est_high_warning !== undefined) {
      resolved.run_mag_soft_iron_est_high_warning = msg.run_mag_soft_iron_est_high_warning;
    }
    else {
      resolved.run_mag_soft_iron_est_high_warning = false
    }

    return resolved;
    }
};

module.exports = MipFilterStatusGx5StatusFlags;
