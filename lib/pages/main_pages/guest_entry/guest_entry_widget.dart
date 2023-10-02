import '/components/guest_entry_form/guest_entry_form_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'guest_entry_model.dart';
export 'guest_entry_model.dart';

class GuestEntryWidget extends StatefulWidget {
  const GuestEntryWidget({Key? key}) : super(key: key);

  @override
  _GuestEntryWidgetState createState() => _GuestEntryWidgetState();
}

class _GuestEntryWidgetState extends State<GuestEntryWidget> {
  late GuestEntryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GuestEntryModel());

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
        title: 'guestEntry',
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
                    'assets/images/logo-waiting-list.png',
                    width: 450.0,
                    height: 200.0,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              title: Text(
                'Enter Guest Details',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Open Sans',
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
              ),
              actions: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                  child: Icon(
                    Icons.notifications,
                    color: FlutterFlowTheme.of(context).info,
                    size: 24.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                  child: FlutterFlowDropDown<String>(
                    controller: _model.dropDownValueController ??=
                        FormFieldController<String>(null),
                    options: ['Waiting List', 'Add Guest', 'Log Out'],
                    onChanged: (val) =>
                        setState(() => _model.dropDownValue = val),
                    width: 150.0,
                    height: 50.0,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Montserrat',
                          color: FlutterFlowTheme.of(context).info,
                        ),
                    hintText: 'Menu',
                    icon: FaIcon(
                      FontAwesomeIcons.chevronCircleDown,
                      color: FlutterFlowTheme.of(context).info,
                      size: 24.0,
                    ),
                    fillColor: Color(0xFF011D1A),
                    elevation: 2.0,
                    borderColor: FlutterFlowTheme.of(context).alternate,
                    borderWidth: 2.0,
                    borderRadius: 8.0,
                    margin:
                        EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                    hidesUnderline: true,
                    isSearchable: false,
                    isMultiSelect: false,
                  ),
                ),
              ],
              centerTitle: true,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: Align(
                alignment: AlignmentDirectional(-1.00, 0.00),
                child: wrapWithModel(
                  model: _model.guestEntryFormModel,
                  updateCallback: () => setState(() {}),
                  child: GuestEntryFormWidget(),
                ),
              ),
            ),
          ),
        ));
  }
}
