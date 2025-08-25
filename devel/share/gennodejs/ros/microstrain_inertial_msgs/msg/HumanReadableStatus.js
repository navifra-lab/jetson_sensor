// Auto-generated. Do not edit!

// (in-package microstrain_inertial_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MipBaseDeviceInfo = require('./MipBaseDeviceInfo.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class HumanReadableStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.device_info = null;
      this.gnss_state = null;
      this.dual_antenna_fix_type = null;
      this.filter_state = null;
      this.status_flags = null;
      this.continuous_bit_flags = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('device_info')) {
        this.device_info = initObj.device_info
      }
      else {
        this.device_info = new MipBaseDeviceInfo();
      }
      if (initObj.hasOwnProperty('gnss_state')) {
        this.gnss_state = initObj.gnss_state
      }
      else {
        this.gnss_state = '';
      }
      if (initObj.hasOwnProperty('dual_antenna_fix_type')) {
        this.dual_antenna_fix_type = initObj.dual_antenna_fix_type
      }
      else {
        this.dual_antenna_fix_type = '';
      }
      if (initObj.hasOwnProperty('filter_state')) {
        this.filter_state = initObj.filter_state
      }
      else {
        this.filter_state = '';
      }
      if (initObj.hasOwnProperty('status_flags')) {
        this.status_flags = initObj.status_flags
      }
      else {
        this.status_flags = [];
      }
      if (initObj.hasOwnProperty('continuous_bit_flags')) {
        this.continuous_bit_flags = initObj.continuous_bit_flags
      }
      else {
        this.continuous_bit_flags = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HumanReadableStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [device_info]
    bufferOffset = MipBaseDeviceInfo.serialize(obj.device_info, buffer, bufferOffset);
    // Serialize message field [gnss_state]
    bufferOffset = _serializer.string(obj.gnss_state, buffer, bufferOffset);
    // Serialize message field [dual_antenna_fix_type]
    bufferOffset = _serializer.string(obj.dual_antenna_fix_type, buffer, bufferOffset);
    // Serialize message field [filter_state]
    bufferOffset = _serializer.string(obj.filter_state, buffer, bufferOffset);
    // Serialize message field [status_flags]
    bufferOffset = _arraySerializer.string(obj.status_flags, buffer, bufferOffset, null);
    // Serialize message field [continuous_bit_flags]
    bufferOffset = _arraySerializer.string(obj.continuous_bit_flags, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HumanReadableStatus
    let len;
    let data = new HumanReadableStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [device_info]
    data.device_info = MipBaseDeviceInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [gnss_state]
    data.gnss_state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [dual_antenna_fix_type]
    data.dual_antenna_fix_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [filter_state]
    data.filter_state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [status_flags]
    data.status_flags = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [continuous_bit_flags]
    data.continuous_bit_flags = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += MipBaseDeviceInfo.getMessageSize(object.device_info);
    length += object.gnss_state.length;
    length += object.dual_antenna_fix_type.length;
    length += object.filter_state.length;
    object.status_flags.forEach((val) => {
      length += 4 + val.length;
    });
    object.continuous_bit_flags.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'microstrain_inertial_msgs/HumanReadableStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a6d2bd6f851d3b79d0fd4e13b7b28292';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Convenience message to contain some useful device information
    #
    # This is a combination of several different messages to allow for an easy view of the device status.
    # For more detailed information on the device status, see the messages mentioned in the field definitions below.
    #
    # !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    # NOTE: This is meant as a useful tool for checking general status of the device by a human.
    #       This interface may change without a major version upgrade.
    #       It is STRONGLY encouraged to not use this to actually control real logic.
    #       For that, we would recommend looking at the other messages mentioned in this one
    #       as well as the uncertainty for measurements
    # !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    
    # Header containing the time at which this message was populated
    #   header.frame_id will contain the frame ID of the IMU
    std_msgs/Header header
    
    # Device information. This information will be read when the node first activates.
    # To force an update of this information (shouldn't change during runtime), call the mip/base/get_device_information service
    microstrain_inertial_msgs/MipBaseDeviceInfo device_info
    
    # GNSS state. See GNSS_STATE_* for possible values
    # This value is computed from many different fields from microstrain_inertial_msgs/MipGnssFixInfo.msg and microstrain_inertial_msgs/MipFilterGnssPositionAidingStatus.msg
    string gnss_state
    
    # Dual antenna fix type. See DUAL_ANTENNA_FIX_TYPE_* enums for possble values
    # This is identical to fix_type in microstrain_inertial_msgs/MipFilterGnssDualAntennaStatus.msg
    string dual_antenna_fix_type
    
    # Device-specific filter state. See filter_state_* enums for possible values
    # This is identical to filter_state in microstrain_inertial_msgs/MipFilterStatus.msg represented as a string
    string filter_state
    
    # String version of the status_flags field of the MipFilterStatus message. Only active statuses will be in this list
    # This is a list of all of the status_flags_* that are true in microstrain_inertial_msgs/MipFilterStatus.msg filtered to only include relevant flags for this type of device
    # See STATIS_FLAG_* for possible values that could be in this array
    string[] status_flags
    
    # String version of the possible continuous bit fields possibly provided by the device.
    # Generally, you want to see nothing populated in this message, but when you do see something, it can be used to diagnose problems with the device.
    # This is a parsed out version of microstrain_inertial_msgs/MipSystemBuiltInTest.msg parsed to be accurate for each device
    string[] continuous_bit_flags
    
    # Possible value for any field if a devicedoes not support it
    string UNSUPPORTED = "Unsupported"
    
    # Possible values for gnss_state
    string GNSS_STATE_NO_FIX    = "No Fix"
    string GNSS_STATE_3D_FIX    = "3D Fix"
    string GNSS_STATE_SBAS      = "SBAS"
    string GNSS_STATE_RTK_FLOAT = "RTK Float"
    string GNSS_STATE_RTK_FIXED = "RTK Fixed"
    
    # Possible values for dual_antenna_fix_type
    string DUAL_ANTENNA_FIX_TYPE_NONE  = "None"
    string DUAL_ANTENNA_FIX_TYPE_FLOAT = "Dual Antenna Float"
    string DUAL_ANTENNA_FIX_TYPE_FIXED = "Dual Antenna Fixed"
    
    # Possible values for filter_state when the connected device is a philo device (GX5, CX5, CV5, etc)
    string FILTER_STATE_GX5_STARTUP            = "Startup"
    string FILTER_STATE_GX5_INIT               = "Init"
    string FILTER_STATE_GX5_RUN_SOLUTION_VALID = "Solution Valid"
    string FILTER_STATE_GX5_RUN_SOLUTION_ERROR = "Solution Error"
    
    # Possible values for filter_state when the connected device is a prospect device (GQ7, CV7, etc)
    string FILTER_STATE_GQ7_INIT      = "Init"
    string FILTER_STATE_GQ7_VERT_GYRO = "Vertical Gyro"
    string FILTER_STATE_GQ7_AHRS      = "AHRS"
    string FILTER_STATE_GQ7_FULL_NAV  = "Full Nav"
    
    # Possible values to be stored in status_flags when the connected device is a philo device (GX5, CX5, CV5, etc)
    string STATUS_FLAGS_GX5_INIT_NO_ATTITUDE                           = "Init No Attitude"
    string STATUS_FLAGS_GX5_INIT_NO_POSITION_VELOCITY                  = "Init No Position / Velocity"
    string STATUS_FLAGS_GX5_RUN_IMU_UNAVAILABLE                        = "IMU Unavailable"
    string STATUS_FLAGS_GX5_RUN_GPS_UNAVAILABLE                        = "GPS Unavailable"
    string STATUS_FLAGS_GX5_RUN_MATRIX_SINGULARITY                     = "Matrix Singularity"
    string STATUS_FLAGS_GX5_RUN_POSITION_COVARIANCE_WARNING            = "Position Covariance Warning"
    string STATUS_FLAGS_GX5_RUN_VELOCITY_COVARIANCE_WARNING            = "Velocity Covariance Warning"
    string STATUS_FLAGS_GX5_RUN_ATTITUDE_COVARIANCE_WARNING            = "Attitude Covariance Warning"
    string STATUS_FLAGS_GX5_RUN_NAN_IN_SOLUTION_WARNING                = "NaN in Solution"
    string STATUS_FLAGS_GX5_RUN_GYRO_BIAS_EST_HIGH_WARNING             = "Gyroscope Bias Estimate High"
    string STATUS_FLAGS_GX5_RUN_ACCEL_BIAS_EST_HIGH_WARNING            = "Accelerometer Bias Estimate High"
    string STATUS_FLAGS_GX5_RUN_GYRO_SCALE_FACTOR_EST_HIGH_WARNING     = "Gyroscope Scale Factor Estimate High"
    string STATUS_FLAGS_GX5_RUN_ACCEL_SCALE_FACTOR_EST_HIGH_WARNING    = "Accelerometer Scal Factor Estimate High"
    string STATUS_FLAGS_GX5_RUN_MAG_BIAS_EST_HIGH_WARNING              = "Magnetometer Bias Estimate High"
    string STATUS_FLAGS_GX5_RUN_ANT_OFFSET_CORRECTION_EST_HIGH_WARNING = "Antenna Offset Correction Estimate High"
    string STATUS_FLAGS_GX5_RUN_MAG_HARD_IRON_EST_HIGH_WARNING         = "Magnetometer Hard Iron Estimate High"
    string STATUS_FLAGS_GX5_RUN_MAG_SOFT_IRON_EST_HIGH_WARNING         = "Magnetometer Soft Iron Estimate High"
    
    # Possible values to be stored in status_flags when the connected device is a prospect device (GQ7, CV7, etc)
    string STATUS_FLAGS_GQ7_FILTER_CONDITION_STABLE     = "Stable"
    string STATUS_FLAGS_GQ7_FILTER_CONDITION_CONVERGING = "Converging"
    string STATUS_FLAGS_GQ7_FILTER_CONDITION_UNSTABLE   = "Unstable"
    string STATUS_FLAGS_GQ7_ROLL_PITCH_WARNING          = "Roll / Pitch Warning"
    string STATUS_FLAGS_GQ7_HEADING_WARNING             = "Heading Warning"
    string STATUS_FLAGS_GQ7_POSITION_WARNING            = "Position Warning"
    string STATUS_FLAGS_GQ7_VELOCITY_WARNING            = "Velocity Warning"
    string STATUS_FLAGS_GQ7_IMU_BIAS_WARNING            = "IMU Bias Warning"
    string STATUS_FLAGS_GQ7_GNSS_CLK_WARNING            = "GNSS Clock Warning"
    string STATUS_FLAGS_GQ7_ANTENNA_LEVER_ARM_WARNING   = "Antenna Lever Arm Warning"
    string STATUS_FLAGS_GQ7_MOUNTING_TRANSFORM_WARNING  = "Mounting Transform Warning"
    string STATUS_FLAGS_GQ7_TIME_SYNC_WARNING           = "Time Sync Warning"
    string STATUS_FLAGS_GQ7_SOLUTION_ERROR              = "Solution Error"
    
    # Possible values to be stored in continuous_bit_flags when the connected device is a GQ7
    # See https://files.microstrain.com/GQ7+User+Manual/user_manual_content/additional_features/Built-in%20Test.htm for more information
    string CONTINUOUS_BIT_FLAGS_GQ7_SYSTEM_CLOCK_FAILURE           = "System Clock Failure"
    string CONTINUOUS_BIT_FLAGS_GQ7_POWER_FAULT                    = "Power Fault"
    string CONTINUOUS_BIT_FLAGS_GQ7_FIRMWARE_FAULT                 = "Firmware Fault"
    string CONTINUOUS_BIT_FLAGS_GQ7_TIMING_OVERLOAD                = "Timing Overload"
    string CONTINUOUS_BIT_FLAGS_GQ7_BUFFER_OVERRUN                 = "Buffer Overrun"
    string CONTINUOUS_BIT_FLAGS_GQ7_IMU_IPC_FAULT                  = "IMU IPC Fault"
    string CONTINUOUS_BIT_FLAGS_GQ7_FILTER_IPC_FAULT               = "Filter IPC Fault"
    string CONTINUOUS_BIT_FLAGS_GQ7_GNSS_IPC_FAULT                 = "GNSS IPC Fault"
    string CONTINUOUS_BIT_FLAGS_GQ7_IMU_CLOCK_FAULT                = "IMU Clock Fault"
    string CONTINUOUS_BIT_FLAGS_GQ7_IMU_COMMUNICATION_FAULT        = "IMU Communication Fault"
    string CONTINUOUS_BIT_FLAGS_GQ7_IMU_TIMING_OVERRUN             = "IMU Timing Overrun"
    string CONTINUOUS_BIT_FLAGS_GQ7_IMU_CALIBRATION_ERROR_ACCEL    = "IMU Calibration Error - Accel"
    string CONTINUOUS_BIT_FLAGS_GQ7_IMU_CALIBRATION_ERROR_GYRO     = "IMU Calibration Error - Gyro"
    string CONTINUOUS_BIT_FLAGS_GQ7_IMU_CALIBRATION_ERROR_MAG      = "IMU Calibration Error - Mag"
    string CONTINUOUS_BIT_FLAGS_GQ7_ACCELEROMETER_GENERAL_FAULT    = "Accelerometer General Fault"
    string CONTINUOUS_BIT_FLAGS_GQ7_ACCELEROMETER_OVER_RANGE       = "Accelerometer Over-Range"
    string CONTINUOUS_BIT_FLAGS_GQ7_ACCELEROMETER_SELF_TEST_FAIL   = "Accelerometer Self-test Fail"
    string CONTINUOUS_BIT_FLAGS_GQ7_GYROSCOPE_GENERAL_FAULT        = "Gyroscope General Fault"
    string CONTINUOUS_BIT_FLAGS_GQ7_GYROSCOPE_OVER_RANGE           = "Gyroscope Over-Range"
    string CONTINUOUS_BIT_FLAGS_GQ7_GYROSCOPE_SELF_TEST_FAIL       = "Gyroscope Self-test Fail"
    string CONTINUOUS_BIT_FLAGS_GQ7_MAGNETOMETER_GENERAL_FAULT     = "Magnetometer General Fault"
    string CONTINUOUS_BIT_FLAGS_GQ7_MAGNETOMETER_OVER_RANGE        = "Magnetometer Over-Range"
    string CONTINUOUS_BIT_FLAGS_GQ7_MAGNETOMETER_SELF_TEST_FAIL    = "Magnetometer Self-test Fail"
    string CONTINUOUS_BIT_FLAGS_GQ7_PRESSURE_SENSOR_GENERAL_FAULT  = "Pressure Sensor General Fault"
    string CONTINUOUS_BIT_FLAGS_GQ7_PRESSURE_SENSOR_OVER_RANGE     = "Pressure Sensor Over-Range"
    string CONTINUOUS_BIT_FLAGS_GQ7_PRESSURE_SENSOR_SELF_TEST_FAIL = "Pressure Sensor Self-test Fail"
    string CONTINUOUS_BIT_FLAGS_GQ7_FILTER_CLOCK_FAULT             = "Filter Clock Fault"
    string CONTINUOUS_BIT_FLAGS_GQ7_FILTER_HARDWARE_FAULT          = "Filter Hardware Fault"
    string CONTINUOUS_BIT_FLAGS_GQ7_FILTER_TIMING_OVERRUN          = "Filter Timing Overrun"
    string CONTINUOUS_BIT_FLAGS_GQ7_FILTER_TIMING_UNDERRUN         = "Filter Timing Underrun"
    string CONTINUOUS_BIT_FLAGS_GQ7_FILTER_COMMUNICATION_ERROR     = "Filter Communication Error"
    string CONTINUOUS_BIT_FLAGS_GQ7_GNSS_CLOCK_FAULT               = "GNSS Clock Fault"
    string CONTINUOUS_BIT_FLAGS_GQ7_GNSS_HARDWARE_FAULT            = "GNSS Hardware Fault"
    string CONTINUOUS_BIT_FLAGS_GQ7_GNSS_COMMUNICATION_ERROR       = "GNSS Communication Error"
    string CONTINUOUS_BIT_FLAGS_GQ7_GPS_TIME_FAULT                 = "GPS Time Fault"
    string CONTINUOUS_BIT_FLAGS_GQ7_GNSS_TIMING_OVERRUN            = "GNSS Timing Overrun"
    string CONTINUOUS_BIT_FLAGS_GQ7_GNSS_RECEIVER_1_POWER_FAULT    = "GNSS Receiver 1 Power Fault"
    string CONTINUOUS_BIT_FLAGS_GQ7_GNSS_RECEIVER_1_FAULT          = "GNSS Receiver 1 Fault"
    string CONTINUOUS_BIT_FLAGS_GQ7_GNSS_ANTENNA_1_SHORTED         = "GNSS Antenna 1 Shorted"
    string CONTINUOUS_BIT_FLAGS_GQ7_GNSS_ANTENNA_1_OPEN            = "GNSS Antenna 1 Open"
    string CONTINUOUS_BIT_FLAGS_GQ7_GNSS_RECEIVER_1_SOLUTION_FAULT = "GNSS Receiver 1 Solution Fault"
    string CONTINUOUS_BIT_FLAGS_GQ7_GNSS_RECEIVER_2_POWER_FAULT    = "GNSS Receiver 2 Power Fault"
    string CONTINUOUS_BIT_FLAGS_GQ7_GNSS_RECEIVER_2_FAULT          = "GNSS Receiver 2 Fault"
    string CONTINUOUS_BIT_FLAGS_GQ7_GNSS_ANTENNA_2_SHORTED         = "GNSS Antenna 2 Shorted"
    string CONTINUOUS_BIT_FLAGS_GQ7_GNSS_ANTENNA_2_OPEN            = "GNSS Antenna 2 Open"
    string CONTINUOUS_BIT_FLAGS_GQ7_GNSS_RECEIVER_2_SOLUTION_FAULT = "GNSS Receiver 2 Solution Fault"
    string CONTINUOUS_BIT_FLAGS_GQ7_RTCM_COMMUNICATION_FAULT       = "RTCM Communication Fault"
    string CONTINUOUS_BIT_FLAGS_GQ7_RTK_DONGLE_FAULT               = "RTK Dongle Fault"
    
    # Possible values to be stored in continuous_bit_flags when the device is a CV7
    # See https://files.microstrain.com/CV7+Online/user_manual_content/additional_features/Built-in%20Test.htm?Highlight=built%20in%20test for more information
    string CONTINUOUS_BIT_FLAGS_CV7_SYSTEM_CLOCK_FAILURE                = "System Clock Failure"
    string CONTINUOUS_BIT_FLAGS_CV7_POWER_FAULT                         = "Power Fault"
    string CONTINUOUS_BIT_FLAGS_CV7_FIRMWARE_FAULT                      = "Firmware Fault"
    string CONTINUOUS_BIT_FLAGS_CV7_TIMING_OVERLOAD                     = "Timing Overload"
    string CONTINUOUS_BIT_FLAGS_CV7_BUFFER_OVERRUN                      = "Buffer Overrun"
    string CONTINUOUS_BIT_FLAGS_CV7_IMU_PROCESS_FAULT                   = "IMU Process Fault"
    string CONTINUOUS_BIT_FLAGS_CV7_IMU_DATA_RATE_MISMATCH              = "IMU Data Rate Mismatch"
    string CONTINUOUS_BIT_FLAGS_CV7_IMU_OVERRUN_DROPPED_DATA            = "IMU Overrun/Dropped Data"
    string CONTINUOUS_BIT_FLAGS_CV7_IMU_STUCK                           = "IMU Stuck"
    string CONTINUOUS_BIT_FLAGS_CV7_FILTER_PROCESS_FAULT                = "Filter Process Fault"
    string CONTINUOUS_BIT_FLAGS_CV7_FILTER_DROPPED_DATA                 = "Filter Dropped Data"
    string CONTINUOUS_BIT_FLAGS_CV7_FILTER_RATE_MISMATCH                = "Filter Rate Mismatch"
    string CONTINUOUS_BIT_FLAGS_CV7_FILTER_STUCK                        = "Filter Stuck"
    string CONTINUOUS_BIT_FLAGS_CV7_IMU_CLOCK_FAULT                     = "IMU Clock Fault"
    string CONTINUOUS_BIT_FLAGS_CV7_IMU_COMMUNICATION_FAULT             = "IMU Communication Fault"
    string CONTINUOUS_BIT_FLAGS_CV7_IMU_TIMING_OVERRUN                  = "IMU Timing Overrun"
    string CONTINUOUS_BIT_FLAGS_CV7_IMU_CALIBRATION_ERROR_ACCELEROMETER = "IMU Calibration Error - Accelerometer"
    string CONTINUOUS_BIT_FLAGS_CV7_IMU_CALIBRATION_ERROR_GYROSCOPE     = "IMU Calibration Error - Gyroscope"
    string CONTINUOUS_BIT_FLAGS_CV7_IMU_CALIBRATION_ERROR_MAGNETOMETER  = "IMU Calibration Error - Magnetometer"
    string CONTINUOUS_BIT_FLAGS_CV7_ACCELEROMETER_GENERAL_FAULT         = "Accelerometer General Fault"
    string CONTINUOUS_BIT_FLAGS_CV7_ACCELEROMETER_OVER_RANGE            = "Accelerometer Over-range"
    string CONTINUOUS_BIT_FLAGS_CV7_ACCELEROMETER_SELF_TEST_FAIL        = "Accelerometer Self-test Fail"
    string CONTINUOUS_BIT_FLAGS_CV7_GYROSCOPE_GENERAL_FAULT             = "Gyroscope General Fault"
    string CONTINUOUS_BIT_FLAGS_CV7_GYROSCOPE_OVER_RANGE                = "Gyroscope Over-range"
    string CONTINUOUS_BIT_FLAGS_CV7_GYROSCOPE_SELF_TEST_FAIL            = "Gyroscope Self-test Fail"
    string CONTINUOUS_BIT_FLAGS_CV7_MAGNETOMETER_GENERAL_FAULT          = "Magnetometer General Fault"
    string CONTINUOUS_BIT_FLAGS_CV7_MAGNETOMETER_OVER_RANGE             = "Magnetometer Over-range"
    string CONTINUOUS_BIT_FLAGS_CV7_MAGNETOMETER_SELF_TEST_FAIL         = "Magnetometer Self-test Fail"
    string CONTINUOUS_BIT_FLAGS_CV7_PRESSURE_SENSOR_GENERAL_FAULT       = "Pressure Sensor General Fault"
    string CONTINUOUS_BIT_FLAGS_CV7_PRESSURE_SENSOR_OVER_RANGE          = "Pressure Sensor Over-range"
    string CONTINUOUS_BIT_FLAGS_CV7_PRESSURE_SENSOR_SELF_TEST_FAIL      = "Pressure Sensor Self-test Fail"
    string CONTINUOUS_BIT_FLAGS_CV7_FACTORY_BITS_INVALID                = "Factory Bits Invalid"
    string CONTINUOUS_BIT_FLAGS_CV7_FILTER_FAULT                        = "Filter Fault"
    string CONTINUOUS_BIT_FLAGS_CV7_FILTER_TIMING_OVERRUN               = "Filter Timing Overrun"
    string CONTINUOUS_BIT_FLAGS_CV7_FILTER_TIMING_UNDERRUN              = "Filter Timing Underrun"
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
    MSG: microstrain_inertial_msgs/MipBaseDeviceInfo
    # Message definition for https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Commands/base_command/data/base_device_info.htm
    #   Note: This message will never be published on it's own, only included in other messages.
    string firmware_version  # String version of the firmware version on the device
    string model_name        # Model name (3DM-GQ7, 3DM-GX5, etc.)
    string model_number      # Model number (6284, 6285, etc.)
    string serial_number     # Serial number (6284.109766, 6285.13404, etc.)
    string lot_number        # Lot number
    string device_options    # Device options
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HumanReadableStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.device_info !== undefined) {
      resolved.device_info = MipBaseDeviceInfo.Resolve(msg.device_info)
    }
    else {
      resolved.device_info = new MipBaseDeviceInfo()
    }

    if (msg.gnss_state !== undefined) {
      resolved.gnss_state = msg.gnss_state;
    }
    else {
      resolved.gnss_state = ''
    }

    if (msg.dual_antenna_fix_type !== undefined) {
      resolved.dual_antenna_fix_type = msg.dual_antenna_fix_type;
    }
    else {
      resolved.dual_antenna_fix_type = ''
    }

    if (msg.filter_state !== undefined) {
      resolved.filter_state = msg.filter_state;
    }
    else {
      resolved.filter_state = ''
    }

    if (msg.status_flags !== undefined) {
      resolved.status_flags = msg.status_flags;
    }
    else {
      resolved.status_flags = []
    }

    if (msg.continuous_bit_flags !== undefined) {
      resolved.continuous_bit_flags = msg.continuous_bit_flags;
    }
    else {
      resolved.continuous_bit_flags = []
    }

    return resolved;
    }
};

