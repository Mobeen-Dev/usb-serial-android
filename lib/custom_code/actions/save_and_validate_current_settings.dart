// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<ErrorStruct> saveAndValidateCurrentSettings(
  EditablesStruct currentState,
  EditablesStruct saveState,
) async {
  // Add your function code here!
  ErrorStruct response = ErrorStruct();
  response.proceed = false;

  if (currentState.pvVoltageCalibrationFactor < 1 ||
      currentState.pvVoltageCalibrationFactor > 9999) {
    response.error = "Wrong Input PV Volt CF ";
    return response;
  }

  // Check PV ampere calibration factor (0001 to 9999)
  if (currentState.pvAmpereCalibrationFactor < 1 ||
      currentState.pvAmpereCalibrationFactor > 9999) {
    response.error = "Wrong Input PV Amperes CF ";
    return response;
  }

  // Check AC output voltage calibration factors (0001 to 9999)
  if (currentState.acOutVoltCFactorSineWave < 1 ||
      currentState.acOutVoltCFactorSineWave > 9999 ||
      currentState.acOutVoltCFactorMSineWave < 1 ||
      currentState.acOutVoltCFactorMSineWave > 9999) {
    response.error = "Wrong Input AC Output Volt CF ";

    return response;
  }

  // Check grid ampere calibration factor (0001 to 9999)
  if (currentState.gridAmpereCF < 1 || currentState.gridAmpereCF > 9999) {
    response.error = "Wrong Grid Ampere CF ";
    return response;
  }

  // Check VMPP setting (2000 to 3500)
  if (currentState.vmppVolts < 2000 || currentState.vmppVolts > 3500) {
    response.error = "Wrong Input of VMPP setting Volt ";
    return response;
  }

  // Check AC output volts (2000 to 2500)
  if (currentState.setAcOutVolts < 2000 || currentState.setAcOutVolts > 2500) {
    response.error = "Wrong Input of Ac Output Volatege ";
    return response;
  }

  try {
    String value = currentState.softStart.toLowerCase();

    // // Check soft start setting (0000 to 0002)
    if (value.contains("disable")) {
      currentState.softStartValue = 0;
    } else if (value.contains("slow")) {
      currentState.softStartValue = 1;
    } else if (value.contains("fast")) {
      currentState.softStartValue = 2;
    }
    // Option are now depretiated & managed in DropDown

    // // Check wave Form Type (0000 to 0001)
    // value = currentState.waveType.toLowerCase();

    // // Check for specific keywords in the value
    // if (value.contains("modified")) {
    //   currentState.waveTypeValue = 0;
    // } else if (value.contains("pure")) {
    //   currentState.waveTypeValue = 1;
    // }

    // // Check wave Form Type (0000 to 0001)
    // value = currentState.fanMode.toLowerCase();

    // // Check for specific keywords in the value
    // if (value.contains("auto")) {
    //   currentState.fanModeValue = 0;
    // } else if (value.contains("conti")) {
    //   currentState.fanModeValue = 1;
    // }

    // // Check low AC voltage setting (0000 to 0001)
    // value = currentState.cutOffAcVolts.toLowerCase();

    // // Check for specific keywords in the value
    // if (value.contains("90")) {
    //   currentState.cutOffAcVoltsValue = 0;
    // } else if (value.contains("180")) {
    //   currentState.cutOffAcVoltsValue = 1;
    // }
  } catch (e) {
    response.error = "Please, Select Option for all DropDown Fields";
    return response;
  }

  // Check low AC voltage setting (0000 to 0001)
  // if (currentState.lowAcVoltageSetting < 0 || currentState.lowAcVoltageSetting > 1) {
  //   return false;
  // }

  // Check maximum PV ampere (0000 to 4000)
  if (currentState.maxPvAmpere < 0 || currentState.maxPvAmpere > 4000) {
    response.error = "Wrong Input of Max Pv Ampere ";

    return response;
  }
  response.proceed = true;
  response.settings = currentState;
  return response;
}
