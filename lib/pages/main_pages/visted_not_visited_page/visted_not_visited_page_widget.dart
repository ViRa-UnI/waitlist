import '/auth/firebase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'visted_not_visited_page_model.dart';
export 'visted_not_visited_page_model.dart';

class VistedNotVisitedPageWidget extends StatefulWidget {
  const VistedNotVisitedPageWidget({Key? key}) : super(key: key);

  @override
  _VistedNotVisitedPageWidgetState createState() =>
      _VistedNotVisitedPageWidgetState();
}

class _VistedNotVisitedPageWidgetState extends State<VistedNotVisitedPageWidget>
    with TickerProviderStateMixin {
  late VistedNotVisitedPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VistedNotVisitedPageModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
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
        title: 'Visited & Not Visited Entries',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
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
                    'assets/images/chops-png-03.png',
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
                FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('AppMenuPage');
                  },
                  text: 'Menu',
                  icon: Icon(
                    Icons.menu_rounded,
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
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment(0.0, 0),
                          child: FlutterFlowButtonTabBar(
                            useToggleButtonStyle: false,
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                ),
                            unselectedLabelStyle: TextStyle(),
                            labelColor: FlutterFlowTheme.of(context).info,
                            unselectedLabelColor:
                                FlutterFlowTheme.of(context).primaryText,
                            backgroundColor:
                                FlutterFlowTheme.of(context).primary,
                            unselectedBackgroundColor:
                                FlutterFlowTheme.of(context).alternate,
                            borderColor: FlutterFlowTheme.of(context).primary,
                            unselectedBorderColor:
                                FlutterFlowTheme.of(context).alternate,
                            borderWidth: 2.0,
                            borderRadius: 8.0,
                            elevation: 0.0,
                            buttonMargin: EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 8.0, 0.0),
                            padding: EdgeInsetsDirectional.fromSTEB(
                                4.0, 4.0, 4.0, 4.0),
                            tabs: [
                              Tab(
                                text: 'Not Visited',
                                icon: Icon(
                                  Icons.no_meals,
                                ),
                              ),
                              Tab(
                                text: 'Visited List',
                                icon: Icon(
                                  Icons.restaurant,
                                ),
                              ),
                            ],
                            controller: _model.tabBarController,
                          ),
                        ),
                        Expanded(
                          child: TabBarView(
                            controller: _model.tabBarController,
                            children: [
                              Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 5.0, 0.0, 5.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          FFButtonWidget(
                                            onPressed: () {
                                              print('Button pressed ...');
                                            },
                                            text: 'Category Filter',
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
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
                                          FFButtonWidget(
                                            onPressed: () {
                                              print('Button pressed ...');
                                            },
                                            text: 'Type Filter',
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
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
                                          FFButtonWidget(
                                            onPressed: () {
                                              print('Button pressed ...');
                                            },
                                            text: 'Sort List',
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
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
                                          if (responsiveVisibility(
                                            context: context,
                                            phone: false,
                                            tablet: false,
                                            tabletLandscape: false,
                                            desktop: false,
                                          ))
                                            FFButtonWidget(
                                              onPressed: () {
                                                print('Button pressed ...');
                                              },
                                              text: 'Sort WT',
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
                                        ],
                                      ),
                                    ),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 5.0, 5.0, 0.0),
                                        child: FutureBuilder<
                                            List<GuestEntriesNotVisitedRow>>(
                                          future: GuestEntriesNotVisitedTable()
                                              .queryRows(
                                            queryFn: (q) => q,
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
                                            List<GuestEntriesNotVisitedRow>
                                                dataTableGuestEntriesNotVisitedRowList =
                                                snapshot.data!;
                                            return DataTable2(
                                              columns: [
                                                DataColumn2(
                                                  label: DefaultTextStyle.merge(
                                                    softWrap: true,
                                                    child: Text(
                                                      'Name',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge,
                                                    ),
                                                  ),
                                                  fixedWidth:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.1,
                                                ),
                                                DataColumn2(
                                                  label: DefaultTextStyle.merge(
                                                    softWrap: true,
                                                    child: Text(
                                                      'Type',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge,
                                                    ),
                                                  ),
                                                  fixedWidth:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                ),
                                                DataColumn2(
                                                  label: DefaultTextStyle.merge(
                                                    softWrap: true,
                                                    child: Text(
                                                      'Mobile',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge,
                                                    ),
                                                  ),
                                                  fixedWidth:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.12,
                                                ),
                                                DataColumn2(
                                                  label: DefaultTextStyle.merge(
                                                    softWrap: true,
                                                    child: Text(
                                                      'Category',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge,
                                                    ),
                                                  ),
                                                  fixedWidth:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.13,
                                                ),
                                                DataColumn2(
                                                  label: DefaultTextStyle.merge(
                                                    softWrap: true,
                                                    child: Text(
                                                      'Seating Area',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge,
                                                    ),
                                                  ),
                                                  fixedWidth:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.11,
                                                ),
                                                DataColumn2(
                                                  label: DefaultTextStyle.merge(
                                                    softWrap: true,
                                                    child: SelectionArea(
                                                        child: Text(
                                                      'WT',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge,
                                                    )),
                                                  ),
                                                  fixedWidth:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.08,
                                                ),
                                                DataColumn2(
                                                  label: DefaultTextStyle.merge(
                                                    softWrap: true,
                                                    child: Text(
                                                      'Reason',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge,
                                                    ),
                                                  ),
                                                  fixedWidth:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.08,
                                                ),
                                                DataColumn2(
                                                  label: DefaultTextStyle.merge(
                                                    softWrap: true,
                                                    child: Text(
                                                      'PS',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge,
                                                    ),
                                                  ),
                                                  fixedWidth:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                ),
                                                DataColumn2(
                                                  label: DefaultTextStyle.merge(
                                                    softWrap: true,
                                                    child: Text(
                                                      'Message Content',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge,
                                                    ),
                                                  ),
                                                  fixedWidth:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.12,
                                                ),
                                                DataColumn2(
                                                  label: DefaultTextStyle.merge(
                                                    softWrap: true,
                                                    child: Text(
                                                      'Actions',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge,
                                                    ),
                                                  ),
                                                  fixedWidth:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.09,
                                                ),
                                              ],
                                              rows:
                                                  dataTableGuestEntriesNotVisitedRowList
                                                      .mapIndexed((dataTableIndex,
                                                              dataTableGuestEntriesNotVisitedRow) =>
                                                          [
                                                            Text(
                                                              dataTableGuestEntriesNotVisitedRow
                                                                  .name!,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge,
                                                            ),
                                                            Text(
                                                              dataTableGuestEntriesNotVisitedRow
                                                                  .type!,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge,
                                                            ),
                                                            Text(
                                                              dataTableGuestEntriesNotVisitedRow
                                                                  .mobile!,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge,
                                                            ),
                                                            Text(
                                                              dataTableGuestEntriesNotVisitedRow
                                                                  .category!,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge,
                                                            ),
                                                            InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                setState(() {
                                                                  FFAppState()
                                                                          .editingRowID =
                                                                      dataTableGuestEntriesNotVisitedRow
                                                                          .id
                                                                          .toString();
                                                                });
                                                              },
                                                              child: Text(
                                                                dataTableGuestEntriesNotVisitedRow
                                                                    .seatingArea!,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge,
                                                              ),
                                                            ),
                                                            Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                dataTableGuestEntriesNotVisitedRow
                                                                    .waitingTime,
                                                                'waittime',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge,
                                                            ),
                                                            Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                dataTableGuestEntriesNotVisitedRow
                                                                    .vistedNotes,
                                                                'waittime',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge,
                                                            ),
                                                            Text(
                                                              dataTableGuestEntriesNotVisitedRow
                                                                  .partySize!,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge,
                                                            ),
                                                            Text(
                                                              dataTableGuestEntriesNotVisitedRow
                                                                  .messageContent!,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge,
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                if (responsiveVisibility(
                                                                  context:
                                                                      context,
                                                                  phone: false,
                                                                  tablet: false,
                                                                  tabletLandscape:
                                                                      false,
                                                                  desktop:
                                                                      false,
                                                                ))
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            5.0,
                                                                            0.0),
                                                                    child:
                                                                        InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onTap:
                                                                          () async {},
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .timer,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .info,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          5.0,
                                                                          0.0),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      await GuestEntriesTable()
                                                                          .insert({
                                                                        'id': dataTableGuestEntriesNotVisitedRow
                                                                            .id,
                                                                        'created_at':
                                                                            supaSerialize<DateTime>(getCurrentTimestamp),
                                                                        'name':
                                                                            dataTableGuestEntriesNotVisitedRow.name,
                                                                        'type':
                                                                            dataTableGuestEntriesNotVisitedRow.type,
                                                                        'mobile':
                                                                            dataTableGuestEntriesNotVisitedRow.mobile,
                                                                        'age': dataTableGuestEntriesNotVisitedRow
                                                                            .age,
                                                                        'category':
                                                                            dataTableGuestEntriesNotVisitedRow.category,
                                                                        'seatingArea':
                                                                            dataTableGuestEntriesNotVisitedRow.seatingArea,
                                                                        'waitingTime':
                                                                            dataTableGuestEntriesNotVisitedRow.waitingTime,
                                                                        'partySize':
                                                                            dataTableGuestEntriesNotVisitedRow.partySize,
                                                                        'messageContent':
                                                                            dataTableGuestEntriesNotVisitedRow.messageContent,
                                                                      });
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .person_add,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .info,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ]
                                                              .map((c) =>
                                                                  DataCell(c))
                                                              .toList())
                                                      .map((e) =>
                                                          DataRow(cells: e))
                                                      .toList(),
                                              headingRowColor:
                                                  MaterialStateProperty.all(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                              headingRowHeight: 58.0,
                                              dataRowColor:
                                                  MaterialStateProperty.all(
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                              ),
                                              dataRowHeight: 56.0,
                                              border: TableBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              dividerThickness: 2.0,
                                              columnSpacing: 5.0,
                                              showBottomBorder: true,
                                              minWidth: 49.0,
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 5.0, 0.0, 5.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          FFButtonWidget(
                                            onPressed: () {
                                              print('Button pressed ...');
                                            },
                                            text: 'Category Filter',
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
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
                                          FFButtonWidget(
                                            onPressed: () {
                                              print('Button pressed ...');
                                            },
                                            text: 'Type Filter',
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
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
                                          FFButtonWidget(
                                            onPressed: () {
                                              print('Button pressed ...');
                                            },
                                            text: 'Sort List',
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
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
                                          if (responsiveVisibility(
                                            context: context,
                                            phone: false,
                                            tablet: false,
                                            tabletLandscape: false,
                                            desktop: false,
                                          ))
                                            FFButtonWidget(
                                              onPressed: () {
                                                print('Button pressed ...');
                                              },
                                              text: 'Sort WT',
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
                                        ],
                                      ),
                                    ),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 5.0, 5.0, 0.0),
                                        child: FutureBuilder<
                                            List<GuestEntriesVisitedRow>>(
                                          future: GuestEntriesVisitedTable()
                                              .queryRows(
                                            queryFn: (q) => q,
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
                                            List<GuestEntriesVisitedRow>
                                                dataTableGuestEntriesVisitedRowList =
                                                snapshot.data!;
                                            return DataTable2(
                                              columns: [
                                                DataColumn2(
                                                  label: DefaultTextStyle.merge(
                                                    softWrap: true,
                                                    child: Text(
                                                      'Name',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge,
                                                    ),
                                                  ),
                                                  fixedWidth:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.1,
                                                ),
                                                DataColumn2(
                                                  label: DefaultTextStyle.merge(
                                                    softWrap: true,
                                                    child: Text(
                                                      'Type',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge,
                                                    ),
                                                  ),
                                                  fixedWidth:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                ),
                                                DataColumn2(
                                                  label: DefaultTextStyle.merge(
                                                    softWrap: true,
                                                    child: Text(
                                                      'Mobile',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge,
                                                    ),
                                                  ),
                                                  fixedWidth:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.12,
                                                ),
                                                DataColumn2(
                                                  label: DefaultTextStyle.merge(
                                                    softWrap: true,
                                                    child: Text(
                                                      'Category',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge,
                                                    ),
                                                  ),
                                                  fixedWidth:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.13,
                                                ),
                                                DataColumn2(
                                                  label: DefaultTextStyle.merge(
                                                    softWrap: true,
                                                    child: Text(
                                                      'Seating Area',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge,
                                                    ),
                                                  ),
                                                  fixedWidth:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.11,
                                                ),
                                                DataColumn2(
                                                  label: DefaultTextStyle.merge(
                                                    softWrap: true,
                                                    child: SelectionArea(
                                                        child: Text(
                                                      'WT',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge,
                                                    )),
                                                  ),
                                                  fixedWidth:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.08,
                                                ),
                                                DataColumn2(
                                                  label: DefaultTextStyle.merge(
                                                    softWrap: true,
                                                    child: Text(
                                                      'Reason',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge,
                                                    ),
                                                  ),
                                                  fixedWidth:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.08,
                                                ),
                                                DataColumn2(
                                                  label: DefaultTextStyle.merge(
                                                    softWrap: true,
                                                    child: Text(
                                                      'PS',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge,
                                                    ),
                                                  ),
                                                  fixedWidth:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                ),
                                                DataColumn2(
                                                  label: DefaultTextStyle.merge(
                                                    softWrap: true,
                                                    child: Text(
                                                      'Message Content',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge,
                                                    ),
                                                  ),
                                                  fixedWidth:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.12,
                                                ),
                                                DataColumn2(
                                                  label: DefaultTextStyle.merge(
                                                    softWrap: true,
                                                    child: Text(
                                                      'Actions',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge,
                                                    ),
                                                  ),
                                                  fixedWidth:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.09,
                                                ),
                                              ],
                                              rows:
                                                  dataTableGuestEntriesVisitedRowList
                                                      .mapIndexed((dataTableIndex,
                                                              dataTableGuestEntriesVisitedRow) =>
                                                          [
                                                            Text(
                                                              dataTableGuestEntriesVisitedRow
                                                                  .name!,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge,
                                                            ),
                                                            Text(
                                                              dataTableGuestEntriesVisitedRow
                                                                  .type!,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge,
                                                            ),
                                                            Text(
                                                              dataTableGuestEntriesVisitedRow
                                                                  .mobile!,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge,
                                                            ),
                                                            Text(
                                                              dataTableGuestEntriesVisitedRow
                                                                  .category!,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge,
                                                            ),
                                                            InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                setState(() {
                                                                  FFAppState()
                                                                          .editingRowID =
                                                                      dataTableGuestEntriesVisitedRow
                                                                          .id
                                                                          .toString();
                                                                });
                                                              },
                                                              child: Text(
                                                                dataTableGuestEntriesVisitedRow
                                                                    .seatingArea!,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge,
                                                              ),
                                                            ),
                                                            Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                dataTableGuestEntriesVisitedRow
                                                                    .waitingTime,
                                                                'waittime',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge,
                                                            ),
                                                            Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                dataTableGuestEntriesVisitedRow
                                                                    .vistedNotes,
                                                                'waittime',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge,
                                                            ),
                                                            Text(
                                                              dataTableGuestEntriesVisitedRow
                                                                  .partySize!,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge,
                                                            ),
                                                            Text(
                                                              dataTableGuestEntriesVisitedRow
                                                                  .messageContent!,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge,
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                if (responsiveVisibility(
                                                                  context:
                                                                      context,
                                                                  phone: false,
                                                                  tablet: false,
                                                                  tabletLandscape:
                                                                      false,
                                                                  desktop:
                                                                      false,
                                                                ))
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            5.0,
                                                                            0.0),
                                                                    child:
                                                                        InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onTap:
                                                                          () async {},
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .timer,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .info,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          5.0,
                                                                          0.0),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      await GuestEntriesTable()
                                                                          .insert({
                                                                        'id': dataTableGuestEntriesVisitedRow
                                                                            .id,
                                                                        'created_at':
                                                                            supaSerialize<DateTime>(getCurrentTimestamp),
                                                                        'name':
                                                                            dataTableGuestEntriesVisitedRow.name,
                                                                        'type':
                                                                            dataTableGuestEntriesVisitedRow.type,
                                                                        'mobile':
                                                                            dataTableGuestEntriesVisitedRow.mobile,
                                                                        'age': dataTableGuestEntriesVisitedRow
                                                                            .age,
                                                                        'category':
                                                                            dataTableGuestEntriesVisitedRow.category,
                                                                        'seatingArea':
                                                                            dataTableGuestEntriesVisitedRow.seatingArea,
                                                                        'waitingTime':
                                                                            dataTableGuestEntriesVisitedRow.waitingTime,
                                                                        'partySize':
                                                                            dataTableGuestEntriesVisitedRow.partySize,
                                                                        'messageContent':
                                                                            dataTableGuestEntriesVisitedRow.messageContent,
                                                                      });
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .person_add,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .info,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ]
                                                              .map((c) =>
                                                                  DataCell(c))
                                                              .toList())
                                                      .map((e) =>
                                                          DataRow(cells: e))
                                                      .toList(),
                                              headingRowColor:
                                                  MaterialStateProperty.all(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                              headingRowHeight: 58.0,
                                              dataRowColor:
                                                  MaterialStateProperty.all(
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                              ),
                                              dataRowHeight: 56.0,
                                              border: TableBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              dividerThickness: 2.0,
                                              columnSpacing: 5.0,
                                              showBottomBorder: true,
                                              minWidth: 49.0,
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