// Constants for message
HumanReadableStatus.Constants = {
  UNSUPPORTED: '"Unsupported"',
  GNSS_STATE_NO_FIX: '"No Fix"',
  GNSS_STATE_3D_FIX: '"3D Fix"',
  GNSS_STATE_SBAS: '"SBAS"',
  GNSS_STATE_RTK_FLOAT: '"RTK Float"',
  GNSS_STATE_RTK_FIXED: '"RTK Fixed"',
  DUAL_ANTENNA_FIX_TYPE_NONE: '"None"',
  DUAL_ANTENNA_FIX_TYPE_FLOAT: '"Dual Antenna Float"',
  DUAL_ANTENNA_FIX_TYPE_FIXED: '"Dual Antenna Fixed"',
  FILTER_STATE_GX5_STARTUP: '"Startup"',
  FILTER_STATE_GX5_INIT: '"Init"',
  FILTER_STATE_GX5_RUN_SOLUTION_VALID: '"Solution Valid"',
  FILTER_STATE_GX5_RUN_SOLUTION_ERROR: '"Solution Error"',
  FILTER_STATE_GQ7_INIT: '"Init"',
  FILTER_STATE_GQ7_VERT_GYRO: '"Vertical Gyro"',
  FILTER_STATE_GQ7_AHRS: '"AHRS"',
  FILTER_STATE_GQ7_FULL_NAV: '"Full Nav"',
  STATUS_FLAGS_GX5_INIT_NO_ATTITUDE: '"Init No Attitude"',
  STATUS_FLAGS_GX5_INIT_NO_POSITION_VELOCITY: '"Init No Position / Velocity"',
  STATUS_FLAGS_GX5_RUN_IMU_UNAVAILABLE: '"IMU Unavailable"',
  STATUS_FLAGS_GX5_RUN_GPS_UNAVAILABLE: '"GPS Unavailable"',
  STATUS_FLAGS_GX5_RUN_MATRIX_SINGULARITY: '"Matrix Singularity"',
  STATUS_FLAGS_GX5_RUN_POSITION_COVARIANCE_WARNING: '"Position Covariance Warning"',
  STATUS_FLAGS_GX5_RUN_VELOCITY_COVARIANCE_WARNING: '"Velocity Covariance Warning"',
  STATUS_FLAGS_GX5_RUN_ATTITUDE_COVARIANCE_WARNING: '"Attitude Covariance Warning"',
  STATUS_FLAGS_GX5_RUN_NAN_IN_SOLUTION_WARNING: '"NaN in Solution"',
  STATUS_FLAGS_GX5_RUN_GYRO_BIAS_EST_HIGH_WARNING: '"Gyroscope Bias Estimate High"',
  STATUS_FLAGS_GX5_RUN_ACCEL_BIAS_EST_HIGH_WARNING: '"Accelerometer Bias Estimate High"',
  STATUS_FLAGS_GX5_RUN_GYRO_SCALE_FACTOR_EST_HIGH_WARNING: '"Gyroscope Scale Factor Estimate High"',
  STATUS_FLAGS_GX5_RUN_ACCEL_SCALE_FACTOR_EST_HIGH_WARNING: '"Accelerometer Scal Factor Estimate High"',
  STATUS_FLAGS_GX5_RUN_MAG_BIAS_EST_HIGH_WARNING: '"Magnetometer Bias Estimate High"',
  STATUS_FLAGS_GX5_RUN_ANT_OFFSET_CORRECTION_EST_HIGH_WARNING: '"Antenna Offset Correction Estimate High"',
  STATUS_FLAGS_GX5_RUN_MAG_HARD_IRON_EST_HIGH_WARNING: '"Magnetometer Hard Iron Estimate High"',
  STATUS_FLAGS_GX5_RUN_MAG_SOFT_IRON_EST_HIGH_WARNING: '"Magnetometer Soft Iron Estimate High"',
  STATUS_FLAGS_GQ7_FILTER_CONDITION_STABLE: '"Stable"',
  STATUS_FLAGS_GQ7_FILTER_CONDITION_CONVERGING: '"Converging"',
  STATUS_FLAGS_GQ7_FILTER_CONDITION_UNSTABLE: '"Unstable"',
  STATUS_FLAGS_GQ7_ROLL_PITCH_WARNING: '"Roll / Pitch Warning"',
  STATUS_FLAGS_GQ7_HEADING_WARNING: '"Heading Warning"',
  STATUS_FLAGS_GQ7_POSITION_WARNING: '"Position Warning"',
  STATUS_FLAGS_GQ7_VELOCITY_WARNING: '"Velocity Warning"',
  STATUS_FLAGS_GQ7_IMU_BIAS_WARNING: '"IMU Bias Warning"',
  STATUS_FLAGS_GQ7_GNSS_CLK_WARNING: '"GNSS Clock Warning"',
  STATUS_FLAGS_GQ7_ANTENNA_LEVER_ARM_WARNING: '"Antenna Lever Arm Warning"',
  STATUS_FLAGS_GQ7_MOUNTING_TRANSFORM_WARNING: '"Mounting Transform Warning"',
  STATUS_FLAGS_GQ7_TIME_SYNC_WARNING: '"Time Sync Warning"',
  STATUS_FLAGS_GQ7_SOLUTION_ERROR: '"Solution Error"',
  CONTINUOUS_BIT_FLAGS_GQ7_SYSTEM_CLOCK_FAILURE: '"System Clock Failure"',
  CONTINUOUS_BIT_FLAGS_GQ7_POWER_FAULT: '"Power Fault"',
  CONTINUOUS_BIT_FLAGS_GQ7_FIRMWARE_FAULT: '"Firmware Fault"',
  CONTINUOUS_BIT_FLAGS_GQ7_TIMING_OVERLOAD: '"Timing Overload"',
  CONTINUOUS_BIT_FLAGS_GQ7_BUFFER_OVERRUN: '"Buffer Overrun"',
  CONTINUOUS_BIT_FLAGS_GQ7_IMU_IPC_FAULT: '"IMU IPC Fault"',
  CONTINUOUS_BIT_FLAGS_GQ7_FILTER_IPC_FAULT: '"Filter IPC Fault"',
  CONTINUOUS_BIT_FLAGS_GQ7_GNSS_IPC_FAULT: '"GNSS IPC Fault"',
  CONTINUOUS_BIT_FLAGS_GQ7_IMU_CLOCK_FAULT: '"IMU Clock Fault"',
  CONTINUOUS_BIT_FLAGS_GQ7_IMU_COMMUNICATION_FAULT: '"IMU Communication Fault"',
  CONTINUOUS_BIT_FLAGS_GQ7_IMU_TIMING_OVERRUN: '"IMU Timing Overrun"',
  CONTINUOUS_BIT_FLAGS_GQ7_IMU_CALIBRATION_ERROR_ACCEL: '"IMU Calibration Error - Accel"',
  CONTINUOUS_BIT_FLAGS_GQ7_IMU_CALIBRATION_ERROR_GYRO: '"IMU Calibration Error - Gyro"',
  CONTINUOUS_BIT_FLAGS_GQ7_IMU_CALIBRATION_ERROR_MAG: '"IMU Calibration Error - Mag"',
  CONTINUOUS_BIT_FLAGS_GQ7_ACCELEROMETER_GENERAL_FAULT: '"Accelerometer General Fault"',
  CONTINUOUS_BIT_FLAGS_GQ7_ACCELEROMETER_OVER_RANGE: '"Accelerometer Over-Range"',
  CONTINUOUS_BIT_FLAGS_GQ7_ACCELEROMETER_SELF_TEST_FAIL: '"Accelerometer Self-test Fail"',
  CONTINUOUS_BIT_FLAGS_GQ7_GYROSCOPE_GENERAL_FAULT: '"Gyroscope General Fault"',
  CONTINUOUS_BIT_FLAGS_GQ7_GYROSCOPE_OVER_RANGE: '"Gyroscope Over-Range"',
  CONTINUOUS_BIT_FLAGS_GQ7_GYROSCOPE_SELF_TEST_FAIL: '"Gyroscope Self-test Fail"',
  CONTINUOUS_BIT_FLAGS_GQ7_MAGNETOMETER_GENERAL_FAULT: '"Magnetometer General Fault"',
  CONTINUOUS_BIT_FLAGS_GQ7_MAGNETOMETER_OVER_RANGE: '"Magnetometer Over-Range"',
  CONTINUOUS_BIT_FLAGS_GQ7_MAGNETOMETER_SELF_TEST_FAIL: '"Magnetometer Self-test Fail"',
  CONTINUOUS_BIT_FLAGS_GQ7_PRESSURE_SENSOR_GENERAL_FAULT: '"Pressure Sensor General Fault"',
  CONTINUOUS_BIT_FLAGS_GQ7_PRESSURE_SENSOR_OVER_RANGE: '"Pressure Sensor Over-Range"',
  CONTINUOUS_BIT_FLAGS_GQ7_PRESSURE_SENSOR_SELF_TEST_FAIL: '"Pressure Sensor Self-test Fail"',
  CONTINUOUS_BIT_FLAGS_GQ7_FILTER_CLOCK_FAULT: '"Filter Clock Fault"',
  CONTINUOUS_BIT_FLAGS_GQ7_FILTER_HARDWARE_FAULT: '"Filter Hardware Fault"',
  CONTINUOUS_BIT_FLAGS_GQ7_FILTER_TIMING_OVERRUN: '"Filter Timing Overrun"',
  CONTINUOUS_BIT_FLAGS_GQ7_FILTER_TIMING_UNDERRUN: '"Filter Timing Underrun"',
  CONTINUOUS_BIT_FLAGS_GQ7_FILTER_COMMUNICATION_ERROR: '"Filter Communication Error"',
  CONTINUOUS_BIT_FLAGS_GQ7_GNSS_CLOCK_FAULT: '"GNSS Clock Fault"',
  CONTINUOUS_BIT_FLAGS_GQ7_GNSS_HARDWARE_FAULT: '"GNSS Hardware Fault"',
  CONTINUOUS_BIT_FLAGS_GQ7_GNSS_COMMUNICATION_ERROR: '"GNSS Communication Error"',
  CONTINUOUS_BIT_FLAGS_GQ7_GPS_TIME_FAULT: '"GPS Time Fault"',
  CONTINUOUS_BIT_FLAGS_GQ7_GNSS_TIMING_OVERRUN: '"GNSS Timing Overrun"',
  CONTINUOUS_BIT_FLAGS_GQ7_GNSS_RECEIVER_1_POWER_FAULT: '"GNSS Receiver 1 Power Fault"',
  CONTINUOUS_BIT_FLAGS_GQ7_GNSS_RECEIVER_1_FAULT: '"GNSS Receiver 1 Fault"',
  CONTINUOUS_BIT_FLAGS_GQ7_GNSS_ANTENNA_1_SHORTED: '"GNSS Antenna 1 Shorted"',
  CONTINUOUS_BIT_FLAGS_GQ7_GNSS_ANTENNA_1_OPEN: '"GNSS Antenna 1 Open"',
  CONTINUOUS_BIT_FLAGS_GQ7_GNSS_RECEIVER_1_SOLUTION_FAULT: '"GNSS Receiver 1 Solution Fault"',
  CONTINUOUS_BIT_FLAGS_GQ7_GNSS_RECEIVER_2_POWER_FAULT: '"GNSS Receiver 2 Power Fault"',
  CONTINUOUS_BIT_FLAGS_GQ7_GNSS_RECEIVER_2_FAULT: '"GNSS Receiver 2 Fault"',
  CONTINUOUS_BIT_FLAGS_GQ7_GNSS_ANTENNA_2_SHORTED: '"GNSS Antenna 2 Shorted"',
  CONTINUOUS_BIT_FLAGS_GQ7_GNSS_ANTENNA_2_OPEN: '"GNSS Antenna 2 Open"',
  CONTINUOUS_BIT_FLAGS_GQ7_GNSS_RECEIVER_2_SOLUTION_FAULT: '"GNSS Receiver 2 Solution Fault"',
  CONTINUOUS_BIT_FLAGS_GQ7_RTCM_COMMUNICATION_FAULT: '"RTCM Communication Fault"',
  CONTINUOUS_BIT_FLAGS_GQ7_RTK_DONGLE_FAULT: '"RTK Dongle Fault"',
  CONTINUOUS_BIT_FLAGS_CV7_SYSTEM_CLOCK_FAILURE: '"System Clock Failure"',
  CONTINUOUS_BIT_FLAGS_CV7_POWER_FAULT: '"Power Fault"',
  CONTINUOUS_BIT_FLAGS_CV7_FIRMWARE_FAULT: '"Firmware Fault"',
  CONTINUOUS_BIT_FLAGS_CV7_TIMING_OVERLOAD: '"Timing Overload"',
  CONTINUOUS_BIT_FLAGS_CV7_BUFFER_OVERRUN: '"Buffer Overrun"',
  CONTINUOUS_BIT_FLAGS_CV7_IMU_PROCESS_FAULT: '"IMU Process Fault"',
  CONTINUOUS_BIT_FLAGS_CV7_IMU_DATA_RATE_MISMATCH: '"IMU Data Rate Mismatch"',
  CONTINUOUS_BIT_FLAGS_CV7_IMU_OVERRUN_DROPPED_DATA: '"IMU Overrun/Dropped Data"',
  CONTINUOUS_BIT_FLAGS_CV7_IMU_STUCK: '"IMU Stuck"',
  CONTINUOUS_BIT_FLAGS_CV7_FILTER_PROCESS_FAULT: '"Filter Process Fault"',
  CONTINUOUS_BIT_FLAGS_CV7_FILTER_DROPPED_DATA: '"Filter Dropped Data"',
  CONTINUOUS_BIT_FLAGS_CV7_FILTER_RATE_MISMATCH: '"Filter Rate Mismatch"',
  CONTINUOUS_BIT_FLAGS_CV7_FILTER_STUCK: '"Filter Stuck"',
  CONTINUOUS_BIT_FLAGS_CV7_IMU_CLOCK_FAULT: '"IMU Clock Fault"',
  CONTINUOUS_BIT_FLAGS_CV7_IMU_COMMUNICATION_FAULT: '"IMU Communication Fault"',
  CONTINUOUS_BIT_FLAGS_CV7_IMU_TIMING_OVERRUN: '"IMU Timing Overrun"',
  CONTINUOUS_BIT_FLAGS_CV7_IMU_CALIBRATION_ERROR_ACCELEROMETER: '"IMU Calibration Error - Accelerometer"',
  CONTINUOUS_BIT_FLAGS_CV7_IMU_CALIBRATION_ERROR_GYROSCOPE: '"IMU Calibration Error - Gyroscope"',
  CONTINUOUS_BIT_FLAGS_CV7_IMU_CALIBRATION_ERROR_MAGNETOMETER: '"IMU Calibration Error - Magnetometer"',
  CONTINUOUS_BIT_FLAGS_CV7_ACCELEROMETER_GENERAL_FAULT: '"Accelerometer General Fault"',
  CONTINUOUS_BIT_FLAGS_CV7_ACCELEROMETER_OVER_RANGE: '"Accelerometer Over-range"',
  CONTINUOUS_BIT_FLAGS_CV7_ACCELEROMETER_SELF_TEST_FAIL: '"Accelerometer Self-test Fail"',
  CONTINUOUS_BIT_FLAGS_CV7_GYROSCOPE_GENERAL_FAULT: '"Gyroscope General Fault"',
  CONTINUOUS_BIT_FLAGS_CV7_GYROSCOPE_OVER_RANGE: '"Gyroscope Over-range"',
  CONTINUOUS_BIT_FLAGS_CV7_GYROSCOPE_SELF_TEST_FAIL: '"Gyroscope Self-test Fail"',
  CONTINUOUS_BIT_FLAGS_CV7_MAGNETOMETER_GENERAL_FAULT: '"Magnetometer General Fault"',
  CONTINUOUS_BIT_FLAGS_CV7_MAGNETOMETER_OVER_RANGE: '"Magnetometer Over-range"',
  CONTINUOUS_BIT_FLAGS_CV7_MAGNETOMETER_SELF_TEST_FAIL: '"Magnetometer Self-test Fail"',
  CONTINUOUS_BIT_FLAGS_CV7_PRESSURE_SENSOR_GENERAL_FAULT: '"Pressure Sensor General Fault"',
  CONTINUOUS_BIT_FLAGS_CV7_PRESSURE_SENSOR_OVER_RANGE: '"Pressure Sensor Over-range"',
  CONTINUOUS_BIT_FLAGS_CV7_PRESSURE_SENSOR_SELF_TEST_FAIL: '"Pressure Sensor Self-test Fail"',
  CONTINUOUS_BIT_FLAGS_CV7_FACTORY_BITS_INVALID: '"Factory Bits Invalid"',
  CONTINUOUS_BIT_FLAGS_CV7_FILTER_FAULT: '"Filter Fault"',
  CONTINUOUS_BIT_FLAGS_CV7_FILTER_TIMING_OVERRUN: '"Filter Timing Overrun"',
  CONTINUOUS_BIT_FLAGS_CV7_FILTER_TIMING_UNDERRUN: '"Filter Timing Underrun"',
}

module.exports = HumanReadableStatus;
