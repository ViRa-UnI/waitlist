import '/backend/supabase/supabase.dart';
import '/components/table_components/category_editing_supabase/category_editing_supabase_widget.dart';
import '/components/table_components/party_size_editing_supabase/party_size_editing_supabase_widget.dart';
import '/components/table_components/seating_editing_supabase/seating_editing_supabase_widget.dart';
import '/components/table_components/w_t_edit_comp_supabase/w_t_edit_comp_supabase_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'entry_details_editing_model.dart';
export 'entry_details_editing_model.dart';

class EntryDetailsEditingWidget extends StatefulWidget {
  const EntryDetailsEditingWidget({
    Key? key,
    required this.entryEditing,
  }) : super(key: key);

  final GuestEntriesRow? entryEditing;

  @override
  _EntryDetailsEditingWidgetState createState() =>
      _EntryDetailsEditingWidgetState();
}

class _EntryDetailsEditingWidgetState extends State<EntryDetailsEditingWidget> {
  late EntryDetailsEditingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EntryDetailsEditingModel());

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
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 15.0, 0.0, 15.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '54urvmi3' /* Choose the Field */,
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
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Builder(
                            builder: (context) => FFButtonWidget(
                              onPressed: () async {
                                await showAlignedDialog(
                                  context: context,
                                  isGlobal: true,
                                  avoidOverflow: false,
                                  targetAnchor: AlignmentDirectional(0.0, 0.0)
                                      .resolve(Directionality.of(context)),
                                  followerAnchor: AlignmentDirectional(0.0, 0.0)
                                      .resolve(Directionality.of(context)),
                                  builder: (dialogContext) {
                                    return Material(
                                      color: Colors.transparent,
                                      child: Container(
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.5,
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.6,
                                        child: WTEditCompSupabaseWidget(
                                          uID: widget.entryEditing!,
                                        ),
                                      ),
                                    );
                                  },
                                ).then((value) => setState(() {}));
                              },
                              text: FFLocalizations.of(context).getText(
                                'usgs94oa' /* W Time */,
                              ),
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 5.0, 0.0),
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
                          Builder(
                            builder: (context) => FFButtonWidget(
                              onPressed: () async {
                                await showAlignedDialog(
                                  context: context,
                                  isGlobal: true,
                                  avoidOverflow: false,
                                  targetAnchor: AlignmentDirectional(0.0, 0.0)
                                      .resolve(Directionality.of(context)),
                                  followerAnchor: AlignmentDirectional(0.0, 0.0)
                                      .resolve(Directionality.of(context)),
                                  builder: (dialogContext) {
                                    return Material(
                                      color: Colors.transparent,
                                      child: Container(
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.5,
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.6,
                                        child: SeatingEditingSupabaseWidget(
                                          uID: widget.entryEditing!,
                                        ),
                                      ),
                                    );
                                  },
                                ).then((value) => setState(() {}));
                              },
                              text: FFLocalizations.of(context).getText(
                                'z3kq6o3s' /* Seating */,
                              ),
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 5.0, 0.0),
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
                          Builder(
                            builder: (context) => FFButtonWidget(
                              onPressed: () async {
                                await showAlignedDialog(
                                  context: context,
                                  isGlobal: true,
                                  avoidOverflow: false,
                                  targetAnchor: AlignmentDirectional(0.0, 0.0)
                                      .resolve(Directionality.of(context)),
                                  followerAnchor: AlignmentDirectional(0.0, 0.0)
                                      .resolve(Directionality.of(context)),
                                  builder: (dialogContext) {
                                    return Material(
                                      color: Colors.transparent,
                                      child: Container(
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.5,
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.6,
                                        child: PartySizeEditingSupabaseWidget(
                                          uID: widget.entryEditing!,
                                        ),
                                      ),
                                    );
                                  },
                                ).then((value) => setState(() {}));
                              },
                              text: FFLocalizations.of(context).getText(
                                'rfikcnqp' /* Party Size */,
                              ),
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 5.0, 0.0),
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
                          Builder(
                            builder: (context) => FFButtonWidget(
                              onPressed: () async {
                                await showAlignedDialog(
                                  context: context,
                                  isGlobal: true,
                                  avoidOverflow: false,
                                  targetAnchor: AlignmentDirectional(0.0, 0.0)
                                      .resolve(Directionality.of(context)),
                                  followerAnchor: AlignmentDirectional(0.0, 0.0)
                                      .resolve(Directionality.of(context)),
                                  builder: (dialogContext) {
                                    return Material(
                                      color: Colors.transparent,
                                      child: Container(
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.5,
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.6,
                                        child: CategoryEditingSupabaseWidget(
                                          uID: widget.entryEditing!,
                                        ),
                                      ),
                                    );
                                  },
                                ).then((value) => setState(() {}));
                              },
                              text: FFLocalizations.of(context).getText(
                                'ugax97av' /* Category */,
                              ),
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 5.0, 0.0),
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
                        ].divide(SizedBox(width: 15.0)),
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
