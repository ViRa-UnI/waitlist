import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'guest_entry_form_widget.dart' show GuestEntryFormWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GuestEntryFormModel extends FlutterFlowModel<GuestEntryFormWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for GuestName widget.
  TextEditingController? guestNameController;
  String? Function(BuildContext, String?)? guestNameControllerValidator;
  // State field(s) for TypeChip widget.
  String? typeChipValue;
  FormFieldController<List<String>>? typeChipValueController;
  // State field(s) for GuestMobile widget.
  final guestMobileKey = GlobalKey();
  TextEditingController? guestMobileController;
  String? guestMobileSelectedOption;
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
  // State field(s) for messageContent widget.
  TextEditingController? messageContentController;
  String? Function(BuildContext, String?)? messageContentControllerValidator;
  // State field(s) for countryCode widget.
  TextEditingController? countryCodeController;
  String? Function(BuildContext, String?)? countryCodeControllerValidator;
  // State field(s) for fullMobileno widget.
  TextEditingController? fullMobilenoController;
  String? Function(BuildContext, String?)? fullMobilenoControllerValidator;
  // State field(s) for submissionId widget.
  TextEditingController? submissionIdController;
  String? Function(BuildContext, String?)? submissionIdControllerValidator;
  // State field(s) for smsStatus widget.
  TextEditingController? smsStatusController;
  String? Function(BuildContext, String?)? smsStatusControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    guestNameController?.dispose();
    messageContentController?.dispose();
    countryCodeController?.dispose();
    fullMobilenoController?.dispose();
    submissionIdController?.dispose();
    smsStatusController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
