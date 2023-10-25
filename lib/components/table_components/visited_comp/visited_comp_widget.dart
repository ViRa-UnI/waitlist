import '/auth/firebase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'visited_comp_model.dart';
export 'visited_comp_model.dart';

class VisitedCompWidget extends StatefulWidget {
  const VisitedCompWidget({
    Key? key,
    required this.rowDetails,
  }) : super(key: key);

  final GuestEntriesRow? rowDetails;

  @override
  _VisitedCompWidgetState createState() => _VisitedCompWidgetState();
}

class _VisitedCompWidgetState extends State<VisitedCompWidget> {
  late VisitedCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VisitedCompModel());

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
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'x0z6vt11' /* Select the Table and confirm */,
                        ),
                        maxLines: 2,
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: 'Open Sans',
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                    child: FlutterFlowChoiceChips(
                      options: [
                        ChipData(FFLocalizations.of(context).getText(
                          'p91649aj' /* 01 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          '0whwf7v9' /* 02 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          's26xw5vf' /* 03 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          's8tk6ev5' /* 04 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          '30jbji9a' /* 05 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          '2xvc072y' /* 06 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          '2ykrj2nm' /* 07 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          '43m2tfnu' /* 08 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'c0j9lbq2' /* 09 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          '6xp0q1jo' /* 10 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'szlkyavl' /* 11 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'l61pzpn9' /* 12 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'x2nnaiei' /* 13 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          '6ln5c3sb' /* 14 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'o4hjuuo2' /* 15 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'hayqzask' /* 16 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          '5poja5xf' /* 17 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'qtuasn2d' /* 18 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'etbc9cj4' /* 19 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'nbacpopn' /* 20 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'fzepmhbm' /* 21 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'yr0n41so' /* 22 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'czgmktig' /* 23 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          '36c2dgl9' /* 24 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          's88xm94x' /* 25 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          '2na84w60' /* 26 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          '1q5kbof5' /* 27 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'ieo6m5st' /* 28 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          '8jo1onjo' /* 29 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'o56ic57j' /* 30 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'm5ydvkrw' /* 31 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'wv1usbgu' /* 32 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'kdfs8k4u' /* 33 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'uoc4z35q' /* 34 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'w9vkv9c7' /* 35 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          '0tjqsiy7' /* 36 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'jy1622ym' /* 37 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'xtw7b3wj' /* 38 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'h4b69csv' /* 39 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          't5u7a0lu' /* 40 */,
                        ))
                      ],
                      onChanged: (val) =>
                          setState(() => _model.tableChipsValue = val?.first),
                      selectedChipStyle: ChipStyle(
                        backgroundColor: FlutterFlowTheme.of(context).secondary,
                        textStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Montserrat',
                                  fontSize: 17.0,
                                  letterSpacing: 1.0,
                                  fontWeight: FontWeight.bold,
                                ),
                        iconColor: FlutterFlowTheme.of(context).info,
                        iconSize: 18.0,
                        labelPadding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 5.0, 15.0, 5.0),
                        elevation: 0.0,
                        borderColor: FlutterFlowTheme.of(context).info,
                        borderWidth: 1.0,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      unselectedChipStyle: ChipStyle(
                        backgroundColor: Color(0xFFF6F7F8),
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Montserrat',
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  fontSize: 17.0,
                                  letterSpacing: 1.0,
                                  fontWeight: FontWeight.bold,
                                ),
                        iconColor: FlutterFlowTheme.of(context).primary,
                        iconSize: 18.0,
                        labelPadding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 5.0, 15.0, 5.0),
                        elevation: 0.0,
                        borderColor: Color(0x03FFFFFF),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      chipSpacing: 12.0,
                      rowSpacing: 15.0,
                      multiselect: false,
                      alignment: WrapAlignment.center,
                      controller: _model.tableChipsValueController ??=
                          FormFieldController<List<String>>(
                        [],
                      ),
                      wrapped: true,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 100.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    await GuestEntriesVisitedTable().insert({
                      'id': widget.rowDetails?.id,
                      'created_at':
                          supaSerialize<DateTime>(getCurrentTimestamp),
                      'name': widget.rowDetails?.name,
                      'type': widget.rowDetails?.type,
                      'mobile': widget.rowDetails?.mobile,
                      'age': widget.rowDetails?.age,
                      'category': widget.rowDetails?.category,
                      'seatingArea': widget.rowDetails?.seatingArea,
                      'waitingTime': widget.rowDetails?.waitingTime,
                      'partySize': widget.rowDetails?.partySize,
                      'messageContent':
                          widget.rowDetails?.createdAt?.toString(),
                      'userlog': currentUserEmail,
                      'Table': _model.tableChipsValue,
                    });
                    await GuestEntriesTable().delete(
                      matchingRows: (rows) => rows.eq(
                        'id',
                        widget.rowDetails?.id,
                      ),
                    );
                    Navigator.pop(context);
                  },
                  text: FFLocalizations.of(context).getText(
                    'k9rbz14f' /* Confirm */,
                  ),
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
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
      ),
    );
  }
}
