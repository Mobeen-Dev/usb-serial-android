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

Future<ErrorStruct> uploadCmdsSerial(EditablesStruct settings) async {
  ErrorStruct response = ErrorStruct();
  response.proceed = false;
  List<String> commands = [];

  // print(
  //     '<CV${settings.pvVoltageCalibrationFactor.toString().padLeft(4, '0')}>');
  // print('<CA${settings.pvAmpereCalibrationFactor.toString().padLeft(4, '0')}>');
  // print('<WV0001>');
  // print('<CC${settings.acOutVoltCFactorSineWave.toString().padLeft(4, '0')}>');
  // print('<WV0000>');
  // print('<CM${settings.acOutVoltCFactorMSineWave.toString().padLeft(4, '0')}>');
  // print('<CG${settings.gridAmpereCF.toString().padLeft(4, '0')}>');
  // print('<Vm${settings.vmppVolts.toString().padLeft(4, '0')}>');
  // print('<VO${settings.setAcOutVolts.toString().padLeft(4, '0')}>');
  // print('<SF${settings.softStartValue.toString().padLeft(4, '0')}>');
  // print('<WV${settings.waveTypeValue.toString().padLeft(4, '0')}>');
  // print('<FN${settings.fanModeValue.toString().padLeft(4, '0')}>');
  // print('<MA${settings.maxPvAmpere.toString().padLeft(4, '0')}>');
  // print('<AL${settings.cutOffVoltsValue.toString().padLeft(4, '0')}>');

  try {
    commands = [
      "<CG${settings.gridAmpereCF.toString().padLeft(4, '0')}>\r\n",
      "<FR>\r\n",
      "<CV${settings.pvVoltageCalibrationFactor.toString().padLeft(4, '0')}>\r\n",
      "<CA${settings.pvAmpereCalibrationFactor.toString().padLeft(4, '0')}>\r\n",
      "<WV0001>\r\n",
      "<CC${settings.acOutVoltCFactorSineWave.toString().padLeft(4, '0')}>\r\n",
      "<WV0000>\r\n",
      "<CM${settings.acOutVoltCFactorMSineWave.toString().padLeft(4, '0')}>\r\n",
      "<CG${settings.gridAmpereCF.toString().padLeft(4, '0')}>\r\n",
      "<Vm${settings.vmppVolts.toString().padLeft(4, '0')}>\r\n",
      "<VO${settings.setAcOutVolts.toString().padLeft(4, '0')}>\r\n",
      "<SF${settings.softStartValue.toString().padLeft(4, '0')}>\r\n",
      "<WV${settings.waveTypeValue.toString().padLeft(4, '0')}>\r\n",
      "<FN${settings.fanModeValue.toString().padLeft(4, '0')}>\r\n",
      "<MA${settings.maxPvAmpere.toString().padLeft(4, '0')}>\r\n",
      "<AL${settings.cutOffAcVoltsValue.toString().padLeft(4, '0')}>\r\n",
      "<SV>\r\n",
      "<SV>\r\n",
      "<SV>\r\n" "<SV>\r\n" "<SV>\r\n",
      "<SV>\r\n",
      "<SV>\r\n",
      "<SV>\r\n",
      "<SV>\r\n",
      "<SV>\r\n"
    ];
  } catch (e) {
    response.error =
        "Unexpected Values Cause Command Parsing Error : " + e.toString();
    return response;
  }
  try {
    List<UsbDevice> devices = await UsbSerial.listDevices();
    if (devices.isEmpty) {
      response.error = "No USB devices found.";
    }

    // Select the last available device.
    UsbDevice device = devices.last;

    // Create a port for the device.
    UsbPort? port = await device.create();
    if (port == null) {
      response.error = "Failed to create port for device: ${device.deviceName}";
      return response;
    }
    Duration gap = Duration(seconds: 5);
    // Attempt to open the port.
    bool opened = await port.open();
    if (!opened) {
      response.error = "Failed to open port on device: ${device.deviceName}";
      return response;
    }

    // Configure the port.
    await port.setDTR(true);
    await port.setRTS(true);
    await port.setPortParameters(
        115200, // Baud rate
        UsbPort.DATABITS_8, // Data bits
        UsbPort.STOPBITS_1, // Stop bits
        UsbPort.PARITY_NONE // Parity
        );
    await port.setDTR(true);
    await port.setRTS(true);

    // Iterate over the list of commands and write each with a delay.
    for (String command in commands) {
      // Convert the command to a list of UTF-8 encoded bytes.
      Uint8List dataToWrite = Uint8List.fromList(utf8.encode(command));
      // Write the command.
      await port.write(dataToWrite);
      // Wait for the specified gap before sending the next command.
      await Future.delayed(gap);
    }

    // Close the port once done.
    await port.close();
  } catch (e) {
    response.error = "Failed to open port " + e.toString();
    return response;
  }
  response.proceed = true;
  return response;
}
