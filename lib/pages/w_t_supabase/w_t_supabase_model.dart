import '/auth/firebase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/app_menu_icon/app_menu_icon_widget.dart';
import '/components/wait_list_table_supabase_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'w_t_supabase_widget.dart' show WTSupabaseWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WTSupabaseModel extends FlutterFlowModel<WTSupabaseWidget> {
  ///  Local state fields for this page.

  List<GuestEntriesRow> uID = [];
  void addToUID(GuestEntriesRow item) => uID.add(item);
  void removeFromUID(GuestEntriesRow item) => uID.remove(item);
  void removeAtIndexFromUID(int index) => uID.removeAt(index);
  void insertAtIndexInUID(int index, GuestEntriesRow item) =>
      uID.insert(index, item);
  void updateUIDAtIndex(int index, Function(GuestEntriesRow) updateFn) =>
      uID[index] = updateFn(uID[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for AppMenuIcon component.
  late AppMenuIconModel appMenuIconModel;
  // Model for WaitListTable_Supabase component.
  late WaitListTableSupabaseModel waitListTableSupabaseModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    appMenuIconModel = createModel(context, () => AppMenuIconModel());
    waitListTableSupabaseModel =
        createModel(context, () => WaitListTableSupabaseModel());
  }

  void dispose() {
    unfocusNode.dispose();
    appMenuIconModel.dispose();
    waitListTableSupabaseModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
