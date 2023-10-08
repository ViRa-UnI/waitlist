import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'waiting_time_edit_comp_model.dart';
export 'waiting_time_edit_comp_model.dart';

class WaitingTimeEditCompWidget extends StatefulWidget {
  const WaitingTimeEditCompWidget({Key? key}) : super(key: key);

  @override
  _WaitingTimeEditCompWidgetState createState() =>
      _WaitingTimeEditCompWidgetState();
}

class _WaitingTimeEditCompWidgetState extends State<WaitingTimeEditCompWidget> {
  late WaitingTimeEditCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WaitingTimeEditCompModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<GuestEntryDetailsRecord>>(
      stream: queryGuestEntryDetailsRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  Color(0xFF011D1A),
                ),
              ),
            ),
          );
        }
        List<GuestEntryDetailsRecord> optionsGuestEntryDetailsRecordList =
            snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final optionsGuestEntryDetailsRecord =
            optionsGuestEntryDetailsRecordList.isNotEmpty
                ? optionsGuestEntryDetailsRecordList.first
                : null;
        return Material(
          color: Colors.transparent,
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
          ),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0.0),
                bottomRight: Radius.circular(0.0),
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            '48ob6ln4' /* Choose the Waiting Time */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: 'Open Sans',
                                color: FlutterFlowTheme.of(context).primary,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional(0.00, 0.00),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 10.0, 10.0, 10.0),
                        child: GridView(
                          padding: EdgeInsets.zero,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            crossAxisSpacing: 8.0,
                            mainAxisSpacing: 10.0,
                            childAspectRatio: 1.0,
                          ),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.00, -1.00),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 10.0, 10.0, 10.0),
                                child: FlutterFlowChoiceChips(
                                  options: [
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      'dlcxs5u9' /* 15 */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      '32urlqku' /* 10 */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      'o2r10zv3' /* 20 */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      'vzifw31c' /* 30 */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      'i9lizj1y' /* 40 */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      '4xbpxej6' /* 50 */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      'sckg6l7s' /* 60 */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      '2995kwp3' /* 70 */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      'x41raz08' /* 80 */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      '4c5139g9' /* 90 */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      '2l9yqka5' /* 120 */,
                                    ))
                                  ],
                                  onChanged: (val) => setState(
                                      () => _model.wTChipValue = val?.first),
                                  selectedChipStyle: ChipStyle(
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                    iconColor:
                                        FlutterFlowTheme.of(context).info,
                                    iconSize: 18.0,
                                    labelPadding:
                                        EdgeInsetsDirectional.fromSTEB(
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
                                    borderColor: Color(0x03FFFFFF),
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
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 150.0),
                    child: FutureBuilder<List<GuestEntriesRow>>(
                      future: GuestEntriesTable().queryRows(
                        queryFn: (q) => q,
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  Color(0xFF011D1A),
                                ),
                              ),
                            ),
                          );
                        }
                        List<GuestEntriesRow> buttonGuestEntriesRowList =
                            snapshot.data!;
                        return FFButtonWidget(
                          onPressed: () async {
                            await GuestEntriesTable().update(
                              data: {
                                'waitingTime': _model.wTChipValue,
                              },
                              matchingRows: (rows) => rows,
                            );
                          },
                          text: FFLocalizations.of(context).getText(
                            'oirw1fze' /* Update */,
                          ),
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
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
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
