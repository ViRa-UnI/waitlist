import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'guest_entry_form_model.dart';
export 'guest_entry_form_model.dart';

class GuestEntryFormWidget extends StatefulWidget {
  const GuestEntryFormWidget({Key? key}) : super(key: key);

  @override
  _GuestEntryFormWidgetState createState() => _GuestEntryFormWidgetState();
}

class _GuestEntryFormWidgetState extends State<GuestEntryFormWidget> {
  late GuestEntryFormModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GuestEntryFormModel());

    _model.guestNameController ??= TextEditingController();
    _model.guestMobileController ??= TextEditingController();
    _model.messageContentController ??= TextEditingController();
    _model.countryCodeController ??= TextEditingController();
    _model.fullMobilenoController ??= TextEditingController();
    _model.submissionIdController ??= TextEditingController(
        text: valueOrDefault<String>(
      formatNumber(
        random_data.randomDouble(3.0, 1000.0),
        formatType: FormatType.custom,
        format: '####',
        locale: '',
      ),
      '1234567',
    ));
    _model.smsStatusController ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
          _model.countryCodeController?.text =
              FFLocalizations.of(context).getText(
            '3b50vz18' /* 965 */,
          );
          _model.smsStatusController?.text =
              FFLocalizations.of(context).getText(
            'docton1p' /* Status */,
          );
        }));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(-1.00, 0.00),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(50.0, 50.0, 50.0, 50.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Form(
              key: _model.formKey,
              autovalidateMode: AutovalidateMode.disabled,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.00, 0.00),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 15.0, 8.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.5,
                                child: TextFormField(
                                  controller: _model.guestNameController,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    '_model.guestNameController',
                                    Duration(milliseconds: 2000),
                                    () => setState(() {}),
                                  ),
                                  autofocus: true,
                                  textCapitalization: TextCapitalization.words,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w600,
                                          lineHeight: 10.0,
                                        ),
                                    hintText:
                                        FFLocalizations.of(context).getText(
                                      'o2vzrpd8' /* Enter Guest Name */,
                                    ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w600,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    suffixIcon: _model.guestNameController!.text
                                            .isNotEmpty
                                        ? InkWell(
                                            onTap: () async {
                                              _model.guestNameController
                                                  ?.clear();
                                              setState(() {});
                                            },
                                            child: Icon(
                                              Icons.clear,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              size: 30.0,
                                            ),
                                          )
                                        : null,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.normal,
                                      ),
                                  cursorColor:
                                      FlutterFlowTheme.of(context).info,
                                  validator: _model.guestNameControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 10.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '1h34zazm' /* Type */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                  ),
                                ),
                                FlutterFlowChoiceChips(
                                  options: [
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      'oqszde7d' /* M */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      '0vpajpbv' /* F */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      'y3exx9qq' /* Couple */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      'h95v3vqz' /* Family */,
                                    ))
                                  ],
                                  onChanged: (val) => setState(
                                      () => _model.typeChipValue = val?.first),
                                  selectedChipStyle: ChipStyle(
                                    backgroundColor: Color(0xFFF15D2A),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: Colors.white,
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                    iconColor:
                                        FlutterFlowTheme.of(context).info,
                                    iconSize: 18.0,
                                    labelPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            20.0, 5.0, 20.0, 5.0),
                                    elevation: 0.0,
                                    borderColor: Color(0xFFF15D2A),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  unselectedChipStyle: ChipStyle(
                                    backgroundColor: Colors.white,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: Color(0xFFF15D2A),
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                    iconColor:
                                        FlutterFlowTheme.of(context).primary,
                                    iconSize: 18.0,
                                    labelPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            20.0, 5.0, 20.0, 5.0),
                                    elevation: 0.0,
                                    borderColor: Colors.white,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  chipSpacing: 12.0,
                                  rowSpacing: 12.0,
                                  multiselect: false,
                                  alignment: WrapAlignment.start,
                                  controller: _model.typeChipValueController ??=
                                      FormFieldController<List<String>>(
                                    [],
                                  ),
                                  wrapped: true,
                                ),
                              ],
                            ),
                          ),
                        ]
                            .divide(SizedBox(width: 10.0))
                            .addToStart(SizedBox(width: 10.0)),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.00, 0.00),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 15.0, 8.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.5,
                                child: Autocomplete<String>(
                                  initialValue: TextEditingValue(),
                                  optionsBuilder: (textEditingValue) {
                                    if (textEditingValue.text == '') {
                                      return const Iterable<String>.empty();
                                    }
                                    return <String>[].where((option) {
                                      final lowercaseOption =
                                          option.toLowerCase();
                                      return lowercaseOption.contains(
                                          textEditingValue.text.toLowerCase());
                                    });
                                  },
                                  optionsViewBuilder:
                                      (context, onSelected, options) {
                                    return AutocompleteOptionsList(
                                      textFieldKey: _model.guestMobileKey,
                                      textController:
                                          _model.guestMobileController!,
                                      options: options.toList(),
                                      onSelected: onSelected,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                      textHighlightStyle: TextStyle(),
                                      elevation: 4.0,
                                      optionBackgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                      optionHighlightColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                      maxHeight: 200.0,
                                    );
                                  },
                                  onSelected: (String selection) {
                                    setState(() => _model
                                        .guestMobileSelectedOption = selection);
                                    FocusScope.of(context).unfocus();
                                  },
                                  fieldViewBuilder: (
                                    context,
                                    textEditingController,
                                    focusNode,
                                    onEditingComplete,
                                  ) {
                                    _model.guestMobileController =
                                        textEditingController;
                                    return TextFormField(
                                      key: _model.guestMobileKey,
                                      controller: textEditingController,
                                      focusNode: focusNode,
                                      onEditingComplete: onEditingComplete,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.guestMobileController',
                                        Duration(milliseconds: 2000),
                                        () => setState(() {}),
                                      ),
                                      onFieldSubmitted: (_) async {
                                        setState(() {
                                          _model.guestMobileController?.text =
                                              '965${_model.guestMobileController.text}';
                                        });
                                      },
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              lineHeight: 10.0,
                                            ),
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          'j8e78cz3' /* Enter Guest Mobile No. */,
                                        ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w600,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        suffixIcon: _model
                                                .guestMobileController!
                                                .text
                                                .isNotEmpty
                                            ? InkWell(
                                                onTap: () async {
                                                  _model.guestMobileController
                                                      ?.clear();
                                                  setState(() {});
                                                },
                                                child: Icon(
                                                  Icons.clear,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .info,
                                                  size: 20.0,
                                                ),
                                              )
                                            : null,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium,
                                      maxLength: 8,
                                      maxLengthEnforcement:
                                          MaxLengthEnforcement.enforced,
                                      keyboardType: TextInputType.phone,
                                      cursorColor:
                                          FlutterFlowTheme.of(context).info,
                                      validator: _model
                                          .guestMobileControllerValidator
                                          .asValidator(context),
                                      inputFormatters: [
                                        FilteringTextInputFormatter.allow(
                                            RegExp('[0-9]'))
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 10.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'ujj2xced' /* Age */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                  ),
                                ),
                                FlutterFlowChoiceChips(
                                  options: [
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      '3fopjsib' /* Below 20 */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      'ffy29gob' /* 20 - 40 */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      'l0popp1o' /* Above 40 */,
                                    ))
                                  ],
                                  onChanged: (val) => setState(
                                      () => _model.ageChipValue = val?.first),
                                  selectedChipStyle: ChipStyle(
                                    backgroundColor: Color(0xFFF15D2A),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: Colors.white,
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                    iconColor:
                                        FlutterFlowTheme.of(context).primary,
                                    iconSize: 18.0,
                                    labelPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            20.0, 5.0, 20.0, 5.0),
                                    elevation: 0.0,
                                    borderColor: Color(0xFFF15D2A),
                                    borderWidth: 1.0,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  unselectedChipStyle: ChipStyle(
                                    backgroundColor: Colors.white,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: Color(0xFFF15D2A),
                                          fontWeight: FontWeight.w600,
                                        ),
                                    iconColor:
                                        FlutterFlowTheme.of(context).info,
                                    iconSize: 18.0,
                                    labelPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            20.0, 5.0, 20.0, 5.0),
                                    elevation: 0.0,
                                    borderColor: Colors.white,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  chipSpacing: 12.0,
                                  rowSpacing: 12.0,
                                  multiselect: false,
                                  alignment: WrapAlignment.start,
                                  controller: _model.ageChipValueController ??=
                                      FormFieldController<List<String>>(
                                    [],
                                  ),
                                  wrapped: true,
                                ),
                              ],
                            ),
                          ),
                        ]
                            .divide(SizedBox(width: 10.0))
                            .addToStart(SizedBox(width: 10.0)),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.00, 0.00),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 10.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'mkcr80hj' /* Category */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                  ),
                                ),
                                FlutterFlowChoiceChips(
                                  options: [
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      '6u4c06al' /* Visitor */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      'lmgkpyyj' /* Guest */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      '00gtxl69' /* Client */,
                                    ))
                                  ],
                                  onChanged: (val) => setState(() =>
                                      _model.categoryChipValue = val?.first),
                                  selectedChipStyle: ChipStyle(
                                    backgroundColor: Color(0xFFF15D2A),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: Colors.white,
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                    iconColor:
                                        FlutterFlowTheme.of(context).info,
                                    iconSize: 18.0,
                                    labelPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            20.0, 5.0, 20.0, 5.0),
                                    elevation: 0.0,
                                    borderColor: Color(0xFFF15D2A),
                                    borderWidth: 1.0,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  unselectedChipStyle: ChipStyle(
                                    backgroundColor: Colors.white,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: Color(0xFFF15D2A),
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                    iconColor:
                                        FlutterFlowTheme.of(context).primary,
                                    iconSize: 18.0,
                                    labelPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            20.0, 5.0, 20.0, 5.0),
                                    elevation: 0.0,
                                    borderColor: Colors.white,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  chipSpacing: 12.0,
                                  rowSpacing: 12.0,
                                  multiselect: false,
                                  alignment: WrapAlignment.start,
                                  controller:
                                      _model.categoryChipValueController ??=
                                          FormFieldController<List<String>>(
                                    [],
                                  ),
                                  wrapped: true,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 10.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '3ec1rasv' /* Seating Area */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                  ),
                                ),
                                FlutterFlowChoiceChips(
                                  options: [
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      'tm1cqi4d' /* Indoor */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      'z7pjodtk' /* Outdoor */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      'sbecnpf8' /* Any */,
                                    ))
                                  ],
                                  onChanged: (val) => setState(() =>
                                      _model.seatAreaChipValue = val?.first),
                                  selectedChipStyle: ChipStyle(
                                    backgroundColor: Color(0xFFF15D2A),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: Colors.white,
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                    iconColor:
                                        FlutterFlowTheme.of(context).info,
                                    iconSize: 18.0,
                                    labelPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            20.0, 5.0, 20.0, 5.0),
                                    elevation: 0.0,
                                    borderColor: Color(0xFFF15D2A),
                                    borderWidth: 1.0,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  unselectedChipStyle: ChipStyle(
                                    backgroundColor: Colors.white,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: Color(0xFFF15D2A),
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                    iconColor:
                                        FlutterFlowTheme.of(context).primary,
                                    iconSize: 18.0,
                                    labelPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            20.0, 5.0, 20.0, 5.0),
                                    elevation: 0.0,
                                    borderColor: Colors.white,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  chipSpacing: 12.0,
                                  rowSpacing: 12.0,
                                  multiselect: false,
                                  alignment: WrapAlignment.start,
                                  controller:
                                      _model.seatAreaChipValueController ??=
                                          FormFieldController<List<String>>(
                                    [],
                                  ),
                                  wrapped: true,
                                ),
                              ],
                            ),
                          ),
                        ]
                            .divide(SizedBox(width: 10.0))
                            .addToStart(SizedBox(width: 10.0)),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.00, 0.00),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 10.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'u64sysoi' /* Waiting Time */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                  ),
                                ),
                                FlutterFlowChoiceChips(
                                  options: [
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      'rktz9ge1' /* 5 */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      'j2sdaarp' /* 10 */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      'c3cglqlu' /* 20 */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      'ux287fyi' /* 30 */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      'ee0xtlax' /* 40 */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      'fypb26bm' /* 50 */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      '5485r8d6' /* 60 */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      '4djyujbp' /* 70 */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      '98qgomar' /* 80 */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      'p034eopr' /* 90 */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      '52zxnjjy' /* 120 */,
                                    ))
                                  ],
                                  onChanged: (val) => setState(
                                      () => _model.wTChipValue = val?.first),
                                  selectedChipStyle: ChipStyle(
                                    backgroundColor: Color(0xFFF15D2A),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: Colors.white,
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                    iconColor:
                                        FlutterFlowTheme.of(context).primary,
                                    iconSize: 18.0,
                                    labelPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            15.0, 5.0, 15.0, 5.0),
                                    elevation: 0.0,
                                    borderColor: Color(0xFFF15D2A),
                                    borderWidth: 1.0,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  unselectedChipStyle: ChipStyle(
                                    backgroundColor: Colors.white,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: Color(0xFFF15D2A),
                                          fontWeight: FontWeight.w600,
                                        ),
                                    iconColor:
                                        FlutterFlowTheme.of(context).primary,
                                    iconSize: 18.0,
                                    labelPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            15.0, 5.0, 15.0, 5.0),
                                    elevation: 0.0,
                                    borderColor: Colors.white,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  chipSpacing: 12.0,
                                  rowSpacing: 12.0,
                                  multiselect: false,
                                  alignment: WrapAlignment.start,
                                  controller: _model.wTChipValueController ??=
                                      FormFieldController<List<String>>(
                                    [],
                                  ),
                                  wrapped: true,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 10.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      't4wvr16a' /* Party Size */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                  ),
                                ),
                                FlutterFlowChoiceChips(
                                  options: [
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      '6v9te9kw' /* 1 */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      '5991fmn1' /* 2 */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      'ds7dcz5n' /* 3 */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      'ez9fknrc' /* 4 */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      'dhgudukj' /* 5 */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      'v2hvf2v0' /* 6 */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      'wgkkb6fv' /* 7 */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      '17874gw6' /* 8 */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      'pn9okaq0' /* 9 */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      'fj5bv83h' /* More */,
                                    ))
                                  ],
                                  onChanged: (val) => setState(
                                      () => _model.pSChipValue = val?.first),
                                  selectedChipStyle: ChipStyle(
                                    backgroundColor: Color(0xFFF15D2A),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: Colors.white,
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                    iconColor:
                                        FlutterFlowTheme.of(context).primary,
                                    iconSize: 18.0,
                                    labelPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            20.0, 5.0, 20.0, 5.0),
                                    elevation: 0.0,
                                    borderColor: Color(0xFFF15D2A),
                                    borderWidth: 1.0,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  unselectedChipStyle: ChipStyle(
                                    backgroundColor: Colors.white,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: Color(0xFFF15D2A),
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                    iconColor:
                                        FlutterFlowTheme.of(context).primary,
                                    iconSize: 18.0,
                                    labelPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            20.0, 5.0, 20.0, 5.0),
                                    elevation: 0.0,
                                    borderColor: Colors.white,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  chipSpacing: 12.0,
                                  rowSpacing: 12.0,
                                  multiselect: false,
                                  alignment: WrapAlignment.start,
                                  controller: _model.pSChipValueController ??=
                                      FormFieldController<List<String>>(
                                    [],
                                  ),
                                  wrapped: true,
                                ),
                              ],
                            ),
                          ),
                        ]
                            .divide(SizedBox(width: 10.0))
                            .addToStart(SizedBox(width: 10.0)),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.00, 0.00),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                  desktop: false,
                                ))
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 8.0, 0.0),
                                    child: TextFormField(
                                      controller:
                                          _model.messageContentController,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.messageContentController',
                                        Duration(milliseconds: 2000),
                                        () => setState(() {}),
                                      ),
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          'mfndj13t' /* Message Content */,
                                        ),
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          'v5i6ir79' /* Message Content will be conbin... */,
                                        ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                          ),
                                      keyboardType: TextInputType.multiline,
                                      validator: _model
                                          .messageContentControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                  desktop: false,
                                ))
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 8.0, 0.0),
                                    child: TextFormField(
                                      controller: _model.countryCodeController,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.countryCodeController',
                                        Duration(milliseconds: 2000),
                                        () => setState(() {}),
                                      ),
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          'p0ly6i4o' /* Country Code */,
                                        ),
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          'n144xyyr' /* Country Code */,
                                        ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                          ),
                                      keyboardType: TextInputType.multiline,
                                      validator: _model
                                          .countryCodeControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          if (responsiveVisibility(
                            context: context,
                            phone: false,
                            tablet: false,
                            tabletLandscape: false,
                            desktop: false,
                          ))
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 8.0, 0.0),
                                    child: TextFormField(
                                      controller: _model.fullMobilenoController,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.fullMobilenoController',
                                        Duration(milliseconds: 2000),
                                        () => setState(() {}),
                                      ),
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          '661t3yr6' /* Full Mobile Num */,
                                        ),
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          'wpemdmeh' /* Mobile Num Dynamically Populat... */,
                                        ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                          ),
                                      keyboardType: TextInputType.multiline,
                                      validator: _model
                                          .fullMobilenoControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 200.0,
                                decoration: BoxDecoration(),
                                child: Visibility(
                                  visible: responsiveVisibility(
                                    context: context,
                                    phone: false,
                                    tablet: false,
                                    tabletLandscape: false,
                                    desktop: false,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 8.0, 0.0),
                                    child: TextFormField(
                                      controller: _model.submissionIdController,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.submissionIdController',
                                        Duration(milliseconds: 2000),
                                        () => setState(() {}),
                                      ),
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          '5vgq62hp' /* Message Content */,
                                        ),
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          'xam1ri6i' /* Message Content will be conbin... */,
                                        ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                          ),
                                      keyboardType: TextInputType.multiline,
                                      validator: _model
                                          .submissionIdControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 200.0,
                                decoration: BoxDecoration(),
                                child: Visibility(
                                  visible: responsiveVisibility(
                                    context: context,
                                    phone: false,
                                    tablet: false,
                                    tabletLandscape: false,
                                    desktop: false,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 8.0, 0.0),
                                    child: TextFormField(
                                      controller: _model.smsStatusController,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.smsStatusController',
                                        Duration(milliseconds: 2000),
                                        () => setState(() {}),
                                      ),
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          'sf6hpgvi' /* Message Content */,
                                        ),
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          '5tni2z99' /* Message Content will be conbin... */,
                                        ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                          ),
                                      keyboardType: TextInputType.multiline,
                                      validator: _model
                                          .smsStatusControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ]
                            .divide(SizedBox(width: 10.0))
                            .addToStart(SizedBox(width: 10.0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  setState(() {
                    _model.messageContentController?.text =
                        'Hi ${_model.guestNameController.text}, Chops Restaurant added you to the waiting list.  Please click the link to check your waiting time: https://title.flutterflow.app/gd?guestId=${_model.submissionIdController.text}';
                  });
                  setState(() {
                    _model.fullMobilenoController?.text =
                        '${_model.countryCodeController.text}${_model.guestMobileController.text}';
                  });
                  await FCCChopsIDCall.call(
                    g: int.tryParse(_model.fullMobilenoController.text),
                    m: _model.messageContentController.text,
                  );
                  await GuestEntriesTable().insert({
                    'name': _model.guestNameController.text,
                    'type': _model.typeChipValue,
                    'mobile': _model.fullMobilenoController.text,
                    'age': _model.ageChipValue,
                    'category': _model.categoryChipValue,
                    'seatingArea': _model.seatAreaChipValue,
                    'waitingTime': _model.wTChipValue,
                    'partySize': _model.pSChipValue,
                    'id': int.tryParse(_model.submissionIdController.text),
                    'created_at': supaSerialize<DateTime>(getCurrentTimestamp),
                    'messageContent': _model.messageContentController.text,
                    'onlyMobile': _model.guestMobileController.text,
                  });
                  setState(() {
                    _model.guestNameController?.clear();
                    _model.guestMobileController?.clear();
                    _model.messageContentController?.clear();
                    _model.submissionIdController?.text =
                        valueOrDefault<String>(
                      formatNumber(
                        random_data.randomDouble(3.0, 1000.0),
                        formatType: FormatType.custom,
                        format: '####',
                        locale: '',
                      ),
                      '1234567',
                    );
                    _model.fullMobilenoController?.clear();
                    _model.smsStatusController?.text =
                        FFLocalizations.of(context).getText(
                      'docton1p' /* Status */,
                    );
                  });
                  setState(() {
                    _model.pSChipValueController?.reset();
                    _model.wTChipValueController?.reset();
                    _model.seatAreaChipValueController?.reset();
                    _model.categoryChipValueController?.reset();
                    _model.ageChipValueController?.reset();
                    _model.typeChipValueController?.reset();
                  });
                },
                text: FFLocalizations.of(context).getText(
                  'bbwy7u5y' /* Add Guest */,
                ),
                options: FFButtonOptions(
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                      ),
                  elevation: 3.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
