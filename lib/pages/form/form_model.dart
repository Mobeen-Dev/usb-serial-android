import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'form_widget.dart' show FormWidget;
import 'package:flutter/material.dart';

class FormModel extends FlutterFlowModel<FormWidget> {
  ///  Local state fields for this page.

  bool validate = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for pvCF widget.
  FocusNode? pvCFFocusNode;
  TextEditingController? pvCFTextController;
  String? Function(BuildContext, String?)? pvCFTextControllerValidator;
  // State field(s) for pvAmpsCF widget.
  FocusNode? pvAmpsCFFocusNode;
  TextEditingController? pvAmpsCFTextController;
  String? Function(BuildContext, String?)? pvAmpsCFTextControllerValidator;
  // State field(s) for acOutCF widget.
  FocusNode? acOutCFFocusNode;
  TextEditingController? acOutCFTextController;
  String? Function(BuildContext, String?)? acOutCFTextControllerValidator;
  // State field(s) for acOutCFMSwave widget.
  FocusNode? acOutCFMSwaveFocusNode;
  TextEditingController? acOutCFMSwaveTextController;
  String? Function(BuildContext, String?)? acOutCFMSwaveTextControllerValidator;
  // State field(s) for gridAmpsCF widget.
  FocusNode? gridAmpsCFFocusNode;
  TextEditingController? gridAmpsCFTextController;
  String? Function(BuildContext, String?)? gridAmpsCFTextControllerValidator;
  // State field(s) for vmpp widget.
  FocusNode? vmppFocusNode;
  TextEditingController? vmppTextController;
  String? Function(BuildContext, String?)? vmppTextControllerValidator;
  // State field(s) for acOutVolt widget.
  FocusNode? acOutVoltFocusNode;
  TextEditingController? acOutVoltTextController;
  String? Function(BuildContext, String?)? acOutVoltTextControllerValidator;
  // State field(s) for maxPvAmps widget.
  FocusNode? maxPvAmpsFocusNode;
  TextEditingController? maxPvAmpsTextController;
  String? Function(BuildContext, String?)? maxPvAmpsTextControllerValidator;
  // State field(s) for softStart widget.
  int? softStartValue;
  FormFieldController<int>? softStartValueController;
  // State field(s) for WaveFormType widget.
  int? waveFormTypeValue;
  FormFieldController<int>? waveFormTypeValueController;
  // State field(s) for Fanmode widget.
  int? fanmodeValue;
  FormFieldController<int>? fanmodeValueController;
  // State field(s) for acCutOff widget.
  int? acCutOffValue;
  FormFieldController<int>? acCutOffValueController;
  // Stores action output result for [Custom Action - saveAndValidateCurrentSettings] action in Button widget.
  ErrorStruct? errorFromValidation;
  // Stores action output result for [Custom Action - uploadCmdsSerial] action in Button widget.
  ErrorStruct? wow;
  // Stores action output result for [Custom Action - checkSerialConnection] action in Button widget.
  String? serialOutputFromInverter;
  // Stores action output result for [Custom Action - fetchInverterSettings] action in Button widget.
  ErrorStruct? errorInSettings;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    pvCFFocusNode?.dispose();
    pvCFTextController?.dispose();

    pvAmpsCFFocusNode?.dispose();
    pvAmpsCFTextController?.dispose();

    acOutCFFocusNode?.dispose();
    acOutCFTextController?.dispose();

    acOutCFMSwaveFocusNode?.dispose();
    acOutCFMSwaveTextController?.dispose();

    gridAmpsCFFocusNode?.dispose();
    gridAmpsCFTextController?.dispose();

    vmppFocusNode?.dispose();
    vmppTextController?.dispose();

    acOutVoltFocusNode?.dispose();
    acOutVoltTextController?.dispose();

    maxPvAmpsFocusNode?.dispose();
    maxPvAmpsTextController?.dispose();
  }
}
