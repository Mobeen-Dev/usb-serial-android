// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EditablesStruct extends BaseStruct {
  EditablesStruct({
    int? vmppVolts,
    int? setAcOutVolts,
    String? softStart,
    int? softStartValue,
    String? waveType,
    int? waveTypeValue,
    String? fanMode,
    int? fanModeValue,
    int? maxPvAmpere,
    String? cutOffAcVolts,
    int? cutOffAcVoltsValue,
    int? pvVoltageCalibrationFactor,
    int? pvAmpereCalibrationFactor,
    int? acOutVoltCFactorSineWave,
    int? acOutVoltCFactorMSineWave,
    int? gridAmpereCF,
    String? l1,
    String? l2,
    String? l3,
    String? l4,
    String? screen1Password,
    String? screen2Password,
  })  : _vmppVolts = vmppVolts,
        _setAcOutVolts = setAcOutVolts,
        _softStart = softStart,
        _softStartValue = softStartValue,
        _waveType = waveType,
        _waveTypeValue = waveTypeValue,
        _fanMode = fanMode,
        _fanModeValue = fanModeValue,
        _maxPvAmpere = maxPvAmpere,
        _cutOffAcVolts = cutOffAcVolts,
        _cutOffAcVoltsValue = cutOffAcVoltsValue,
        _pvVoltageCalibrationFactor = pvVoltageCalibrationFactor,
        _pvAmpereCalibrationFactor = pvAmpereCalibrationFactor,
        _acOutVoltCFactorSineWave = acOutVoltCFactorSineWave,
        _acOutVoltCFactorMSineWave = acOutVoltCFactorMSineWave,
        _gridAmpereCF = gridAmpereCF,
        _l1 = l1,
        _l2 = l2,
        _l3 = l3,
        _l4 = l4,
        _screen1Password = screen1Password,
        _screen2Password = screen2Password;

  // "vmppVolts" field.
  int? _vmppVolts;
  int get vmppVolts => _vmppVolts ?? 0360;
  set vmppVolts(int? val) => _vmppVolts = val;

  void incrementVmppVolts(int amount) => vmppVolts = vmppVolts + amount;

  bool hasVmppVolts() => _vmppVolts != null;

  // "setAcOutVolts" field.
  int? _setAcOutVolts;
  int get setAcOutVolts => _setAcOutVolts ?? 0230;
  set setAcOutVolts(int? val) => _setAcOutVolts = val;

  void incrementSetAcOutVolts(int amount) =>
      setAcOutVolts = setAcOutVolts + amount;

  bool hasSetAcOutVolts() => _setAcOutVolts != null;

  // "softStart" field.
  String? _softStart;
  String get softStart => _softStart ?? 'Medium';
  set softStart(String? val) => _softStart = val;

  bool hasSoftStart() => _softStart != null;

  // "softStartValue" field.
  int? _softStartValue;
  int get softStartValue => _softStartValue ?? 0;
  set softStartValue(int? val) => _softStartValue = val;

  void incrementSoftStartValue(int amount) =>
      softStartValue = softStartValue + amount;

  bool hasSoftStartValue() => _softStartValue != null;

  // "waveType" field.
  String? _waveType;
  String get waveType => _waveType ?? 'Modified SineWave';
  set waveType(String? val) => _waveType = val;

  bool hasWaveType() => _waveType != null;

  // "waveTypeValue" field.
  int? _waveTypeValue;
  int get waveTypeValue => _waveTypeValue ?? 0;
  set waveTypeValue(int? val) => _waveTypeValue = val;

  void incrementWaveTypeValue(int amount) =>
      waveTypeValue = waveTypeValue + amount;

  bool hasWaveTypeValue() => _waveTypeValue != null;

  // "fanMode" field.
  String? _fanMode;
  String get fanMode => _fanMode ?? 'Automatic';
  set fanMode(String? val) => _fanMode = val;

  bool hasFanMode() => _fanMode != null;

  // "fanModeValue" field.
  int? _fanModeValue;
  int get fanModeValue => _fanModeValue ?? 0;
  set fanModeValue(int? val) => _fanModeValue = val;

  void incrementFanModeValue(int amount) =>
      fanModeValue = fanModeValue + amount;

  bool hasFanModeValue() => _fanModeValue != null;

  // "maxPvAmpere" field.
  int? _maxPvAmpere;
  int get maxPvAmpere => _maxPvAmpere ?? 1;
  set maxPvAmpere(int? val) => _maxPvAmpere = val;

  void incrementMaxPvAmpere(int amount) => maxPvAmpere = maxPvAmpere + amount;

  bool hasMaxPvAmpere() => _maxPvAmpere != null;

  // "cutOffAcVolts" field.
  String? _cutOffAcVolts;
  String get cutOffAcVolts => _cutOffAcVolts ?? '';
  set cutOffAcVolts(String? val) => _cutOffAcVolts = val;

  bool hasCutOffAcVolts() => _cutOffAcVolts != null;

  // "cutOffAcVoltsValue" field.
  int? _cutOffAcVoltsValue;
  int get cutOffAcVoltsValue => _cutOffAcVoltsValue ?? 0;
  set cutOffAcVoltsValue(int? val) => _cutOffAcVoltsValue = val;

  void incrementCutOffAcVoltsValue(int amount) =>
      cutOffAcVoltsValue = cutOffAcVoltsValue + amount;

  bool hasCutOffAcVoltsValue() => _cutOffAcVoltsValue != null;

  // "pvVoltageCalibrationFactor" field.
  int? _pvVoltageCalibrationFactor;
  int get pvVoltageCalibrationFactor => _pvVoltageCalibrationFactor ?? 1;
  set pvVoltageCalibrationFactor(int? val) => _pvVoltageCalibrationFactor = val;

  void incrementPvVoltageCalibrationFactor(int amount) =>
      pvVoltageCalibrationFactor = pvVoltageCalibrationFactor + amount;

  bool hasPvVoltageCalibrationFactor() => _pvVoltageCalibrationFactor != null;

  // "pvAmpereCalibrationFactor" field.
  int? _pvAmpereCalibrationFactor;
  int get pvAmpereCalibrationFactor => _pvAmpereCalibrationFactor ?? 1;
  set pvAmpereCalibrationFactor(int? val) => _pvAmpereCalibrationFactor = val;

  void incrementPvAmpereCalibrationFactor(int amount) =>
      pvAmpereCalibrationFactor = pvAmpereCalibrationFactor + amount;

  bool hasPvAmpereCalibrationFactor() => _pvAmpereCalibrationFactor != null;

  // "acOutVoltCFactorSineWave" field.
  int? _acOutVoltCFactorSineWave;
  int get acOutVoltCFactorSineWave => _acOutVoltCFactorSineWave ?? 1;
  set acOutVoltCFactorSineWave(int? val) => _acOutVoltCFactorSineWave = val;

  void incrementAcOutVoltCFactorSineWave(int amount) =>
      acOutVoltCFactorSineWave = acOutVoltCFactorSineWave + amount;

  bool hasAcOutVoltCFactorSineWave() => _acOutVoltCFactorSineWave != null;

  // "acOutVoltCFactorMSineWave" field.
  int? _acOutVoltCFactorMSineWave;
  int get acOutVoltCFactorMSineWave => _acOutVoltCFactorMSineWave ?? 1;
  set acOutVoltCFactorMSineWave(int? val) => _acOutVoltCFactorMSineWave = val;

  void incrementAcOutVoltCFactorMSineWave(int amount) =>
      acOutVoltCFactorMSineWave = acOutVoltCFactorMSineWave + amount;

  bool hasAcOutVoltCFactorMSineWave() => _acOutVoltCFactorMSineWave != null;

  // "gridAmpereCF" field.
  int? _gridAmpereCF;
  int get gridAmpereCF => _gridAmpereCF ?? 1;
  set gridAmpereCF(int? val) => _gridAmpereCF = val;

  void incrementGridAmpereCF(int amount) =>
      gridAmpereCF = gridAmpereCF + amount;

  bool hasGridAmpereCF() => _gridAmpereCF != null;

  // "L1" field.
  String? _l1;
  String get l1 => _l1 ?? '     Muxtronics     ';
  set l1(String? val) => _l1 = val;

  bool hasL1() => _l1 != null;

  // "L2" field.
  String? _l2;
  String get l2 => _l2 ?? '      Presents      ';
  set l2(String? val) => _l2 = val;

  bool hasL2() => _l2 != null;

  // "L3" field.
  String? _l3;
  String get l3 => _l3 ?? '   Latest Edition   ';
  set l3(String? val) => _l3 = val;

  bool hasL3() => _l3 != null;

  // "L4" field.
  String? _l4;
  String get l4 => _l4 ?? '      Inverter      ';
  set l4(String? val) => _l4 = val;

  bool hasL4() => _l4 != null;

  // "Screen1Password" field.
  String? _screen1Password;
  String get screen1Password => _screen1Password ?? '';
  set screen1Password(String? val) => _screen1Password = val;

  bool hasScreen1Password() => _screen1Password != null;

  // "Screen2Password" field.
  String? _screen2Password;
  String get screen2Password => _screen2Password ?? '';
  set screen2Password(String? val) => _screen2Password = val;

  bool hasScreen2Password() => _screen2Password != null;

  static EditablesStruct fromMap(Map<String, dynamic> data) => EditablesStruct(
        vmppVolts: castToType<int>(data['vmppVolts']),
        setAcOutVolts: castToType<int>(data['setAcOutVolts']),
        softStart: data['softStart'] as String?,
        softStartValue: castToType<int>(data['softStartValue']),
        waveType: data['waveType'] as String?,
        waveTypeValue: castToType<int>(data['waveTypeValue']),
        fanMode: data['fanMode'] as String?,
        fanModeValue: castToType<int>(data['fanModeValue']),
        maxPvAmpere: castToType<int>(data['maxPvAmpere']),
        cutOffAcVolts: data['cutOffAcVolts'] as String?,
        cutOffAcVoltsValue: castToType<int>(data['cutOffAcVoltsValue']),
        pvVoltageCalibrationFactor:
            castToType<int>(data['pvVoltageCalibrationFactor']),
        pvAmpereCalibrationFactor:
            castToType<int>(data['pvAmpereCalibrationFactor']),
        acOutVoltCFactorSineWave:
            castToType<int>(data['acOutVoltCFactorSineWave']),
        acOutVoltCFactorMSineWave:
            castToType<int>(data['acOutVoltCFactorMSineWave']),
        gridAmpereCF: castToType<int>(data['gridAmpereCF']),
        l1: data['L1'] as String?,
        l2: data['L2'] as String?,
        l3: data['L3'] as String?,
        l4: data['L4'] as String?,
        screen1Password: data['Screen1Password'] as String?,
        screen2Password: data['Screen2Password'] as String?,
      );

  static EditablesStruct? maybeFromMap(dynamic data) => data is Map
      ? EditablesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'vmppVolts': _vmppVolts,
        'setAcOutVolts': _setAcOutVolts,
        'softStart': _softStart,
        'softStartValue': _softStartValue,
        'waveType': _waveType,
        'waveTypeValue': _waveTypeValue,
        'fanMode': _fanMode,
        'fanModeValue': _fanModeValue,
        'maxPvAmpere': _maxPvAmpere,
        'cutOffAcVolts': _cutOffAcVolts,
        'cutOffAcVoltsValue': _cutOffAcVoltsValue,
        'pvVoltageCalibrationFactor': _pvVoltageCalibrationFactor,
        'pvAmpereCalibrationFactor': _pvAmpereCalibrationFactor,
        'acOutVoltCFactorSineWave': _acOutVoltCFactorSineWave,
        'acOutVoltCFactorMSineWave': _acOutVoltCFactorMSineWave,
        'gridAmpereCF': _gridAmpereCF,
        'L1': _l1,
        'L2': _l2,
        'L3': _l3,
        'L4': _l4,
        'Screen1Password': _screen1Password,
        'Screen2Password': _screen2Password,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'vmppVolts': serializeParam(
          _vmppVolts,
          ParamType.int,
        ),
        'setAcOutVolts': serializeParam(
          _setAcOutVolts,
          ParamType.int,
        ),
        'softStart': serializeParam(
          _softStart,
          ParamType.String,
        ),
        'softStartValue': serializeParam(
          _softStartValue,
          ParamType.int,
        ),
        'waveType': serializeParam(
          _waveType,
          ParamType.String,
        ),
        'waveTypeValue': serializeParam(
          _waveTypeValue,
          ParamType.int,
        ),
        'fanMode': serializeParam(
          _fanMode,
          ParamType.String,
        ),
        'fanModeValue': serializeParam(
          _fanModeValue,
          ParamType.int,
        ),
        'maxPvAmpere': serializeParam(
          _maxPvAmpere,
          ParamType.int,
        ),
        'cutOffAcVolts': serializeParam(
          _cutOffAcVolts,
          ParamType.String,
        ),
        'cutOffAcVoltsValue': serializeParam(
          _cutOffAcVoltsValue,
          ParamType.int,
        ),
        'pvVoltageCalibrationFactor': serializeParam(
          _pvVoltageCalibrationFactor,
          ParamType.int,
        ),
        'pvAmpereCalibrationFactor': serializeParam(
          _pvAmpereCalibrationFactor,
          ParamType.int,
        ),
        'acOutVoltCFactorSineWave': serializeParam(
          _acOutVoltCFactorSineWave,
          ParamType.int,
        ),
        'acOutVoltCFactorMSineWave': serializeParam(
          _acOutVoltCFactorMSineWave,
          ParamType.int,
        ),
        'gridAmpereCF': serializeParam(
          _gridAmpereCF,
          ParamType.int,
        ),
        'L1': serializeParam(
          _l1,
          ParamType.String,
        ),
        'L2': serializeParam(
          _l2,
          ParamType.String,
        ),
        'L3': serializeParam(
          _l3,
          ParamType.String,
        ),
        'L4': serializeParam(
          _l4,
          ParamType.String,
        ),
        'Screen1Password': serializeParam(
          _screen1Password,
          ParamType.String,
        ),
        'Screen2Password': serializeParam(
          _screen2Password,
          ParamType.String,
        ),
      }.withoutNulls;

  static EditablesStruct fromSerializableMap(Map<String, dynamic> data) =>
      EditablesStruct(
        vmppVolts: deserializeParam(
          data['vmppVolts'],
          ParamType.int,
          false,
        ),
        setAcOutVolts: deserializeParam(
          data['setAcOutVolts'],
          ParamType.int,
          false,
        ),
        softStart: deserializeParam(
          data['softStart'],
          ParamType.String,
          false,
        ),
        softStartValue: deserializeParam(
          data['softStartValue'],
          ParamType.int,
          false,
        ),
        waveType: deserializeParam(
          data['waveType'],
          ParamType.String,
          false,
        ),
        waveTypeValue: deserializeParam(
          data['waveTypeValue'],
          ParamType.int,
          false,
        ),
        fanMode: deserializeParam(
          data['fanMode'],
          ParamType.String,
          false,
        ),
        fanModeValue: deserializeParam(
          data['fanModeValue'],
          ParamType.int,
          false,
        ),
        maxPvAmpere: deserializeParam(
          data['maxPvAmpere'],
          ParamType.int,
          false,
        ),
        cutOffAcVolts: deserializeParam(
          data['cutOffAcVolts'],
          ParamType.String,
          false,
        ),
        cutOffAcVoltsValue: deserializeParam(
          data['cutOffAcVoltsValue'],
          ParamType.int,
          false,
        ),
        pvVoltageCalibrationFactor: deserializeParam(
          data['pvVoltageCalibrationFactor'],
          ParamType.int,
          false,
        ),
        pvAmpereCalibrationFactor: deserializeParam(
          data['pvAmpereCalibrationFactor'],
          ParamType.int,
          false,
        ),
        acOutVoltCFactorSineWave: deserializeParam(
          data['acOutVoltCFactorSineWave'],
          ParamType.int,
          false,
        ),
        acOutVoltCFactorMSineWave: deserializeParam(
          data['acOutVoltCFactorMSineWave'],
          ParamType.int,
          false,
        ),
        gridAmpereCF: deserializeParam(
          data['gridAmpereCF'],
          ParamType.int,
          false,
        ),
        l1: deserializeParam(
          data['L1'],
          ParamType.String,
          false,
        ),
        l2: deserializeParam(
          data['L2'],
          ParamType.String,
          false,
        ),
        l3: deserializeParam(
          data['L3'],
          ParamType.String,
          false,
        ),
        l4: deserializeParam(
          data['L4'],
          ParamType.String,
          false,
        ),
        screen1Password: deserializeParam(
          data['Screen1Password'],
          ParamType.String,
          false,
        ),
        screen2Password: deserializeParam(
          data['Screen2Password'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'EditablesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EditablesStruct &&
        vmppVolts == other.vmppVolts &&
        setAcOutVolts == other.setAcOutVolts &&
        softStart == other.softStart &&
        softStartValue == other.softStartValue &&
        waveType == other.waveType &&
        waveTypeValue == other.waveTypeValue &&
        fanMode == other.fanMode &&
        fanModeValue == other.fanModeValue &&
        maxPvAmpere == other.maxPvAmpere &&
        cutOffAcVolts == other.cutOffAcVolts &&
        cutOffAcVoltsValue == other.cutOffAcVoltsValue &&
        pvVoltageCalibrationFactor == other.pvVoltageCalibrationFactor &&
        pvAmpereCalibrationFactor == other.pvAmpereCalibrationFactor &&
        acOutVoltCFactorSineWave == other.acOutVoltCFactorSineWave &&
        acOutVoltCFactorMSineWave == other.acOutVoltCFactorMSineWave &&
        gridAmpereCF == other.gridAmpereCF &&
        l1 == other.l1 &&
        l2 == other.l2 &&
        l3 == other.l3 &&
        l4 == other.l4 &&
        screen1Password == other.screen1Password &&
        screen2Password == other.screen2Password;
  }

  @override
  int get hashCode => const ListEquality().hash([
        vmppVolts,
        setAcOutVolts,
        softStart,
        softStartValue,
        waveType,
        waveTypeValue,
        fanMode,
        fanModeValue,
        maxPvAmpere,
        cutOffAcVolts,
        cutOffAcVoltsValue,
        pvVoltageCalibrationFactor,
        pvAmpereCalibrationFactor,
        acOutVoltCFactorSineWave,
        acOutVoltCFactorMSineWave,
        gridAmpereCF,
        l1,
        l2,
        l3,
        l4,
        screen1Password,
        screen2Password
      ]);
}

EditablesStruct createEditablesStruct({
  int? vmppVolts,
  int? setAcOutVolts,
  String? softStart,
  int? softStartValue,
  String? waveType,
  int? waveTypeValue,
  String? fanMode,
  int? fanModeValue,
  int? maxPvAmpere,
  String? cutOffAcVolts,
  int? cutOffAcVoltsValue,
  int? pvVoltageCalibrationFactor,
  int? pvAmpereCalibrationFactor,
  int? acOutVoltCFactorSineWave,
  int? acOutVoltCFactorMSineWave,
  int? gridAmpereCF,
  String? l1,
  String? l2,
  String? l3,
  String? l4,
  String? screen1Password,
  String? screen2Password,
}) =>
    EditablesStruct(
      vmppVolts: vmppVolts,
      setAcOutVolts: setAcOutVolts,
      softStart: softStart,
      softStartValue: softStartValue,
      waveType: waveType,
      waveTypeValue: waveTypeValue,
      fanMode: fanMode,
      fanModeValue: fanModeValue,
      maxPvAmpere: maxPvAmpere,
      cutOffAcVolts: cutOffAcVolts,
      cutOffAcVoltsValue: cutOffAcVoltsValue,
      pvVoltageCalibrationFactor: pvVoltageCalibrationFactor,
      pvAmpereCalibrationFactor: pvAmpereCalibrationFactor,
      acOutVoltCFactorSineWave: acOutVoltCFactorSineWave,
      acOutVoltCFactorMSineWave: acOutVoltCFactorMSineWave,
      gridAmpereCF: gridAmpereCF,
      l1: l1,
      l2: l2,
      l3: l3,
      l4: l4,
      screen1Password: screen1Password,
      screen2Password: screen2Password,
    );
