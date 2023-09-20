import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'waiting_time_field_model.dart';
export 'waiting_time_field_model.dart';

class WaitingTimeFieldWidget extends StatefulWidget {
  const WaitingTimeFieldWidget({
    Key? key,
    this.parameter1,
  }) : super(key: key);

  final String? parameter1;

  @override
  _WaitingTimeFieldWidgetState createState() => _WaitingTimeFieldWidgetState();
}

class _WaitingTimeFieldWidgetState extends State<WaitingTimeFieldWidget> {
  late WaitingTimeFieldModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WaitingTimeFieldModel());

    _model.textController ??= TextEditingController(text: widget.parameter1);
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
      padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
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
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Color(0xFF011D1A),
                  ),
                ),
              ),
            );
          }
          List<GuestEntryDetailsRecord> textFieldGuestEntryDetailsRecordList =
              snapshot.data!;
          // Return an empty Container when the item does not exist.
          if (snapshot.data!.isEmpty) {
            return Container();
          }
          final textFieldGuestEntryDetailsRecord =
              textFieldGuestEntryDetailsRecordList.isNotEmpty
                  ? textFieldGuestEntryDetailsRecordList.first
                  : null;
          return TextFormField(
            controller: _model.textController,
            onChanged: (_) => EasyDebounce.debounce(
              '_model.textController',
              Duration(milliseconds: 2000),
              () async {
                await GuestEntryDetailsRecord.collection
                    .doc()
                    .set(createGuestEntryDetailsRecordData(
                      waitingTime:
                          textFieldGuestEntryDetailsRecord?.waitingTime,
                    ));
              },
            ),
            autofocus: true,
            obscureText: false,
            decoration: InputDecoration(
              labelStyle: FlutterFlowTheme.of(context).labelMedium,
              hintStyle: FlutterFlowTheme.of(context).labelMedium,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              focusedErrorBorder: InputBorder.none,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Montserrat',
                  color: FlutterFlowTheme.of(context).info,
                  fontWeight: FontWeight.w600,
                ),
            validator: _model.textControllerValidator.asValidator(context),
          );
        },
      ),
    );
  }
}
