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

class MipSensorOverrangeStatusStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.accel_x = null;
      this.accel_y = null;
      this.accel_z = null;
      this.gyro_x = null;
      this.gyro_y = null;
      this.gyro_z = null;
      this.mag_x = null;
      this.mag_y = null;
      this.mag_z = null;
      this.press = null;
    }
    else {
      if (initObj.hasOwnProperty('accel_x')) {
        this.accel_x = initObj.accel_x
      }
      else {
        this.accel_x = false;
      }
      if (initObj.hasOwnProperty('accel_y')) {
        this.accel_y = initObj.accel_y
      }
      else {
        this.accel_y = false;
      }
      if (initObj.hasOwnProperty('accel_z')) {
        this.accel_z = initObj.accel_z
      }
      else {
        this.accel_z = false;
      }
      if (initObj.hasOwnProperty('gyro_x')) {
        this.gyro_x = initObj.gyro_x
      }
      else {
        this.gyro_x = false;
      }
      if (initObj.hasOwnProperty('gyro_y')) {
        this.gyro_y = initObj.gyro_y
      }
      else {
        this.gyro_y = false;
      }
      if (initObj.hasOwnProperty('gyro_z')) {
        this.gyro_z = initObj.gyro_z
      }
      else {
        this.gyro_z = false;
      }
      if (initObj.hasOwnProperty('mag_x')) {
        this.mag_x = initObj.mag_x
      }
      else {
        this.mag_x = false;
      }
      if (initObj.hasOwnProperty('mag_y')) {
        this.mag_y = initObj.mag_y
      }
      else {
        this.mag_y = false;
      }
      if (initObj.hasOwnProperty('mag_z')) {
        this.mag_z = initObj.mag_z
      }
      else {
        this.mag_z = false;
      }
      if (initObj.hasOwnProperty('press')) {
        this.press = initObj.press
      }
      else {
        this.press = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MipSensorOverrangeStatusStatus
    // Serialize message field [accel_x]
    bufferOffset = _serializer.bool(obj.accel_x, buffer, bufferOffset);
    // Serialize message field [accel_y]
    bufferOffset = _serializer.bool(obj.accel_y, buffer, bufferOffset);
    // Serialize message field [accel_z]
    bufferOffset = _serializer.bool(obj.accel_z, buffer, bufferOffset);
    // Serialize message field [gyro_x]
    bufferOffset = _serializer.bool(obj.gyro_x, buffer, bufferOffset);
    // Serialize message field [gyro_y]
    bufferOffset = _serializer.bool(obj.gyro_y, buffer, bufferOffset);
    // Serialize message field [gyro_z]
    bufferOffset = _serializer.bool(obj.gyro_z, buffer, bufferOffset);
    // Serialize message field [mag_x]
    bufferOffset = _serializer.bool(obj.mag_x, buffer, bufferOffset);
    // Serialize message field [mag_y]
    bufferOffset = _serializer.bool(obj.mag_y, buffer, bufferOffset);
    // Serialize message field [mag_z]
    bufferOffset = _serializer.bool(obj.mag_z, buffer, bufferOffset);
    // Serialize message field [press]
    bufferOffset = _serializer.bool(obj.press, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MipSensorOverrangeStatusStatus
    let len;
    let data = new MipSensorOverrangeStatusStatus(null);
    // Deserialize message field [accel_x]
    data.accel_x = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [accel_y]
    data.accel_y = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [accel_z]
    data.accel_z = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gyro_x]
    data.gyro_x = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gyro_y]
    data.gyro_y = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gyro_z]
    data.gyro_z = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mag_x]
    data.mag_x = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mag_y]
    data.mag_y = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mag_z]
    data.mag_z = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [press]
    data.press = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'microstrain_inertial_msgs/MipSensorOverrangeStatusStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0b343e6367e45b73c841c8255a4cfbba';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message definition for the Status field of https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/sensor_data/data/mip_field_sensor_overrange_status.htm?Highlight=overrange
    #   Note: This message will never be published on it's own, only included in other messages.
    
    bool accel_x
    bool accel_y
    bool accel_z
    bool gyro_x
    bool gyro_y
    bool gyro_z
    bool mag_x
    bool mag_y
    bool mag_z
    bool press
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MipSensorOverrangeStatusStatus(null);
    if (msg.accel_x !== undefined) {
      resolved.accel_x = msg.accel_x;
    }
    else {
      resolved.accel_x = false
    }

    if (msg.accel_y !== undefined) {
      resolved.accel_y = msg.accel_y;
    }
    else {
      resolved.accel_y = false
    }

    if (msg.accel_z !== undefined) {
      resolved.accel_z = msg.accel_z;
    }
    else {
      resolved.accel_z = false
    }

    if (msg.gyro_x !== undefined) {
      resolved.gyro_x = msg.gyro_x;
    }
    else {
      resolved.gyro_x = false
    }

    if (msg.gyro_y !== undefined) {
      resolved.gyro_y = msg.gyro_y;
    }
    else {
      resolved.gyro_y = false
    }

    if (msg.gyro_z !== undefined) {
      resolved.gyro_z = msg.gyro_z;
    }
    else {
      resolved.gyro_z = false
    }

    if (msg.mag_x !== undefined) {
      resolved.mag_x = msg.mag_x;
    }
    else {
      resolved.mag_x = false
    }

    if (msg.mag_y !== undefined) {
      resolved.mag_y = msg.mag_y;
    }
    else {
      resolved.mag_y = false
    }

    if (msg.mag_z !== undefined) {
      resolved.mag_z = msg.mag_z;
    }
    else {
      resolved.mag_z = false
    }

    if (msg.press !== undefined) {
      resolved.press = msg.press;
    }
    else {
      resolved.press = false
    }

    return resolved;
    }
};

module.exports = MipSensorOverrangeStatusStatus;
