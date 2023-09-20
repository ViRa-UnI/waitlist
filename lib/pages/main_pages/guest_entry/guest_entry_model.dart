import '/components/guest_entry_form/guest_entry_form_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GuestEntryModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for GuestEntryForm component.
  late GuestEntryFormModel guestEntryFormModel;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    guestEntryFormModel = createModel(context, () => GuestEntryFormModel());
  }

  void dispose() {
    unfocusNode.dispose();
    guestEntryFormModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
