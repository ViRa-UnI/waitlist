import '/backend/supabase/supabase.dart';
import '/components/table_components/entry_details_editing/entry_details_editing_widget.dart';
import '/components/table_components/not_visited_comp/not_visited_comp_widget.dart';
import '/components/table_components/visited_comp/visited_comp_widget.dart';
import '/components/time_calculation_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'test_page_model.dart';
export 'test_page_model.dart';

class TestPageWidget extends StatefulWidget {
  const TestPageWidget({Key? key}) : super(key: key);

  @override
  _TestPageWidgetState createState() => _TestPageWidgetState();
}

class _TestPageWidgetState extends State<TestPageWidget> {
  late TestPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TestPageModel());

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

    return Title(
        title: 'TestPage',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primary,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: false,
              title: Text(
                FFLocalizations.of(context).getText(
                  'ugp3lxmp' /* Test Page */,
                ),
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Open Sans',
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
              ),
              actions: [],
              centerTitle: false,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: FutureBuilder<List<GuestEntriesRow>>(
                      future: (_model.requestCompleter ??=
                              Completer<List<GuestEntriesRow>>()
                                ..complete(GuestEntriesTable().queryRows(
                                  queryFn: (q) =>
                                      q.order('created_at', ascending: true),
                                )))
                          .future,
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 40.0,
                              height: 40.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        List<GuestEntriesRow> dataTableGuestEntriesRowList =
                            snapshot.data!;
                        return InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            setState(() => _model.requestCompleter = null);
                          },
                          child: DataTable2(
                            columns: [
                              DataColumn2(
                                label: DefaultTextStyle.merge(
                                  softWrap: true,
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'qbnncp0j' /* Name */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .override(
                                          fontFamily: 'Montserrat',
                                          fontSize: 15.0,
                                          letterSpacing: 1.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                                fixedWidth:
                                    MediaQuery.sizeOf(context).width * 0.11,
                              ),
                              DataColumn2(
                                label: DefaultTextStyle.merge(
                                  softWrap: true,
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'm7zpbgtl' /* Type */,
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).labelLarge,
                                  ),
                                ),
                                fixedWidth:
                                    MediaQuery.sizeOf(context).width * 0.06,
                              ),
                              DataColumn2(
                                label: DefaultTextStyle.merge(
                                  softWrap: true,
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '87fpvln6' /* Mobile */,
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).labelLarge,
                                  ),
                                ),
                                fixedWidth:
                                    MediaQuery.sizeOf(context).width * 0.09,
                              ),
                              DataColumn2(
                                label: DefaultTextStyle.merge(
                                  softWrap: true,
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'mnq4chdw' /* Category */,
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).labelLarge,
                                  ),
                                ),
                                fixedWidth:
                                    MediaQuery.sizeOf(context).width * 0.09,
                              ),
                              DataColumn2(
                                label: DefaultTextStyle.merge(
                                  softWrap: true,
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '61tvlvkj' /* Seating Area */,
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).labelLarge,
                                  ),
                                ),
                                fixedWidth:
                                    MediaQuery.sizeOf(context).width * 0.09,
                              ),
                              DataColumn2(
                                label: DefaultTextStyle.merge(
                                  softWrap: true,
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'og4d29k6' /* Table */,
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).labelLarge,
                                  ),
                                ),
                                fixedWidth:
                                    MediaQuery.sizeOf(context).width * 0.06,
                              ),
                              DataColumn2(
                                label: DefaultTextStyle.merge(
                                  softWrap: true,
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '8bef1s4y' /* WT */,
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).labelLarge,
                                  ),
                                ),
                                fixedWidth:
                                    MediaQuery.sizeOf(context).width * 0.05,
                              ),
                              DataColumn2(
                                label: DefaultTextStyle.merge(
                                  softWrap: true,
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'z3azq0mh' /* RT */,
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).labelLarge,
                                  ),
                                ),
                                fixedWidth:
                                    MediaQuery.sizeOf(context).width * 0.05,
                              ),
                              DataColumn2(
                                label: DefaultTextStyle.merge(
                                  softWrap: true,
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'ae3ql4ns' /* PS */,
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).labelLarge,
                                  ),
                                ),
                                fixedWidth:
                                    MediaQuery.sizeOf(context).width * 0.05,
                              ),
                              DataColumn2(
                                label: DefaultTextStyle.merge(
                                  softWrap: true,
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'bkfc1s72' /* Entry Time */,
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).labelLarge,
                                  ),
                                ),
                                fixedWidth:
                                    MediaQuery.sizeOf(context).width * 0.08,
                              ),
                              DataColumn2(
                                label: DefaultTextStyle.merge(
                                  softWrap: true,
                                  child: Align(
                                    alignment: AlignmentDirectional(0.00, 0.00),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'aphwv7wa' /* Actions */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .labelLarge,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                            rows: dataTableGuestEntriesRowList
                                .mapIndexed((dataTableIndex,
                                        dataTableGuestEntriesRow) =>
                                    [
                                      Text(
                                        valueOrDefault<String>(
                                          dataTableGuestEntriesRow.name,
                                          'Null',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Montserrat',
                                              letterSpacing: 0.3,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      Text(
                                        dataTableGuestEntriesRow.type!,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              letterSpacing: 0.3,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          dataTableGuestEntriesRow.onlyMobile,
                                          'Null',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              letterSpacing: 0.3,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      Text(
                                        dataTableGuestEntriesRow.category!,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              letterSpacing: 0.3,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      Text(
                                        dataTableGuestEntriesRow.seatingArea!,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              letterSpacing: 0.3,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          dataTableGuestEntriesRow.tableField,
                                          'NA',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              letterSpacing: 0.3,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      Text(
                                        dataTableGuestEntriesRow.waitingTime!,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              letterSpacing: 0.3,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      TimeCalculationWidget(
                                        key: Key(
                                            'Keyl40_${dataTableIndex}_of_${dataTableGuestEntriesRowList.length}'),
                                        parameter1:
                                            dataTableGuestEntriesRow.createdAt,
                                        parameter2: dataTableGuestEntriesRow
                                            .waitingTime,
                                      ),
                                      Text(
                                        dataTableGuestEntriesRow.partySize!,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              letterSpacing: 0.3,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      Text(
                                        dateTimeFormat(
                                          'jms',
                                          dataTableGuestEntriesRow.createdAt,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              letterSpacing: 0.3,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Builder(
                                            builder: (context) =>
                                                FFButtonWidget(
                                              onPressed: () async {
                                                await showAlignedDialog(
                                                  context: context,
                                                  isGlobal: true,
                                                  avoidOverflow: false,
                                                  targetAnchor:
                                                      AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  followerAnchor:
                                                      AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  builder: (dialogContext) {
                                                    return Material(
                                                      color: Colors.transparent,
                                                      child: GestureDetector(
                                                        onTap: () => _model
                                                                .unfocusNode
                                                                .canRequestFocus
                                                            ? FocusScope.of(
                                                                    context)
                                                                .requestFocus(_model
                                                                    .unfocusNode)
                                                            : FocusScope.of(
                                                                    context)
                                                                .unfocus(),
                                                        child: Container(
                                                          height:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .height *
                                                                  0.6,
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.7,
                                                          child:
                                                              VisitedCompWidget(
                                                            rowDetails:
                                                                dataTableGuestEntriesRow,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then(
                                                    (value) => setState(() {}));
                                              },
                                              text: FFLocalizations.of(context)
                                                  .getText(
                                                's9ue60qv' /* Visited */,
                                              ),
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 5.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          color: Colors.white,
                                                        ),
                                                elevation: 3.0,
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ),
                                          Builder(
                                            builder: (context) =>
                                                FFButtonWidget(
                                              onPressed: () async {
                                                await showAlignedDialog(
                                                  context: context,
                                                  isGlobal: true,
                                                  avoidOverflow: false,
                                                  targetAnchor:
                                                      AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  followerAnchor:
                                                      AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  builder: (dialogContext) {
                                                    return Material(
                                                      color: Colors.transparent,
                                                      child: GestureDetector(
                                                        onTap: () => _model
                                                                .unfocusNode
                                                                .canRequestFocus
                                                            ? FocusScope.of(
                                                                    context)
                                                                .requestFocus(_model
                                                                    .unfocusNode)
                                                            : FocusScope.of(
                                                                    context)
                                                                .unfocus(),
                                                        child: Container(
                                                          height:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .height *
                                                                  0.6,
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.7,
                                                          child:
                                                              NotVisitedCompWidget(
                                                            rowDetailsNotVisited:
                                                                dataTableGuestEntriesRow,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then(
                                                    (value) => setState(() {}));
                                              },
                                              text: FFLocalizations.of(context)
                                                  .getText(
                                                '3dqfyf46' /* Not Visited */,
                                              ),
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 5.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          color: Colors.white,
                                                        ),
                                                elevation: 3.0,
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ),
                                          Builder(
                                            builder: (context) =>
                                                FFButtonWidget(
                                              onPressed: () async {
                                                await showAlignedDialog(
                                                  context: context,
                                                  isGlobal: true,
                                                  avoidOverflow: false,
                                                  targetAnchor:
                                                      AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  followerAnchor:
                                                      AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  builder: (dialogContext) {
                                                    return Material(
                                                      color: Colors.transparent,
                                                      child: GestureDetector(
                                                        onTap: () => _model
                                                                .unfocusNode
                                                                .canRequestFocus
                                                            ? FocusScope.of(
                                                                    context)
                                                                .requestFocus(_model
                                                                    .unfocusNode)
                                                            : FocusScope.of(
                                                                    context)
                                                                .unfocus(),
                                                        child: Container(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.5,
                                                          child:
                                                              EntryDetailsEditingWidget(
                                                            entryEditing:
                                                                dataTableGuestEntriesRow,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then(
                                                    (value) => setState(() {}));
                                              },
                                              text: FFLocalizations.of(context)
                                                  .getText(
                                                'nq625wrq' /* Edit */,
                                              ),
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          color: Colors.white,
                                                        ),
                                                elevation: 3.0,
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ),
                                        ].divide(SizedBox(width: 8.0)),
                                      ),
                                    ].map((c) => DataCell(c)).toList())
                                .map((e) => DataRow(cells: e))
                                .toList(),
                            headingRowColor: MaterialStateProperty.all(
                              FlutterFlowTheme.of(context).primary,
                            ),
                            headingRowHeight: 58.0,
                            dataRowColor: MaterialStateProperty.all(
                              FlutterFlowTheme.of(context).secondary,
                            ),
                            dataRowHeight: 56.0,
                            border: TableBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            dividerThickness: 2.0,
                            columnSpacing: 5.0,
                            showBottomBorder: true,
                            minWidth: 49.0,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
