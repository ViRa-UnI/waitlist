import '/backend/supabase/supabase.dart';
import '/components/table_components/w_t_edit_comp_supabase/w_t_edit_comp_supabase_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'wait_list_table_supabase_model.dart';
export 'wait_list_table_supabase_model.dart';

class WaitListTableSupabaseWidget extends StatefulWidget {
  const WaitListTableSupabaseWidget({Key? key}) : super(key: key);

  @override
  _WaitListTableSupabaseWidgetState createState() =>
      _WaitListTableSupabaseWidgetState();
}

class _WaitListTableSupabaseWidgetState
    extends State<WaitListTableSupabaseWidget> {
  late WaitListTableSupabaseModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WaitListTableSupabaseModel());

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

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
      child: ClipRRect(
        child: Container(
          width: double.infinity,
          height: 100.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primary,
          ),
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
              List<GuestEntriesRow> columnGuestEntriesRowList = snapshot.data!;
              return Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: List.generate(columnGuestEntriesRowList.length,
                    (columnIndex) {
                  final columnGuestEntriesRow =
                      columnGuestEntriesRowList[columnIndex];
                  return Expanded(
                    child: Align(
                      alignment: AlignmentDirectional(-1.00, 0.00),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            columnGuestEntriesRow.name!
                                .maybeHandleOverflow(maxChars: 10),
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context).bodyLarge,
                          ),
                          Text(
                            columnGuestEntriesRow.type!,
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context).bodyLarge,
                          ),
                          Text(
                            columnGuestEntriesRow.mobile!,
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context).bodyLarge,
                          ),
                          Text(
                            columnGuestEntriesRow.category!,
                            style: FlutterFlowTheme.of(context).bodyLarge,
                          ),
                          Text(
                            columnGuestEntriesRow.seatingArea!,
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context).bodyLarge,
                          ),
                          Text(
                            columnGuestEntriesRow.waitingTime!,
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context).bodyLarge,
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'jdaxkm22' /* RT */,
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w500,
                                    ),
                          ),
                          Text(
                            columnGuestEntriesRow.partySize!,
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context).bodyLarge,
                          ),
                          Text(
                            columnGuestEntriesRow.mobile!,
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context).bodyLarge,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Builder(
                                builder: (context) => InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await showAlignedDialog(
                                      context: context,
                                      isGlobal: true,
                                      avoidOverflow: false,
                                      targetAnchor: AlignmentDirectional(
                                              0.0, 0.0)
                                          .resolve(Directionality.of(context)),
                                      followerAnchor: AlignmentDirectional(
                                              0.0, 0.0)
                                          .resolve(Directionality.of(context)),
                                      builder: (dialogContext) {
                                        return Material(
                                          color: Colors.transparent,
                                          child: Container(
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.7,
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.5,
                                            child: WTEditCompSupabaseWidget(
                                              uID: columnGuestEntriesRow,
                                            ),
                                          ),
                                        );
                                      },
                                    ).then((value) => setState(() {}));
                                  },
                                  child: Icon(
                                    Icons.timer,
                                    color: FlutterFlowTheme.of(context).info,
                                    size: 24.0,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.00, 0.00),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                      'GuestDetailsPage',
                                      queryParameters: {
                                        'guestId': serializeParam(
                                          columnGuestEntriesRow.id,
                                          ParamType.int,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: Icon(
                                    Icons.restaurant,
                                    color: FlutterFlowTheme.of(context).info,
                                    size: 24.0,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.00, 0.00),
                                child: Icon(
                                  Icons.no_accounts,
                                  color: FlutterFlowTheme.of(context).info,
                                  size: 24.0,
                                ),
                              ),
                            ].divide(SizedBox(width: 5.0)),
                          ),
                        ]
                            .divide(SizedBox(width: 30.0))
                            .addToEnd(SizedBox(width: 30.0)),
                      ),
                    ),
                  );
                }),
              );
            },
          ),
        ),
      ),
    );
  }
}
