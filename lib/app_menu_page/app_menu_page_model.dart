import '/auth/firebase_auth/auth_util.dart';
import '/components/app_menu_icon_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AppMenuPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for AppMenuIcon component.
  late AppMenuIconModel appMenuIconModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    appMenuIconModel = createModel(context, () => AppMenuIconModel());
  }

  void dispose() {
    unfocusNode.dispose();
    appMenuIconModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
