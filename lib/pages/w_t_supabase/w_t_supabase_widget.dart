import '/auth/firebase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/app_menu_icon/app_menu_icon_widget.dart';
import '/components/wait_list_table_supabase_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
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
                    width: 300.0,
                    fit: BoxFit.contain,
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
                height: double.infinity,
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(),
                      child: wrapWithModel(
                        model: _model.waitListTableSupabaseModel,
                        updateCallback: () => setState(() {}),
                        updateOnChange: true,
                        child: WaitListTableSupabaseWidget(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
