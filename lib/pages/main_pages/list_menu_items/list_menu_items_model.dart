import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/app_menu_comp/app_menu_comp_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListMenuItemsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for AppMenuComp component.
  late AppMenuCompModel appMenuCompModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    appMenuCompModel = createModel(context, () => AppMenuCompModel());
  }

  void dispose() {
    unfocusNode.dispose();
    appMenuCompModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
