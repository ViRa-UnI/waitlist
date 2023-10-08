import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'not_visited_comp_model.dart';
export 'not_visited_comp_model.dart';

class NotVisitedCompWidget extends StatefulWidget {
  const NotVisitedCompWidget({
    Key? key,
    required this.rowDetailsNotVisited,
  }) : super(key: key);

  final GuestEntriesRow? rowDetailsNotVisited;

  @override
  _NotVisitedCompWidgetState createState() => _NotVisitedCompWidgetState();
}

class _NotVisitedCompWidgetState extends State<NotVisitedCompWidget> {
  late NotVisitedCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotVisitedCompModel());

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
              Align(
                alignment: AlignmentDirectional(-1.00, 0.00),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'ns1a7fqp' /* Select the Reason */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: 'Open Sans',
                                color: Color(0xFF231F20),
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 10.0),
                          child: FlutterFlowChoiceChips(
                            options: [
                              ChipData(FFLocalizations.of(context).getText(
                                'kqkjp4wm' /* Left to another restaurant */,
                              )),
                              ChipData(FFLocalizations.of(context).getText(
                                'n3bass1w' /* Too Late */,
                              )),
                              ChipData(FFLocalizations.of(context).getText(
                                '5qx0vrzw' /* Not Answering */,
                              )),
                              ChipData(FFLocalizations.of(context).getText(
                                'f23722ni' /* Other */,
                              ))
                            ],
                            onChanged: (val) =>
                                setState(() => _model.wTChipValue = val?.first),
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
                            rowSpacing: 15.0,
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
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 20.0, 0.0, 150.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await GuestEntriesNotVisitedTable().insert({
                              'id': widget.rowDetailsNotVisited?.id,
                              'created_at':
                                  supaSerialize<DateTime>(getCurrentTimestamp),
                              'name': widget.rowDetailsNotVisited?.name,
                              'type': widget.rowDetailsNotVisited?.type,
                              'mobile': widget.rowDetailsNotVisited?.mobile,
                              'age': widget.rowDetailsNotVisited?.age,
                              'category': widget.rowDetailsNotVisited?.category,
                              'seatingArea':
                                  widget.rowDetailsNotVisited?.seatingArea,
                              'waitingTime':
                                  widget.rowDetailsNotVisited?.waitingTime,
                              'partySize':
                                  widget.rowDetailsNotVisited?.partySize,
                              'messageContent': widget
                                  .rowDetailsNotVisited?.createdAt
                                  ?.toString(),
                              'vistedNotes': _model.wTChipValue,
                            });
                            await GuestEntriesTable().delete(
                              matchingRows: (rows) => rows.eq(
                                'id',
                                widget.rowDetailsNotVisited?.id,
                              ),
                            );
                            Navigator.pop(context);
                            _model.updatePage(() {});
                          },
                          text: FFLocalizations.of(context).getText(
                            'v48ykxmh' /* Update */,
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
                        ),
                      ),
                    ],
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
