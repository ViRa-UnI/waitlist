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
import 'edit_table_comp_model.dart';
export 'edit_table_comp_model.dart';

class EditTableCompWidget extends StatefulWidget {
  const EditTableCompWidget({
    Key? key,
    required this.rowDetails,
  }) : super(key: key);

  final GuestEntriesVisitedRow? rowDetails;

  @override
  _EditTableCompWidgetState createState() => _EditTableCompWidgetState();
}

class _EditTableCompWidgetState extends State<EditTableCompWidget> {
  late EditTableCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditTableCompModel());

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
                          'q3l72rht' /* Update the Table and confirm */,
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
                          '5hwfxndb' /* 01 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'bkxn1jyl' /* 02 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'hifd2jjn' /* 03 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'g5b86gno' /* 04 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'f67kksut' /* 05 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'nn8coyi3' /* 06 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          's20i78nz' /* 07 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'n8syize3' /* 08 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'bxlqf69u' /* 09 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          '7v9yl15j' /* 10 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'qum15fmh' /* 11 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'zlhcrwst' /* 12 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'ocgbshdh' /* 13 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'xl0gpvh7' /* 14 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'kv3sqg4f' /* 15 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          '2ecxi4jj' /* 16 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          '8mu1okj3' /* 17 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'kxkffent' /* 18 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          '4l2jb5y6' /* 19 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          '4riby3ew' /* 20 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          '2p8h171i' /* 21 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          '6mavb0wr' /* 22 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          '8crqxpti' /* 23 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'izizo3u5' /* 24 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          '67r9hkzv' /* 25 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'lzq9ijks' /* 26 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'eyykjfzg' /* 27 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          '7a9gcc1z' /* 28 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'pm7chddv' /* 29 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'h5m6fcto' /* 30 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'cxvitbvs' /* 31 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          '65gr0m3j' /* 32 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'ciooi5xg' /* 33 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'jefxk4aa' /* 34 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'stnzcqq9' /* 35 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          '7x5btu55' /* 36 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'rpe3fyco' /* 37 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'hbpy6dck' /* 38 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          '1vv1sygf' /* 39 */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'rdma7cd1' /* 40 */,
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
                    await GuestEntriesVisitedTable().update(
                      data: {
                        'Table': _model.tableChipsValue,
                      },
                      matchingRows: (rows) => rows.eq(
                        'id',
                        widget.rowDetails?.id,
                      ),
                    );
                    Navigator.pop(context);
                  },
                  text: FFLocalizations.of(context).getText(
                    '3exoukss' /* Confirm */,
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
