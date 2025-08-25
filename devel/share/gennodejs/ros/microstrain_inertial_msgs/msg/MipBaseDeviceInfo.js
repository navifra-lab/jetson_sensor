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

class MipBaseDeviceInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.firmware_version = null;
      this.model_name = null;
      this.model_number = null;
      this.serial_number = null;
      this.lot_number = null;
      this.device_options = null;
    }
    else {
      if (initObj.hasOwnProperty('firmware_version')) {
        this.firmware_version = initObj.firmware_version
      }
      else {
        this.firmware_version = '';
      }
      if (initObj.hasOwnProperty('model_name')) {
        this.model_name = initObj.model_name
      }
      else {
        this.model_name = '';
      }
      if (initObj.hasOwnProperty('model_number')) {
        this.model_number = initObj.model_number
      }
      else {
        this.model_number = '';
      }
      if (initObj.hasOwnProperty('serial_number')) {
        this.serial_number = initObj.serial_number
      }
      else {
        this.serial_number = '';
      }
      if (initObj.hasOwnProperty('lot_number')) {
        this.lot_number = initObj.lot_number
      }
      else {
        this.lot_number = '';
      }
      if (initObj.hasOwnProperty('device_options')) {
        this.device_options = initObj.device_options
      }
      else {
        this.device_options = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MipBaseDeviceInfo
    // Serialize message field [firmware_version]
    bufferOffset = _serializer.string(obj.firmware_version, buffer, bufferOffset);
    // Serialize message field [model_name]
    bufferOffset = _serializer.string(obj.model_name, buffer, bufferOffset);
    // Serialize message field [model_number]
    bufferOffset = _serializer.string(obj.model_number, buffer, bufferOffset);
    // Serialize message field [serial_number]
    bufferOffset = _serializer.string(obj.serial_number, buffer, bufferOffset);
    // Serialize message field [lot_number]
    bufferOffset = _serializer.string(obj.lot_number, buffer, bufferOffset);
    // Serialize message field [device_options]
    bufferOffset = _serializer.string(obj.device_options, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MipBaseDeviceInfo
    let len;
    let data = new MipBaseDeviceInfo(null);
    // Deserialize message field [firmware_version]
    data.firmware_version = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [model_name]
    data.model_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [model_number]
    data.model_number = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [serial_number]
    data.serial_number = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [lot_number]
    data.lot_number = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [device_options]
    data.device_options = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.firmware_version.length;
    length += object.model_name.length;
    length += object.model_number.length;
    length += object.serial_number.length;
    length += object.lot_number.length;
    length += object.device_options.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'microstrain_inertial_msgs/MipBaseDeviceInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'df41d79ab6c7222345becf9da712892f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new MipBaseDeviceInfo(null);
    if (msg.firmware_version !== undefined) {
      resolved.firmware_version = msg.firmware_version;
    }
    else {
      resolved.firmware_version = ''
    }

    if (msg.model_name !== undefined) {
      resolved.model_name = msg.model_name;
    }
    else {
      resolved.model_name = ''
    }

    if (msg.model_number !== undefined) {
      resolved.model_number = msg.model_number;
    }
    else {
      resolved.model_number = ''
    }

    if (msg.serial_number !== undefined) {
      resolved.serial_number = msg.serial_number;
    }
    else {
      resolved.serial_number = ''
    }

    if (msg.lot_number !== undefined) {
      resolved.lot_number = msg.lot_number;
    }
    else {
      resolved.lot_number = ''
    }

    if (msg.device_options !== undefined) {
      resolved.device_options = msg.device_options;
    }
    else {
      resolved.device_options = ''
    }

    return resolved;
    }
};

module.exports = MipBaseDeviceInfo;
