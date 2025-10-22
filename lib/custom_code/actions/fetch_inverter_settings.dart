// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<ErrorStruct> fetchInverterSettings(
  String input,
  SPWMModuleSettingsStruct inverterSettings,
) async {
  ErrorStruct response = ErrorStruct();
  response.proceed = false;
  if (input.length != 60) {
    response.error = "Invalid Input String Length is Less than 60 Characters";
    return response;
  }
  try {
    inverterSettings.pvVoltage = int.parse(input.substring(1, 5));
    inverterSettings.highPvVoltError = input.substring(35, 36) == "1";
    inverterSettings.underPvVoltError = input.substring(38, 39) == "1";
    inverterSettings.pvAmperes = int.parse(input.substring(11, 15));
    inverterSettings.highPvAmpereError = input.substring(36, 37) == "1";
    inverterSettings.acVoltage = int.parse(input.substring(16, 20));
    inverterSettings.underAcVoltError = input.substring(37, 38) == "1";
    inverterSettings.overLoadStatus = input.substring(10, 11) == "1";
    inverterSettings.overHeatStatus = input.substring(5, 6) == "1";
    inverterSettings.modulationIndex = int.parse(input.substring(6, 10));

    inverterSettings.setables.vmppVolts = int.parse(input.substring(21, 25));
    inverterSettings.setables.setAcOutVolts =
        int.parse(input.substring(26, 30));
    inverterSettings.setables.softStartValue =
        int.parse(input.substring(15, 16));
    inverterSettings.setables.waveTypeValue =
        int.parse(input.substring(20, 21));
    inverterSettings.setables.fanModeValue = int.parse(input.substring(25, 26));
    inverterSettings.setables.cutOffAcVoltsValue =
        int.parse(input.substring(30, 31));
    inverterSettings.setables.maxPvAmpere = int.parse(input.substring(31, 35));

    inverterSettings.setables.pvVoltageCalibrationFactor =
        int.parse(input.substring(39, 43));
    inverterSettings.setables.pvAmpereCalibrationFactor =
        int.parse(input.substring(43, 47));
    inverterSettings.setables.acOutVoltCFactorSineWave =
        int.parse(input.substring(47, 51));
    inverterSettings.setables.acOutVoltCFactorMSineWave =
        int.parse(input.substring(51, 55));
    inverterSettings.setables.gridAmpereCF = int.parse(input.substring(55, 59));

    // These fields remain as strings.
  } catch (e) {
    response.error = "Error Occured: " + e.toString();
    return response;
  }

  response.error = "Nothing";
  response.proceed = true;
  return response;
}
