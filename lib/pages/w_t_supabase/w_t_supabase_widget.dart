import '/auth/firebase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/app_menu_icon/app_menu_icon_widget.dart';
import '/components/table_components/w_t_edit_comp_supabase/w_t_edit_comp_supabase_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'w_t_supabase_model.dart';
export 'w_t_supabase_model.dart';

class WTSupabaseWidget extends StatefulWidget {
  const WTSupabaseWidget({Key? key}) : super(key: key);

  @override
  _WTSupabaseWidgetState createState() => _WTSupabaseWidgetState();
}

class _WTSupabaseWidgetState extends State<WTSupabaseWidget> {
  late WTSupabaseModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WTSupabaseModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Title(
        title: 'Wait List Supabase',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondary,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: false,
              leading: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/title-png-white.png',
                    width: 300.0,
                    height: 200.0,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              title: Text(
                'Waiting List',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Open Sans',
                      color: Colors.white,
                      fontSize: 22.0,
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              actions: [
                wrapWithModel(
                  model: _model.appMenuIconModel,
                  updateCallback: () => setState(() {}),
                  child: AppMenuIconWidget(),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    GoRouter.of(context).prepareAuthEvent();
                    await authManager.signOut();
                    GoRouter.of(context).clearRedirectLocation();

                    context.goNamedAuth('HomePage', context.mounted);
                  },
                  text: 'Log Out',
                  icon: Icon(
                    Icons.login,
                    color: FlutterFlowTheme.of(context).info,
                    size: 15.0,
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
              ],
              centerTitle: true,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: Container(
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(),
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
                    List<GuestEntriesRow> columnGuestEntriesRowList =
                        snapshot.data!;
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
                            alignment: AlignmentDirectional(0.00, 0.00),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
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
                                FutureBuilder<List<GuestEntriesRow>>(
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
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              Color(0xFF011D1A),
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    List<GuestEntriesRow>
                                        remainingTimeGuestEntriesRowList =
                                        snapshot.data!;
                                    final remainingTimeGuestEntriesRow =
                                        remainingTimeGuestEntriesRowList
                                                .isNotEmpty
                                            ? remainingTimeGuestEntriesRowList
                                                .first
                                            : null;
                                    return Text(
                                      'RT',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w500,
                                          ),
                                    );
                                  },
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
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
                                                .resolve(
                                                    Directionality.of(context)),
                                            followerAnchor:
                                                AlignmentDirectional(0.0, 0.0)
                                                    .resolve(Directionality.of(
                                                        context)),
                                            builder: (dialogContext) {
                                              return Material(
                                                color: Colors.transparent,
                                                child: GestureDetector(
                                                  onTap: () => FocusScope.of(
                                                          context)
                                                      .requestFocus(
                                                          _model.unfocusNode),
                                                  child: Container(
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .height *
                                                        0.7,
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.5,
                                                    child:
                                                        WTEditCompSupabaseWidget(
                                                      uID:
                                                          columnGuestEntriesRow,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then((value) => setState(() {}));
                                        },
                                        child: Icon(
                                          Icons.timer,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(0.00, 0.00),
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
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(0.00, 0.00),
                                      child: Icon(
                                        Icons.no_accounts,
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        size: 24.0,
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 5.0)),
                                ),
                              ]
                                  .divide(SizedBox(width: 30.0))
                                  .addToStart(SizedBox(width: 30.0))
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
          ),
        ));
  }
}
