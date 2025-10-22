import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  /// Contains all the setable settings for SPWM Module
  SPWMModuleSettingsStruct _InverterSettings =
      SPWMModuleSettingsStruct.fromSerializableMap(jsonDecode(
          '{\"pvVoltage\":\"100\",\"highPvVoltError\":\"false\",\"underPvVoltError\":\"false\",\"pvAmperes\":\"230\",\"highPvAmpereError\":\"false\",\"modulationIndex\":\"1\",\"setables\":\"{\\\"vmppVolts\\\":\\\"1\\\",\\\"setAcOutVolts\\\":\\\"1\\\",\\\"softStart\\\":\\\"1\\\",\\\"softStartValue\\\":\\\"1\\\",\\\"waveType\\\":\\\"1\\\",\\\"waveTypeValue\\\":\\\"1\\\",\\\"fanMode\\\":\\\"1\\\",\\\"fanModeValue\\\":\\\"1\\\",\\\"maxPvAmpere\\\":\\\"1\\\",\\\"cutOffAcVolts\\\":\\\"1\\\",\\\"cutOffAcVoltsValue\\\":\\\"1\\\",\\\"pvVoltageCalibrationFactor\\\":\\\"1\\\",\\\"pvAmpereCalibrationFactor\\\":\\\"1\\\",\\\"acOutVoltCFactorSineWave\\\":\\\"1\\\",\\\"acOutVoltCFactorMSineWave\\\":\\\"1\\\",\\\"gridAmpereCF\\\":\\\"1\\\"}\"}'));
  SPWMModuleSettingsStruct get InverterSettings => _InverterSettings;
  set InverterSettings(SPWMModuleSettingsStruct value) {
    _InverterSettings = value;
  }

  void updateInverterSettingsStruct(
      Function(SPWMModuleSettingsStruct) updateFn) {
    updateFn(_InverterSettings);
  }

  ErrorStruct _ErrorInProcess = ErrorStruct.fromSerializableMap(
      jsonDecode('{\"proceed\":\"true\",\"error\":\"Nothing\"}'));
  ErrorStruct get ErrorInProcess => _ErrorInProcess;
  set ErrorInProcess(ErrorStruct value) {
    _ErrorInProcess = value;
  }

  void updateErrorInProcessStruct(Function(ErrorStruct) updateFn) {
    updateFn(_ErrorInProcess);
  }

  EditablesStruct _NewSettings = EditablesStruct.fromSerializableMap(jsonDecode(
      '{\"vmppVolts\":\"1\",\"setAcOutVolts\":\"1\",\"softStart\":\"1\",\"softStartValue\":\"1\",\"waveType\":\"1\",\"waveTypeValue\":\"1\",\"fanMode\":\"1\",\"fanModeValue\":\"1\",\"maxPvAmpere\":\"1\",\"cutOffAcVolts\":\"1\",\"cutOffAcVoltsValue\":\"1\",\"pvVoltageCalibrationFactor\":\"1\",\"pvAmpereCalibrationFactor\":\"1\",\"acOutVoltCFactorSineWave\":\"1\",\"acOutVoltCFactorMSineWave\":\"1\",\"gridAmpereCF\":\"1\",\"L1\":\"1\",\"L2\":\"1\",\"L3\":\"1\",\"L4\":\"1\",\"Screen1Password\":\"12345\",\"Screen2Password\":\"54321\"}'));
  EditablesStruct get NewSettings => _NewSettings;
  set NewSettings(EditablesStruct value) {
    _NewSettings = value;
  }

  void updateNewSettingsStruct(Function(EditablesStruct) updateFn) {
    updateFn(_NewSettings);
  }
}
