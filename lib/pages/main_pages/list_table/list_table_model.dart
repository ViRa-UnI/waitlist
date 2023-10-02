import '/components/table_components/wait_list_table/wait_list_table_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'list_table_widget.dart' show ListTableWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListTableModel extends FlutterFlowModel<ListTableWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for WaitListTable component.
  late WaitListTableModel waitListTableModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    waitListTableModel = createModel(context, () => WaitListTableModel());
  }

  void dispose() {
    unfocusNode.dispose();
    waitListTableModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
