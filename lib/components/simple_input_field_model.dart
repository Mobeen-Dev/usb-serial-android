import '/flutter_flow/flutter_flow_util.dart';
import 'simple_input_field_widget.dart' show SimpleInputFieldWidget;
import 'package:flutter/material.dart';

class SimpleInputFieldModel extends FlutterFlowModel<SimpleInputFieldWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
