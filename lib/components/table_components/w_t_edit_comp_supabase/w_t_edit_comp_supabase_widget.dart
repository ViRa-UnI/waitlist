import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'w_t_edit_comp_supabase_model.dart';
export 'w_t_edit_comp_supabase_model.dart';

class WTEditCompSupabaseWidget extends StatefulWidget {
  const WTEditCompSupabaseWidget({
    Key? key,
    required this.uID,
  }) : super(key: key);

  final GuestEntriesRow? uID;

  @override
  _WTEditCompSupabaseWidgetState createState() =>
      _WTEditCompSupabaseWidgetState();
}

class _WTEditCompSupabaseWidgetState extends State<WTEditCompSupabaseWidget> {
  late WTEditCompSupabaseModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WTEditCompSupabaseModel());

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
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'wuiihres' /* Choose the Waiting Time */,
                      ),
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
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
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                    child: GridView(
                      padding: EdgeInsets.zero,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
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
                                ChipData(FFLocalizations.of(context).getText(
                                  'am5zhhg2' /* 5 */,
                                )),
                                ChipData(FFLocalizations.of(context).getText(
                                  'p941su5j' /* 10 */,
                                )),
                                ChipData(FFLocalizations.of(context).getText(
                                  'k44a2kor' /* 20 */,
                                )),
                                ChipData(FFLocalizations.of(context).getText(
                                  'agep7nob' /* 30 */,
                                )),
                                ChipData(FFLocalizations.of(context).getText(
                                  'dz7q4b1g' /* 40 */,
                                )),
                                ChipData(FFLocalizations.of(context).getText(
                                  't3ze16ut' /* 50 */,
                                )),
                                ChipData(FFLocalizations.of(context).getText(
                                  'xm8i1ldg' /* 60 */,
                                )),
                                ChipData(FFLocalizations.of(context).getText(
                                  '3yskyq3s' /* 70 */,
                                )),
                                ChipData(FFLocalizations.of(context).getText(
                                  '240xganf' /* 80 */,
                                )),
                                ChipData(FFLocalizations.of(context).getText(
                                  '40ogtxe2' /* 90 */,
                                )),
                                ChipData(FFLocalizations.of(context).getText(
                                  'nn482yt9' /* 120 */,
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
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w600,
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
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 150.0),
                child: FutureBuilder<List<GuestEntriesRow>>(
                  future: GuestEntriesTable().querySingleRow(
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
                    final buttonGuestEntriesRow =
                        buttonGuestEntriesRowList.isNotEmpty
                            ? buttonGuestEntriesRowList.first
                            : null;
                    return FFButtonWidget(
                      onPressed: () async {
                        _model.newWaitingTime =
                            await GuestEntriesTable().update(
                          data: {
                            'waitingTime': _model.wTChipValue,
                          },
                          matchingRows: (rows) => rows.eq(
                            'uniqueID',
                            valueOrDefault<String>(
                              widget.uID?.uniqueID,
                              'notSet',
                            ),
                          ),
                          returnRows: true,
                        );
                        Navigator.pop(context);
                        _model.updatePage(() {});

                        setState(() {});
                      },
                      text: FFLocalizations.of(context).getText(
                        't5vzv1l5' /* Confirm */,
                      ),
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
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
  }
}
