import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'seating_editing_supabase_widget.dart' show SeatingEditingSupabaseWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SeatingEditingSupabaseModel
    extends FlutterFlowModel<SeatingEditingSupabaseWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for SeatAreaChip widget.
  String? seatAreaChipValue;
  FormFieldController<List<String>>? seatAreaChipValueController;
  // Stores action output result for [Backend Call - Update Row] action in Button widget.
  List<GuestEntriesRow>? newWaitingTime;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
