import '/auth/firebase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/app_menu_icon/app_menu_icon_widget.dart';
import '/components/table_components/w_t_edit_comp_supabase/w_t_edit_comp_supabase_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WTSupabaseModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  List<GuestEntriesRow> uID = [];
  void addToUID(GuestEntriesRow item) => uID.add(item);
  void removeFromUID(GuestEntriesRow item) => uID.remove(item);
  void removeAtIndexFromUID(int index) => uID.removeAt(index);
  void updateUIDAtIndex(int index, Function(GuestEntriesRow) updateFn) =>
      uID[index] = updateFn(uID[index]);

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
