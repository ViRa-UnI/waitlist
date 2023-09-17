import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'wait_list_table_model.dart';
export 'wait_list_table_model.dart';

class WaitListTableWidget extends StatefulWidget {
  const WaitListTableWidget({
    Key? key,
    this.parameter1,
    this.parameter2,
    this.parameter3,
    this.parameter4,
    this.parameter5,
  }) : super(key: key);

  final String? parameter1;
  final String? parameter2;
  final String? parameter3;
  final String? parameter4;
  final String? parameter5;

  @override
  _WaitListTableWidgetState createState() => _WaitListTableWidgetState();
}

class _WaitListTableWidgetState extends State<WaitListTableWidget> {
  late WaitListTableModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WaitListTableModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<GuestEntryDetailsRecord>>(
      stream: queryGuestEntryDetailsRecord(
        limit: 15,
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
        List<GuestEntryDetailsRecord> dataTableGuestEntryDetailsRecordList =
            snapshot.data!;
        return DataTable2(
          columns: [
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Text(
                  'Name',
                  style: FlutterFlowTheme.of(context).labelLarge,
                ),
              ),
              fixedWidth: MediaQuery.sizeOf(context).width * 0.1,
            ),
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Text(
                  'Type',
                  style: FlutterFlowTheme.of(context).labelLarge,
                ),
              ),
              fixedWidth: MediaQuery.sizeOf(context).width * 0.07,
            ),
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Text(
                  'Mobile',
                  style: FlutterFlowTheme.of(context).labelLarge,
                ),
              ),
              fixedWidth: MediaQuery.sizeOf(context).width * 0.12,
            ),
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Text(
                  'Category',
                  style: FlutterFlowTheme.of(context).labelLarge,
                ),
              ),
              fixedWidth: MediaQuery.sizeOf(context).width * 0.13,
            ),
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Text(
                  'Seating Area',
                  style: FlutterFlowTheme.of(context).labelLarge,
                ),
              ),
              fixedWidth: MediaQuery.sizeOf(context).width * 0.11,
            ),
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: SelectionArea(
                    child: Text(
                  'WT',
                  style: FlutterFlowTheme.of(context).labelLarge,
                )),
              ),
              fixedWidth: MediaQuery.sizeOf(context).width * 0.08,
            ),
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Text(
                  'RT',
                  style: FlutterFlowTheme.of(context).labelLarge,
                ),
              ),
              fixedWidth: MediaQuery.sizeOf(context).width * 0.08,
            ),
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Text(
                  'PS',
                  style: FlutterFlowTheme.of(context).labelLarge,
                ),
              ),
              fixedWidth: MediaQuery.sizeOf(context).width * 0.07,
            ),
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Text(
                  'SMS Status',
                  style: FlutterFlowTheme.of(context).labelLarge,
                ),
              ),
              fixedWidth: MediaQuery.sizeOf(context).width * 0.12,
            ),
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Text(
                  'Actions',
                  style: FlutterFlowTheme.of(context).labelLarge,
                ),
              ),
              fixedWidth: MediaQuery.sizeOf(context).width * 0.09,
            ),
          ],
          rows: dataTableGuestEntryDetailsRecordList
              .mapIndexed((dataTableIndex, dataTableGuestEntryDetailsRecord) =>
                  [
                    StreamBuilder<List<GuestEntryDetailsRecord>>(
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
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  Color(0xFF011D1A),
                                ),
                              ),
                            ),
                          );
                        }
                        List<GuestEntryDetailsRecord>
                            textGuestEntryDetailsRecordList = snapshot.data!;
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
                            dataTableGuestEntryDetailsRecord.name,
                            'name',
                          ),
                          style: FlutterFlowTheme.of(context).bodyLarge,
                        );
                      },
                    ),
                    StreamBuilder<List<GuestEntryDetailsRecord>>(
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
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  Color(0xFF011D1A),
                                ),
                              ),
                            ),
                          );
                        }
                        List<GuestEntryDetailsRecord>
                            textGuestEntryDetailsRecordList = snapshot.data!;
                        // Return an empty Container when the item does not exist.
                        if (snapshot.data!.isEmpty) {
                          return Container();
                        }
                        final textGuestEntryDetailsRecord =
                            textGuestEntryDetailsRecordList.isNotEmpty
                                ? textGuestEntryDetailsRecordList.first
                                : null;
                        return Text(
                          dataTableGuestEntryDetailsRecord.type,
                          style: FlutterFlowTheme.of(context).bodyLarge,
                        );
                      },
                    ),
                    StreamBuilder<List<GuestEntryDetailsRecord>>(
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
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  Color(0xFF011D1A),
                                ),
                              ),
                            ),
                          );
                        }
                        List<GuestEntryDetailsRecord>
                            textGuestEntryDetailsRecordList = snapshot.data!;
                        // Return an empty Container when the item does not exist.
                        if (snapshot.data!.isEmpty) {
                          return Container();
                        }
                        final textGuestEntryDetailsRecord =
                            textGuestEntryDetailsRecordList.isNotEmpty
                                ? textGuestEntryDetailsRecordList.first
                                : null;
                        return Text(
                          dataTableGuestEntryDetailsRecord.mobileNum,
                          style: FlutterFlowTheme.of(context).bodyLarge,
                        );
                      },
                    ),
                    StreamBuilder<List<GuestEntryDetailsRecord>>(
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
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  Color(0xFF011D1A),
                                ),
                              ),
                            ),
                          );
                        }
                        List<GuestEntryDetailsRecord>
                            textGuestEntryDetailsRecordList = snapshot.data!;
                        // Return an empty Container when the item does not exist.
                        if (snapshot.data!.isEmpty) {
                          return Container();
                        }
                        final textGuestEntryDetailsRecord =
                            textGuestEntryDetailsRecordList.isNotEmpty
                                ? textGuestEntryDetailsRecordList.first
                                : null;
                        return Text(
                          dataTableGuestEntryDetailsRecord.category,
                          style: FlutterFlowTheme.of(context).bodyLarge,
                        );
                      },
                    ),
                    StreamBuilder<List<GuestEntryDetailsRecord>>(
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
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  Color(0xFF011D1A),
                                ),
                              ),
                            ),
                          );
                        }
                        List<GuestEntryDetailsRecord>
                            textGuestEntryDetailsRecordList = snapshot.data!;
                        // Return an empty Container when the item does not exist.
                        if (snapshot.data!.isEmpty) {
                          return Container();
                        }
                        final textGuestEntryDetailsRecord =
                            textGuestEntryDetailsRecordList.isNotEmpty
                                ? textGuestEntryDetailsRecordList.first
                                : null;
                        return Text(
                          dataTableGuestEntryDetailsRecord.seatingArea,
                          style: FlutterFlowTheme.of(context).bodyLarge,
                        );
                      },
                    ),
                    StreamBuilder<List<GuestEntryDetailsRecord>>(
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
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  Color(0xFF011D1A),
                                ),
                              ),
                            ),
                          );
                        }
                        List<GuestEntryDetailsRecord>
                            textGuestEntryDetailsRecordList = snapshot.data!;
                        // Return an empty Container when the item does not exist.
                        if (snapshot.data!.isEmpty) {
                          return Container();
                        }
                        final textGuestEntryDetailsRecord =
                            textGuestEntryDetailsRecordList.isNotEmpty
                                ? textGuestEntryDetailsRecordList.first
                                : null;
                        return SelectionArea(
                            child: Text(
                          dataTableGuestEntryDetailsRecord.waitingTime,
                          style: FlutterFlowTheme.of(context).bodyLarge,
                        ));
                      },
                    ),
                    StreamBuilder<List<GuestEntryDetailsRecord>>(
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
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  Color(0xFF011D1A),
                                ),
                              ),
                            ),
                          );
                        }
                        List<GuestEntryDetailsRecord>
                            textGuestEntryDetailsRecordList = snapshot.data!;
                        // Return an empty Container when the item does not exist.
                        if (snapshot.data!.isEmpty) {
                          return Container();
                        }
                        final textGuestEntryDetailsRecord =
                            textGuestEntryDetailsRecordList.isNotEmpty
                                ? textGuestEntryDetailsRecordList.first
                                : null;
                        return Text(
                          dataTableGuestEntryDetailsRecord.waitingTime,
                          style: FlutterFlowTheme.of(context).bodyLarge,
                        );
                      },
                    ),
                    StreamBuilder<List<GuestEntryDetailsRecord>>(
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
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  Color(0xFF011D1A),
                                ),
                              ),
                            ),
                          );
                        }
                        List<GuestEntryDetailsRecord>
                            textGuestEntryDetailsRecordList = snapshot.data!;
                        // Return an empty Container when the item does not exist.
                        if (snapshot.data!.isEmpty) {
                          return Container();
                        }
                        final textGuestEntryDetailsRecord =
                            textGuestEntryDetailsRecordList.isNotEmpty
                                ? textGuestEntryDetailsRecordList.first
                                : null;
                        return Text(
                          dataTableGuestEntryDetailsRecord.partySize,
                          style: FlutterFlowTheme.of(context).bodyLarge,
                        );
                      },
                    ),
                    StreamBuilder<List<GuestEntryDetailsRecord>>(
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
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  Color(0xFF011D1A),
                                ),
                              ),
                            ),
                          );
                        }
                        List<GuestEntryDetailsRecord>
                            textGuestEntryDetailsRecordList = snapshot.data!;
                        // Return an empty Container when the item does not exist.
                        if (snapshot.data!.isEmpty) {
                          return Container();
                        }
                        final textGuestEntryDetailsRecord =
                            textGuestEntryDetailsRecordList.isNotEmpty
                                ? textGuestEntryDetailsRecordList.first
                                : null;
                        return Text(
                          dataTableGuestEntryDetailsRecord.mobileNum,
                          style: FlutterFlowTheme.of(context).bodyLarge,
                        );
                      },
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 5.0, 0.0),
                          child: Icon(
                            Icons.timer,
                            color: FlutterFlowTheme.of(context).info,
                            size: 24.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 5.0, 0.0),
                          child: Icon(
                            Icons.restaurant,
                            color: FlutterFlowTheme.of(context).info,
                            size: 24.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 5.0, 0.0),
                          child: Icon(
                            Icons.no_accounts,
                            color: FlutterFlowTheme.of(context).info,
                            size: 24.0,
                          ),
                        ),
                      ],
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
          showBottomBorder: true,
          minWidth: 49.0,
        );
      },
    );
  }
}
