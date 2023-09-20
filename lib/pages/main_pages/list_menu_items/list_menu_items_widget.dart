import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/app_menu_comp/app_menu_comp_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'list_menu_items_model.dart';
export 'list_menu_items_model.dart';

class ListMenuItemsWidget extends StatefulWidget {
  const ListMenuItemsWidget({Key? key}) : super(key: key);

  @override
  _ListMenuItemsWidgetState createState() => _ListMenuItemsWidgetState();
}

class _ListMenuItemsWidgetState extends State<ListMenuItemsWidget> {
  late ListMenuItemsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListMenuItemsModel());

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

    return StreamBuilder<List<RestaurantMenuRecord>>(
      stream: queryRestaurantMenuRecord(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: Colors.white,
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
        List<RestaurantMenuRecord> listMenuItemsRestaurantMenuRecordList =
            snapshot.data!;
        return Title(
            title: 'ListMenuItems',
            color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
            child: GestureDetector(
              onTap: () =>
                  FocusScope.of(context).requestFocus(_model.unfocusNode),
              child: Scaffold(
                key: scaffoldKey,
                backgroundColor: Colors.white,
                appBar: AppBar(
                  backgroundColor: FlutterFlowTheme.of(context).primary,
                  automaticallyImplyLeading: false,
                  leading: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
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
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('AppMenuPage');
                      },
                      child: wrapWithModel(
                        model: _model.appMenuCompModel,
                        updateCallback: () => setState(() {}),
                        child: AppMenuCompWidget(),
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
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
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
              ),
            ));
      },
    );
  }
}
