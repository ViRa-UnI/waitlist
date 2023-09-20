import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'guest_details_page_model.dart';
export 'guest_details_page_model.dart';

class GuestDetailsPageWidget extends StatefulWidget {
  const GuestDetailsPageWidget({Key? key}) : super(key: key);

  @override
  _GuestDetailsPageWidgetState createState() => _GuestDetailsPageWidgetState();
}

class _GuestDetailsPageWidgetState extends State<GuestDetailsPageWidget> {
  late GuestDetailsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GuestDetailsPageModel());

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
        title: 'GuestDetailsPage',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/waitlist-bg-web-scaled.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.00, 0.00),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 120.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Sharq, Kuwait City',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Montserrat',
                                  color: FlutterFlowTheme.of(context).info,
                                ),
                          ),
                          SizedBox(
                            width: 300.0,
                            child: Divider(
                              thickness: 1.0,
                              color: Color(0xFF8C7C5B),
                            ),
                          ),
                          Text(
                            'Waiting Time',
                            style: FlutterFlowTheme.of(context).headlineMedium,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: StreamBuilder<List<GuestEntryDetailsRecord>>(
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
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          Color(0xFF011D1A),
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<GuestEntryDetailsRecord>
                                    textGuestEntryDetailsRecordList =
                                    snapshot.data!;
                                // Return an empty Container when the item does not exist.
                                if (snapshot.data!.isEmpty) {
                                  return Container();
                                }
                                final textGuestEntryDetailsRecord =
                                    textGuestEntryDetailsRecordList.isNotEmpty
                                        ? textGuestEntryDetailsRecordList.first
                                        : null;
                                return Text(
                                  valueOrDefault<String>(
                                    textGuestEntryDetailsRecord?.waitingTime,
                                    'WT',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium,
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            width: 300.0,
                            child: Divider(
                              thickness: 1.0,
                              color: Color(0xFF8C7C5B),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                60.0, 0.0, 60.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    StreamBuilder<
                                        List<GuestEntryDetailsRecord>>(
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
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  Color(0xFF011D1A),
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<GuestEntryDetailsRecord>
                                            textGuestEntryDetailsRecordList =
                                            snapshot.data!;
                                        // Return an empty Container when the item does not exist.
                                        if (snapshot.data!.isEmpty) {
                                          return Container();
                                        }
                                        final textGuestEntryDetailsRecord =
                                            textGuestEntryDetailsRecordList
                                                    .isNotEmpty
                                                ? textGuestEntryDetailsRecordList
                                                    .first
                                                : null;
                                        return Text(
                                          textGuestEntryDetailsRecord!.name,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                              ),
                                        );
                                      },
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: StreamBuilder<
                                          List<GuestEntryDetailsRecord>>(
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
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    Color(0xFF011D1A),
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          List<GuestEntryDetailsRecord>
                                              textGuestEntryDetailsRecordList =
                                              snapshot.data!;
                                          // Return an empty Container when the item does not exist.
                                          if (snapshot.data!.isEmpty) {
                                            return Container();
                                          }
                                          final textGuestEntryDetailsRecord =
                                              textGuestEntryDetailsRecordList
                                                      .isNotEmpty
                                                  ? textGuestEntryDetailsRecordList
                                                      .first
                                                  : null;
                                          return Text(
                                            textGuestEntryDetailsRecord!
                                                .mobileNum,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .info,
                                                ),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Entry date',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: Text(
                                        'Entry Time',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: Text(
                                        'Party Size',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 25.0, 0.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/WhatsApp_Image_2023-08-21_at_10.46.20.jpg',
                                height: 200.0,
                                fit: BoxFit.fill,
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
        ));
  }
}