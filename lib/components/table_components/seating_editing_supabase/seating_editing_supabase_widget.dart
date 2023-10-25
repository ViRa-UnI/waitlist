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
import 'seating_editing_supabase_model.dart';
export 'seating_editing_supabase_model.dart';

class SeatingEditingSupabaseWidget extends StatefulWidget {
  const SeatingEditingSupabaseWidget({
    Key? key,
    required this.uID,
  }) : super(key: key);

  final GuestEntriesRow? uID;

  @override
  _SeatingEditingSupabaseWidgetState createState() =>
      _SeatingEditingSupabaseWidgetState();
}

class _SeatingEditingSupabaseWidgetState
    extends State<SeatingEditingSupabaseWidget> {
  late SeatingEditingSupabaseModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SeatingEditingSupabaseModel());

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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'fcx100sd' /* Choose the Seating Area */,
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
                        FlutterFlowChoiceChips(
                          options: [
                            ChipData(FFLocalizations.of(context).getText(
                              '5bubdygl' /* Indoor */,
                            )),
                            ChipData(FFLocalizations.of(context).getText(
                              'j727dspd' /* Outdoor */,
                            )),
                            ChipData(FFLocalizations.of(context).getText(
                              'vwxg2szc' /* Any */,
                            ))
                          ],
                          onChanged: (val) => setState(
                              () => _model.seatAreaChipValue = val?.first),
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
                            iconColor: FlutterFlowTheme.of(context).info,
                            iconSize: 18.0,
                            labelPadding: EdgeInsetsDirectional.fromSTEB(
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
                            iconColor: FlutterFlowTheme.of(context).primary,
                            iconSize: 18.0,
                            labelPadding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 5.0, 20.0, 5.0),
                            elevation: 0.0,
                            borderColor: Colors.white,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          chipSpacing: 12.0,
                          rowSpacing: 12.0,
                          multiselect: false,
                          alignment: WrapAlignment.start,
                          controller: _model.seatAreaChipValueController ??=
                              FormFieldController<List<String>>(
                            [],
                          ),
                          wrapped: true,
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
                            'seatingArea': _model.seatAreaChipValue,
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
                        'lmcc2hoa' /* Confirm */,
                      ),
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0xFF231F20),
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
