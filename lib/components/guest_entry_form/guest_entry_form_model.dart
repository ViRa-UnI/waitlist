import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GuestEntryFormModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for GuestName widget.
  TextEditingController? guestNameController;
  String? Function(BuildContext, String?)? guestNameControllerValidator;
  // State field(s) for TypeChip widget.
  String? typeChipValue;
  FormFieldController<List<String>>? typeChipValueController;
  // State field(s) for GuestMobile widget.
  TextEditingController? guestMobileController;
  String? Function(BuildContext, String?)? guestMobileControllerValidator;
  // State field(s) for AgeChip widget.
  String? ageChipValue;
  FormFieldController<List<String>>? ageChipValueController;
  // State field(s) for CategoryChip widget.
  String? categoryChipValue;
  FormFieldController<List<String>>? categoryChipValueController;
  // State field(s) for SeatAreaChip widget.
  String? seatAreaChipValue;
  FormFieldController<List<String>>? seatAreaChipValueController;
  // State field(s) for WTChip widget.
  String? wTChipValue;
  FormFieldController<List<String>>? wTChipValueController;
  // State field(s) for PSChip widget.
  String? pSChipValue;
  FormFieldController<List<String>>? pSChipValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    guestNameController?.dispose();
    guestMobileController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
