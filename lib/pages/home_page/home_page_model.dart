import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  bool moduleConnected = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - checkSerialConnection] action in Button widget.
  String? serialOutputFromInverter;
  // Stores action output result for [Custom Action - fetchInverterSettings] action in Button widget.
  ErrorStruct? errorInSettings;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
