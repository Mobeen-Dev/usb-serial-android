// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ErrorStruct extends BaseStruct {
  ErrorStruct({
    bool? proceed,
    String? error,
    List<String>? data,
    EditablesStruct? settings,
  })  : _proceed = proceed,
        _error = error,
        _data = data,
        _settings = settings;

  // "proceed" field.
  bool? _proceed;
  bool get proceed => _proceed ?? true;
  set proceed(bool? val) => _proceed = val;

  bool hasProceed() => _proceed != null;

  // "error" field.
  String? _error;
  String get error => _error ?? 'No Error';
  set error(String? val) => _error = val;

  bool hasError() => _error != null;

  // "data" field.
  List<String>? _data;
  List<String> get data => _data ?? const [];
  set data(List<String>? val) => _data = val;

  void updateData(Function(List<String>) updateFn) {
    updateFn(_data ??= []);
  }

  bool hasData() => _data != null;

  // "settings" field.
  EditablesStruct? _settings;
  EditablesStruct get settings => _settings ?? EditablesStruct();
  set settings(EditablesStruct? val) => _settings = val;

  void updateSettings(Function(EditablesStruct) updateFn) {
    updateFn(_settings ??= EditablesStruct());
  }

  bool hasSettings() => _settings != null;

  static ErrorStruct fromMap(Map<String, dynamic> data) => ErrorStruct(
        proceed: data['proceed'] as bool?,
        error: data['error'] as String?,
        data: getDataList(data['data']),
        settings: data['settings'] is EditablesStruct
            ? data['settings']
            : EditablesStruct.maybeFromMap(data['settings']),
      );

  static ErrorStruct? maybeFromMap(dynamic data) =>
      data is Map ? ErrorStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'proceed': _proceed,
        'error': _error,
        'data': _data,
        'settings': _settings?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'proceed': serializeParam(
          _proceed,
          ParamType.bool,
        ),
        'error': serializeParam(
          _error,
          ParamType.String,
        ),
        'data': serializeParam(
          _data,
          ParamType.String,
          isList: true,
        ),
        'settings': serializeParam(
          _settings,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ErrorStruct fromSerializableMap(Map<String, dynamic> data) =>
      ErrorStruct(
        proceed: deserializeParam(
          data['proceed'],
          ParamType.bool,
          false,
        ),
        error: deserializeParam(
          data['error'],
          ParamType.String,
          false,
        ),
        data: deserializeParam<String>(
          data['data'],
          ParamType.String,
          true,
        ),
        settings: deserializeStructParam(
          data['settings'],
          ParamType.DataStruct,
          false,
          structBuilder: EditablesStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ErrorStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ErrorStruct &&
        proceed == other.proceed &&
        error == other.error &&
        listEquality.equals(data, other.data) &&
        settings == other.settings;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([proceed, error, data, settings]);
}

ErrorStruct createErrorStruct({
  bool? proceed,
  String? error,
  EditablesStruct? settings,
}) =>
    ErrorStruct(
      proceed: proceed,
      error: error,
      settings: settings ?? EditablesStruct(),
    );
