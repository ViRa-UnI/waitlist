import '/auth/firebase_auth/auth_util.dart';
import '/components/guest_entry_form/guest_entry_form_widget.dart';
import '/components/table_components/wait_list_table/wait_list_table_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for GuestEntryForm component.
  late GuestEntryFormModel guestEntryFormModel;
  // Model for WaitListTable component.
  late WaitListTableModel waitListTableModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    guestEntryFormModel = createModel(context, () => GuestEntryFormModel());
    waitListTableModel = createModel(context, () => WaitListTableModel());
  }

  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    guestEntryFormModel.dispose();
    waitListTableModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
