import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'guest_details_page_model.dart';
export 'guest_details_page_model.dart';

class GuestDetailsPageWidget extends StatefulWidget {
  const GuestDetailsPageWidget({
    Key? key,
    required this.guestId,
  }) : super(key: key);

  final int? guestId;

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

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() => _model.requestCompleter = null);
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return FutureBuilder<List<GuestEntriesRow>>(
      future: (_model.requestCompleter ??= Completer<List<GuestEntriesRow>>()
            ..complete(GuestEntriesTable().querySingleRow(
              queryFn: (q) => q.eq(
                'id',
                widget.guestId,
              ),
            )))
          .future,
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Color(0xFF011D1A),
                  ),
                ),
              ),
            ),
          );
        }
        List<GuestEntriesRow> guestDetailsPageGuestEntriesRowList =
            snapshot.data!;
        final guestDetailsPageGuestEntriesRow =
            guestDetailsPageGuestEntriesRowList.isNotEmpty
                ? guestDetailsPageGuestEntriesRowList.first
                : null;
        return Title(
            title: 'Chops Restaurant',
            color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
            child: GestureDetector(
              onTap: () => _model.unfocusNode.canRequestFocus
                  ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                  : FocusScope.of(context).unfocus(),
              child: Scaffold(
                key: scaffoldKey,
                body: SafeArea(
                  top: true,
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/bg-waiting-2.png',
                            width: double.infinity,
                            height: 932.0,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.00, -0.03),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 120.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 25.0, 0.0, 8.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'cf4ft497' /* Sharq, Kuwait City */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Sweet Sans Pro',
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ),
                              SizedBox(
                                width: 300.0,
                                child: Divider(
                                  thickness: 1.0,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'uvu0i55o' /* Waiting Time */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        fontFamily: 'Sweet Sans Pro',
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 18.0, 0.0, 8.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    setState(
                                        () => _model.requestCompleter = null);
                                  },
                                  child: Text(
                                    functions
                                        .calculateRemainingTime(
                                            guestDetailsPageGuestEntriesRow!
                                                .createdAt,
                                            guestDetailsPageGuestEntriesRow!
                                                .waitingTime!)
                                        .toString(),
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          fontFamily: 'Sweet Sans Pro',
                                          fontSize: 28.0,
                                          fontWeight: FontWeight.bold,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 300.0,
                                child: Divider(
                                  thickness: 1.0,
                                  color: Colors.white,
                                ),
                              ),
                              if (responsiveVisibility(
                                context: context,
                                tablet: false,
                                tabletLandscape: false,
                                desktop: false,
                              ))
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 0.0, 8.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 3.0, 0.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'oxff2chf' /* Name:  */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Sweet Sans Pro',
                                                          letterSpacing: 1.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 3.0, 0.0, 0.0),
                                                  child: RichText(
                                                    textScaleFactor:
                                                        MediaQuery.of(context)
                                                            .textScaleFactor,
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text:
                                                              guestDetailsPageGuestEntriesRow!
                                                                  .name!,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Sweet Sans Pro',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                        )
                                                      ],
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                'Sweet Sans Pro',
                                                            letterSpacing: 1.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                    ),
                                                    maxLines: 3,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 8.0),
                                            child: RichText(
                                              textScaleFactor:
                                                  MediaQuery.of(context)
                                                      .textScaleFactor,
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      'c9se4onw' /* Mobile:  */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Sweet Sans Pro',
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        valueOrDefault<String>(
                                                      guestDetailsPageGuestEntriesRow
                                                          ?.onlyMobile,
                                                      '99413321',
                                                    ),
                                                    style: TextStyle(
                                                      fontFamily:
                                                          'Sweet Sans Pro',
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  )
                                                ],
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Sweet Sans Pro',
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 8.0),
                                            child: RichText(
                                              textScaleFactor:
                                                  MediaQuery.of(context)
                                                      .textScaleFactor,
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      'g4g6d6w3' /* Party Size:  */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Sweet Sans Pro',
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        guestDetailsPageGuestEntriesRow!
                                                            .partySize!,
                                                    style: TextStyle(
                                                      fontFamily:
                                                          'Sweet Sans Pro',
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  )
                                                ],
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Sweet Sans Pro',
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 8.0),
                                            child: RichText(
                                              textScaleFactor:
                                                  MediaQuery.of(context)
                                                      .textScaleFactor,
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      '3lnzvhz6' /* Time:  */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Sweet Sans Pro',
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                  TextSpan(
                                                    text: dateTimeFormat(
                                                      'jm',
                                                      guestDetailsPageGuestEntriesRow!
                                                          .createdAt,
                                                      locale:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                    ),
                                                    style: TextStyle(
                                                      fontFamily:
                                                          'Sweet Sans Pro',
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  )
                                                ],
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Sweet Sans Pro',
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 8.0),
                                            child: RichText(
                                              textScaleFactor:
                                                  MediaQuery.of(context)
                                                      .textScaleFactor,
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      'vdd0zsqt' /* Date:  */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Sweet Sans Pro',
                                                          letterSpacing: 1.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                  TextSpan(
                                                    text: dateTimeFormat(
                                                      'MMM dd',
                                                      guestDetailsPageGuestEntriesRow!
                                                          .createdAt,
                                                      locale:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                    ),
                                                    style: TextStyle(
                                                      fontFamily:
                                                          'Sweet Sans Pro',
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  )
                                                ],
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Sweet Sans Pro',
                                                          letterSpacing: 1.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 20.0)),
                                ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.02, -0.55),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 20.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/Asset_1.png',
                              width: 200.0,
                              height: 100.0,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ));
      },
    );
  }
}
