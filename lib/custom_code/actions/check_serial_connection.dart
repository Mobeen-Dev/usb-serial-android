// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:usb_serial/usb_serial.dart';
import 'dart:async'; // For Completer
import 'dart:convert'; // For utf8 decoding
import 'dart:typed_data'; // For Uint8List

Future<String> checkSerialConnection() async {
  try {
    // Retrieve the list of available USB devices.
    List<UsbDevice> devices = await UsbSerial.listDevices();
    if (devices.length == 0) {
      return "No USB devices found.";
    }

    // Select the last available device from the list.
    UsbDevice lastDevice = devices[devices.length - 1];

    UsbPort? port = await lastDevice.create();
    if (port == null) {
      return "Failed to create port for device: ${lastDevice.deviceName}";
    }

    // Attempt to open the port.
    bool opened = await port.open();
    if (!opened) {
      return "Failed to open port on device: ${lastDevice.deviceName}";
    }
    await port.setDTR(true);
    await port.setRTS(true);

    // Configure the port parameters.
    await port.setPortParameters(
        115200, // Baud rate
        UsbPort.DATABITS_8, // Data bits
        UsbPort.STOPBITS_1, // Stop bits
        UsbPort.PARITY_NONE // Parity
        );

    // Optionally re-enable control signals.
    await port.setDTR(true);
    await port.setRTS(true);

    // Create a Completer to complete when a valid message is received.
    Completer<String> completer = Completer<String>();
    String buffer = "";

    // Check if inputStream is available.
    if (port.inputStream == null) {
      return "Error: inputStream is null.";
    }

    // Listen for incoming data.
    port.inputStream!.listen((Uint8List data) {
      String received = utf8.decode(data, allowMalformed: true);
      buffer += received; // Append the received data to the buffer

      // Look for a complete message delimited by '<' and '>'.
      int startIndex = buffer.indexOf('<');
      int endIndex = buffer.indexOf('>', startIndex);
      if (startIndex != -1 && endIndex != -1 && endIndex > startIndex) {
        String completeMessage = buffer.substring(startIndex, endIndex + 1);
        if (!completer.isCompleted) {
          completer.complete(completeMessage);
        }
      }
    });

    // Wait until a complete message is received.
    String message = await completer.future;
    return message;
  } catch (e) {
    // Catch and return any errors encountered during the connection process.
    return "Error connecting to USB device: $e";
  }
}
