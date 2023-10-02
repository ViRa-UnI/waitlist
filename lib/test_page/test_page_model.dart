import '/components/wait_list_table_supabase_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'test_page_widget.dart' show TestPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TestPageModel extends FlutterFlowModel<TestPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for WaitListTable_Supabase component.
  late WaitListTableSupabaseModel waitListTableSupabaseModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    waitListTableSupabaseModel =
        createModel(context, () => WaitListTableSupabaseModel());
  }

  void dispose() {
    unfocusNode.dispose();
    waitListTableSupabaseModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
