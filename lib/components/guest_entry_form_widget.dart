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

    _model.textController1 ??= TextEditingController();
    _model.textController2 ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(-1.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(50.0, 50.0, 50.0, 50.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
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
                                controller: _model.textController1,
                                onChanged: (_) => EasyDebounce.debounce(
                                  '_model.textController1',
                                  Duration(milliseconds: 2000),
                                  () => setState(() {}),
                                ),
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Guest Name',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        lineHeight: 10.0,
                                      ),
                                  hintText: 'Enter Guest Name',
                                  hintStyle:
                                      FlutterFlowTheme.of(context).labelMedium,
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
                                      color: FlutterFlowTheme.of(context).info,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  suffixIcon: _model
                                          .textController1!.text.isNotEmpty
                                      ? InkWell(
                                          onTap: () async {
                                            _model.textController1?.clear();
                                            setState(() {});
                                          },
                                          child: Icon(
                                            Icons.clear,
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            size: 30.0,
                                          ),
                                        )
                                      : null,
                                ),
                                style: FlutterFlowTheme.of(context).labelMedium,
                                cursorColor: FlutterFlowTheme.of(context).info,
                                validator: _model.textController1Validator
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
                                  'Type',
                                  style:
                                      FlutterFlowTheme.of(context).labelMedium,
                                ),
                              ),
                              FlutterFlowChoiceChips(
                                options: [ChipData('M'), ChipData('F')],
                                onChanged: (val) => setState(() =>
                                    _model.choiceChipsValue1 = val?.first),
                                selectedChipStyle: ChipStyle(
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).secondary,
                                  textStyle:
                                      FlutterFlowTheme.of(context).labelSmall,
                                  iconColor: FlutterFlowTheme.of(context).info,
                                  iconSize: 18.0,
                                  labelPadding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 5.0, 20.0, 5.0),
                                  elevation: 0.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).info,
                                  borderWidth: 1.0,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                unselectedChipStyle: ChipStyle(
                                  backgroundColor: Color(0xFFF6F7F8),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                  iconColor:
                                      FlutterFlowTheme.of(context).primary,
                                  iconSize: 18.0,
                                  labelPadding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 5.0, 20.0, 5.0),
                                  elevation: 0.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).info,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                chipSpacing: 12.0,
                                rowSpacing: 12.0,
                                multiselect: false,
                                alignment: WrapAlignment.start,
                                controller:
                                    _model.choiceChipsValueController1 ??=
                                        FormFieldController<List<String>>(
                                  [],
                                ),
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
                  alignment: AlignmentDirectional(0.0, 0.0),
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
                                controller: _model.textController2,
                                onChanged: (_) => EasyDebounce.debounce(
                                  '_model.textController2',
                                  Duration(milliseconds: 2000),
                                  () => setState(() {}),
                                ),
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Mobile Num',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        lineHeight: 10.0,
                                      ),
                                  hintText: 'Enter Mobile Num',
                                  hintStyle:
                                      FlutterFlowTheme.of(context).labelMedium,
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
                                      color: FlutterFlowTheme.of(context).info,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  suffixIcon: _model
                                          .textController2!.text.isNotEmpty
                                      ? InkWell(
                                          onTap: () async {
                                            _model.textController2?.clear();
                                            setState(() {});
                                          },
                                          child: Icon(
                                            Icons.clear,
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            size: 20.0,
                                          ),
                                        )
                                      : null,
                                ),
                                style: FlutterFlowTheme.of(context).labelMedium,
                                keyboardType: TextInputType.number,
                                cursorColor: FlutterFlowTheme.of(context).info,
                                validator: _model.textController2Validator
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
                                  'Age',
                                  style:
                                      FlutterFlowTheme.of(context).labelMedium,
                                ),
                              ),
                              FlutterFlowChoiceChips(
                                options: [
                                  ChipData('Below 20'),
                                  ChipData('20 - 40'),
                                  ChipData('Above 40')
                                ],
                                onChanged: (val) => setState(() =>
                                    _model.choiceChipsValue2 = val?.first),
                                selectedChipStyle: ChipStyle(
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).secondary,
                                  textStyle:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  iconColor: FlutterFlowTheme.of(context).info,
                                  iconSize: 18.0,
                                  labelPadding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 5.0, 20.0, 5.0),
                                  elevation: 0.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).info,
                                  borderWidth: 1.0,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                unselectedChipStyle: ChipStyle(
                                  backgroundColor: Color(0xFFF6F7F8),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                  iconColor:
                                      FlutterFlowTheme.of(context).primary,
                                  iconSize: 18.0,
                                  labelPadding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 5.0, 20.0, 5.0),
                                  elevation: 0.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).info,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                chipSpacing: 12.0,
                                rowSpacing: 12.0,
                                multiselect: false,
                                alignment: WrapAlignment.start,
                                controller:
                                    _model.choiceChipsValueController2 ??=
                                        FormFieldController<List<String>>(
                                  [],
                                ),
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
                  alignment: AlignmentDirectional(0.0, 0.0),
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
                                  'Category',
                                  style:
                                      FlutterFlowTheme.of(context).labelMedium,
                                ),
                              ),
                              FlutterFlowChoiceChips(
                                options: [
                                  ChipData('Regular'),
                                  ChipData('Registered'),
                                  ChipData('Guest')
                                ],
                                onChanged: (val) => setState(() =>
                                    _model.choiceChipsValue3 = val?.first),
                                selectedChipStyle: ChipStyle(
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).secondary,
                                  textStyle:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  iconColor: FlutterFlowTheme.of(context).info,
                                  iconSize: 18.0,
                                  labelPadding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 5.0, 20.0, 5.0),
                                  elevation: 0.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).info,
                                  borderWidth: 1.0,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                unselectedChipStyle: ChipStyle(
                                  backgroundColor: Color(0xFFF6F7F8),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                  iconColor:
                                      FlutterFlowTheme.of(context).primary,
                                  iconSize: 18.0,
                                  labelPadding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 5.0, 20.0, 5.0),
                                  elevation: 0.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).info,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                chipSpacing: 12.0,
                                rowSpacing: 12.0,
                                multiselect: false,
                                alignment: WrapAlignment.start,
                                controller:
                                    _model.choiceChipsValueController3 ??=
                                        FormFieldController<List<String>>(
                                  [],
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
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 10.0),
                                child: Text(
                                  'Seating Area',
                                  style:
                                      FlutterFlowTheme.of(context).labelMedium,
                                ),
                              ),
                              FlutterFlowChoiceChips(
                                options: [
                                  ChipData('Indoor'),
                                  ChipData('Outdoor'),
                                  ChipData('Any')
                                ],
                                onChanged: (val) => setState(() =>
                                    _model.choiceChipsValue4 = val?.first),
                                selectedChipStyle: ChipStyle(
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).secondary,
                                  textStyle:
                                      FlutterFlowTheme.of(context).titleMedium,
                                  iconColor: FlutterFlowTheme.of(context).info,
                                  iconSize: 18.0,
                                  labelPadding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 5.0, 20.0, 5.0),
                                  elevation: 0.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).info,
                                  borderWidth: 1.0,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                unselectedChipStyle: ChipStyle(
                                  backgroundColor: Color(0xFFF6F7F8),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                  iconColor:
                                      FlutterFlowTheme.of(context).primary,
                                  iconSize: 18.0,
                                  labelPadding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 5.0, 20.0, 5.0),
                                  elevation: 0.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).info,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                chipSpacing: 12.0,
                                rowSpacing: 12.0,
                                multiselect: false,
                                alignment: WrapAlignment.start,
                                controller:
                                    _model.choiceChipsValueController4 ??=
                                        FormFieldController<List<String>>(
                                  [],
                                ),
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
                  alignment: AlignmentDirectional(0.0, 0.0),
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
                                  'Waiting Time',
                                  style:
                                      FlutterFlowTheme.of(context).labelMedium,
                                ),
                              ),
                              FlutterFlowChoiceChips(
                                options: [
                                  ChipData('5'),
                                  ChipData('10'),
                                  ChipData('20'),
                                  ChipData('30'),
                                  ChipData('40'),
                                  ChipData('50'),
                                  ChipData('60'),
                                  ChipData('70'),
                                  ChipData('80'),
                                  ChipData('90'),
                                  ChipData('120')
                                ],
                                onChanged: (val) => setState(() =>
                                    _model.choiceChipsValue5 = val?.first),
                                selectedChipStyle: ChipStyle(
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).secondary,
                                  textStyle:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  iconColor: FlutterFlowTheme.of(context).info,
                                  iconSize: 18.0,
                                  labelPadding: EdgeInsetsDirectional.fromSTEB(
                                      15.0, 5.0, 15.0, 5.0),
                                  elevation: 0.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).info,
                                  borderWidth: 1.0,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                unselectedChipStyle: ChipStyle(
                                  backgroundColor: Color(0xFFF6F7F8),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                  iconColor:
                                      FlutterFlowTheme.of(context).primary,
                                  iconSize: 18.0,
                                  labelPadding: EdgeInsetsDirectional.fromSTEB(
                                      15.0, 5.0, 15.0, 5.0),
                                  elevation: 0.0,
                                  borderColor: Color(0x03FFFFFF),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                chipSpacing: 12.0,
                                rowSpacing: 12.0,
                                multiselect: false,
                                alignment: WrapAlignment.start,
                                controller:
                                    _model.choiceChipsValueController5 ??=
                                        FormFieldController<List<String>>(
                                  [],
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
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 10.0),
                                child: Text(
                                  'Party Size',
                                  style:
                                      FlutterFlowTheme.of(context).labelMedium,
                                ),
                              ),
                              FlutterFlowChoiceChips(
                                options: [
                                  ChipData('1'),
                                  ChipData('2'),
                                  ChipData('3'),
                                  ChipData('4'),
                                  ChipData('5'),
                                  ChipData('6'),
                                  ChipData('7'),
                                  ChipData('8'),
                                  ChipData('9'),
                                  ChipData('More')
                                ],
                                onChanged: (val) => setState(() =>
                                    _model.choiceChipsValue6 = val?.first),
                                selectedChipStyle: ChipStyle(
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).secondary,
                                  textStyle:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  iconColor: FlutterFlowTheme.of(context).info,
                                  iconSize: 18.0,
                                  labelPadding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 5.0, 20.0, 5.0),
                                  elevation: 0.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).info,
                                  borderWidth: 1.0,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                unselectedChipStyle: ChipStyle(
                                  backgroundColor: Color(0xFFF6F7F8),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                  iconColor:
                                      FlutterFlowTheme.of(context).primary,
                                  iconSize: 18.0,
                                  labelPadding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 5.0, 20.0, 5.0),
                                  elevation: 0.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).primary,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                chipSpacing: 12.0,
                                rowSpacing: 12.0,
                                multiselect: false,
                                alignment: WrapAlignment.start,
                                controller:
                                    _model.choiceChipsValueController6 ??=
                                        FormFieldController<List<String>>(
                                  [],
                                ),
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
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  await GuestEntryDetailsRecord.collection
                      .doc()
                      .set(createGuestEntryDetailsRecordData(
                        name: '',
                        type: '',
                        mobileNum: '',
                        age: '',
                        category: '',
                        seatingArea: '',
                        waitingTime: '',
                        partySize: '',
                      ));
                },
                text: 'Add Guest',
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
