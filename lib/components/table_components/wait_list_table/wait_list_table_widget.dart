import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'wait_list_table_model.dart';
export 'wait_list_table_model.dart';

class WaitListTableWidget extends StatefulWidget {
  const WaitListTableWidget({Key? key}) : super(key: key);

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
    context.watch<FFAppState>();

    return Container();
  }
}
