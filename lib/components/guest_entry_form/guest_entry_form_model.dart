import '/auth/firebase_auth/auth_util.dart';
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
  FocusNode? guestNameFocusNode;
  TextEditingController? guestNameController;
  String? Function(BuildContext, String?)? guestNameControllerValidator;
  String? _guestNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'v8dnxwm6' /* Field is required */,
      );
    }

    if (val.length < 3) {
      return 'Requires at least 3 characters.';
    }
    if (val.length > 25) {
      return 'Maximum 25 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for TypeChip widget.
  String? typeChipValue;
  FormFieldController<List<String>>? typeChipValueController;
  // State field(s) for GuestMobile widget.
  final guestMobileKey = GlobalKey();
  FocusNode? guestMobileFocusNode;
  TextEditingController? guestMobileController;
  String? guestMobileSelectedOption;
  String? Function(BuildContext, String?)? guestMobileControllerValidator;
  String? _guestMobileControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'avjqya7r' /* Field is required */,
      );
    }
    if (val != guestMobileSelectedOption) {
      return FFLocalizations.of(context).getText(
        'u6d4s25z' /* Please choose an option from t... */,
      );
    }
    if (val.length < 8) {
      return 'Requires at least 8 characters.';
    }
    if (val.length > 8) {
      return 'Maximum 8 characters allowed, currently ${val.length}.';
    }

    return null;
  }

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
  FocusNode? messageContentFocusNode;
  TextEditingController? messageContentController;
  String? Function(BuildContext, String?)? messageContentControllerValidator;
  // State field(s) for countryCode widget.
  FocusNode? countryCodeFocusNode;
  TextEditingController? countryCodeController;
  String? Function(BuildContext, String?)? countryCodeControllerValidator;
  // State field(s) for fullMobileno widget.
  FocusNode? fullMobilenoFocusNode;
  TextEditingController? fullMobilenoController;
  String? Function(BuildContext, String?)? fullMobilenoControllerValidator;
  // State field(s) for submissionId widget.
  FocusNode? submissionIdFocusNode;
  TextEditingController? submissionIdController;
  String? Function(BuildContext, String?)? submissionIdControllerValidator;
  // State field(s) for smsStatus widget.
  FocusNode? smsStatusFocusNode;
  TextEditingController? smsStatusController;
  String? Function(BuildContext, String?)? smsStatusControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    guestNameControllerValidator = _guestNameControllerValidator;
    guestMobileControllerValidator = _guestMobileControllerValidator;
  }

  void dispose() {
    guestNameFocusNode?.dispose();
    guestNameController?.dispose();

    guestMobileFocusNode?.dispose();

    messageContentFocusNode?.dispose();
    messageContentController?.dispose();

    countryCodeFocusNode?.dispose();
    countryCodeController?.dispose();

    fullMobilenoFocusNode?.dispose();
    fullMobilenoController?.dispose();

    submissionIdFocusNode?.dispose();
    submissionIdController?.dispose();

    smsStatusFocusNode?.dispose();
    smsStatusController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
