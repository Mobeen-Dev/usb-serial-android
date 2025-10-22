// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SPWMModuleSettingsStruct extends BaseStruct {
  SPWMModuleSettingsStruct({
    int? pvVoltage,
    bool? highPvVoltError,
    bool? underPvVoltError,
    int? pvAmperes,
    bool? highPvAmpereError,
    int? acVoltage,
    bool? underAcVoltError,
    bool? overLoadStatus,
    bool? overHeatStatus,
    int? modulationIndex,
    EditablesStruct? setables,
  })  : _pvVoltage = pvVoltage,
        _highPvVoltError = highPvVoltError,
        _underPvVoltError = underPvVoltError,
        _pvAmperes = pvAmperes,
        _highPvAmpereError = highPvAmpereError,
        _acVoltage = acVoltage,
        _underAcVoltError = underAcVoltError,
        _overLoadStatus = overLoadStatus,
        _overHeatStatus = overHeatStatus,
        _modulationIndex = modulationIndex,
        _setables = setables;

  // "pvVoltage" field.
  int? _pvVoltage;
  int get pvVoltage => _pvVoltage ?? 1;
  set pvVoltage(int? val) => _pvVoltage = val;

  void incrementPvVoltage(int amount) => pvVoltage = pvVoltage + amount;

  bool hasPvVoltage() => _pvVoltage != null;

  // "highPvVoltError" field.
  bool? _highPvVoltError;
  bool get highPvVoltError => _highPvVoltError ?? false;
  set highPvVoltError(bool? val) => _highPvVoltError = val;

  bool hasHighPvVoltError() => _highPvVoltError != null;

  // "underPvVoltError" field.
  bool? _underPvVoltError;
  bool get underPvVoltError => _underPvVoltError ?? false;
  set underPvVoltError(bool? val) => _underPvVoltError = val;

  bool hasUnderPvVoltError() => _underPvVoltError != null;

  // "pvAmperes" field.
  int? _pvAmperes;
  int get pvAmperes => _pvAmperes ?? 1;
  set pvAmperes(int? val) => _pvAmperes = val;

  void incrementPvAmperes(int amount) => pvAmperes = pvAmperes + amount;

  bool hasPvAmperes() => _pvAmperes != null;

  // "highPvAmpereError" field.
  bool? _highPvAmpereError;
  bool get highPvAmpereError => _highPvAmpereError ?? false;
  set highPvAmpereError(bool? val) => _highPvAmpereError = val;

  bool hasHighPvAmpereError() => _highPvAmpereError != null;

  // "acVoltage" field.
  int? _acVoltage;
  int get acVoltage => _acVoltage ?? 1;
  set acVoltage(int? val) => _acVoltage = val;

  void incrementAcVoltage(int amount) => acVoltage = acVoltage + amount;

  bool hasAcVoltage() => _acVoltage != null;

  // "underAcVoltError" field.
  bool? _underAcVoltError;
  bool get underAcVoltError => _underAcVoltError ?? false;
  set underAcVoltError(bool? val) => _underAcVoltError = val;

  bool hasUnderAcVoltError() => _underAcVoltError != null;

  // "overLoadStatus" field.
  bool? _overLoadStatus;
  bool get overLoadStatus => _overLoadStatus ?? false;
  set overLoadStatus(bool? val) => _overLoadStatus = val;

  bool hasOverLoadStatus() => _overLoadStatus != null;

  // "overHeatStatus" field.
  bool? _overHeatStatus;
  bool get overHeatStatus => _overHeatStatus ?? false;
  set overHeatStatus(bool? val) => _overHeatStatus = val;

  bool hasOverHeatStatus() => _overHeatStatus != null;

  // "modulationIndex" field.
  int? _modulationIndex;
  int get modulationIndex => _modulationIndex ?? 0;
  set modulationIndex(int? val) => _modulationIndex = val;

  void incrementModulationIndex(int amount) =>
      modulationIndex = modulationIndex + amount;

  bool hasModulationIndex() => _modulationIndex != null;

  // "setables" field.
  EditablesStruct? _setables;
  EditablesStruct get setables => _setables ?? EditablesStruct();
  set setables(EditablesStruct? val) => _setables = val;

  void updateSetables(Function(EditablesStruct) updateFn) {
    updateFn(_setables ??= EditablesStruct());
  }

  bool hasSetables() => _setables != null;

  static SPWMModuleSettingsStruct fromMap(Map<String, dynamic> data) =>
      SPWMModuleSettingsStruct(
        pvVoltage: castToType<int>(data['pvVoltage']),
        highPvVoltError: data['highPvVoltError'] as bool?,
        underPvVoltError: data['underPvVoltError'] as bool?,
        pvAmperes: castToType<int>(data['pvAmperes']),
        highPvAmpereError: data['highPvAmpereError'] as bool?,
        acVoltage: castToType<int>(data['acVoltage']),
        underAcVoltError: data['underAcVoltError'] as bool?,
        overLoadStatus: data['overLoadStatus'] as bool?,
        overHeatStatus: data['overHeatStatus'] as bool?,
        modulationIndex: castToType<int>(data['modulationIndex']),
        setables: data['setables'] is EditablesStruct
            ? data['setables']
            : EditablesStruct.maybeFromMap(data['setables']),
      );

  static SPWMModuleSettingsStruct? maybeFromMap(dynamic data) => data is Map
      ? SPWMModuleSettingsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'pvVoltage': _pvVoltage,
        'highPvVoltError': _highPvVoltError,
        'underPvVoltError': _underPvVoltError,
        'pvAmperes': _pvAmperes,
        'highPvAmpereError': _highPvAmpereError,
        'acVoltage': _acVoltage,
        'underAcVoltError': _underAcVoltError,
        'overLoadStatus': _overLoadStatus,
        'overHeatStatus': _overHeatStatus,
        'modulationIndex': _modulationIndex,
        'setables': _setables?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'pvVoltage': serializeParam(
          _pvVoltage,
          ParamType.int,
        ),
        'highPvVoltError': serializeParam(
          _highPvVoltError,
          ParamType.bool,
        ),
        'underPvVoltError': serializeParam(
          _underPvVoltError,
          ParamType.bool,
        ),
        'pvAmperes': serializeParam(
          _pvAmperes,
          ParamType.int,
        ),
        'highPvAmpereError': serializeParam(
          _highPvAmpereError,
          ParamType.bool,
        ),
        'acVoltage': serializeParam(
          _acVoltage,
          ParamType.int,
        ),
        'underAcVoltError': serializeParam(
          _underAcVoltError,
          ParamType.bool,
        ),
        'overLoadStatus': serializeParam(
          _overLoadStatus,
          ParamType.bool,
        ),
        'overHeatStatus': serializeParam(
          _overHeatStatus,
          ParamType.bool,
        ),
        'modulationIndex': serializeParam(
          _modulationIndex,
          ParamType.int,
        ),
        'setables': serializeParam(
          _setables,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static SPWMModuleSettingsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      SPWMModuleSettingsStruct(
        pvVoltage: deserializeParam(
          data['pvVoltage'],
          ParamType.int,
          false,
        ),
        highPvVoltError: deserializeParam(
          data['highPvVoltError'],
          ParamType.bool,
          false,
        ),
        underPvVoltError: deserializeParam(
          data['underPvVoltError'],
          ParamType.bool,
          false,
        ),
        pvAmperes: deserializeParam(
          data['pvAmperes'],
          ParamType.int,
          false,
        ),
        highPvAmpereError: deserializeParam(
          data['highPvAmpereError'],
          ParamType.bool,
          false,
        ),
        acVoltage: deserializeParam(
          data['acVoltage'],
          ParamType.int,
          false,
        ),
        underAcVoltError: deserializeParam(
          data['underAcVoltError'],
          ParamType.bool,
          false,
        ),
        overLoadStatus: deserializeParam(
          data['overLoadStatus'],
          ParamType.bool,
          false,
        ),
        overHeatStatus: deserializeParam(
          data['overHeatStatus'],
          ParamType.bool,
          false,
        ),
        modulationIndex: deserializeParam(
          data['modulationIndex'],
          ParamType.int,
          false,
        ),
        setables: deserializeStructParam(
          data['setables'],
          ParamType.DataStruct,
          false,
          structBuilder: EditablesStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'SPWMModuleSettingsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SPWMModuleSettingsStruct &&
        pvVoltage == other.pvVoltage &&
        highPvVoltError == other.highPvVoltError &&
        underPvVoltError == other.underPvVoltError &&
        pvAmperes == other.pvAmperes &&
        highPvAmpereError == other.highPvAmpereError &&
        acVoltage == other.acVoltage &&
        underAcVoltError == other.underAcVoltError &&
        overLoadStatus == other.overLoadStatus &&
        overHeatStatus == other.overHeatStatus &&
        modulationIndex == other.modulationIndex &&
        setables == other.setables;
  }

  @override
  int get hashCode => const ListEquality().hash([
        pvVoltage,
        highPvVoltError,
        underPvVoltError,
        pvAmperes,
        highPvAmpereError,
        acVoltage,
        underAcVoltError,
        overLoadStatus,
        overHeatStatus,
        modulationIndex,
        setables
      ]);
}

SPWMModuleSettingsStruct createSPWMModuleSettingsStruct({
  int? pvVoltage,
  bool? highPvVoltError,
  bool? underPvVoltError,
  int? pvAmperes,
  bool? highPvAmpereError,
  int? acVoltage,
  bool? underAcVoltError,
  bool? overLoadStatus,
  bool? overHeatStatus,
  int? modulationIndex,
  EditablesStruct? setables,
}) =>
    SPWMModuleSettingsStruct(
      pvVoltage: pvVoltage,
      highPvVoltError: highPvVoltError,
      underPvVoltError: underPvVoltError,
      pvAmperes: pvAmperes,
      highPvAmpereError: highPvAmpereError,
      acVoltage: acVoltage,
      underAcVoltError: underAcVoltError,
      overLoadStatus: overLoadStatus,
      overHeatStatus: overHeatStatus,
      modulationIndex: modulationIndex,
      setables: setables ?? EditablesStruct(),
    );
