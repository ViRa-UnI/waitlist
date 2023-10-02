import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'time_calculation_model.dart';
export 'time_calculation_model.dart';

class TimeCalculationWidget extends StatefulWidget {
  const TimeCalculationWidget({
    Key? key,
    this.parameter1,
    this.parameter2,
  }) : super(key: key);

  final DateTime? parameter1;
  final String? parameter2;

  @override
  _TimeCalculationWidgetState createState() => _TimeCalculationWidgetState();
}

class _TimeCalculationWidgetState extends State<TimeCalculationWidget> {
  late TimeCalculationModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TimeCalculationModel());

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

    return Text(
      functions
          .calculateRemainingTime(widget.parameter1!, widget.parameter2!)
          .toString(),
      style: FlutterFlowTheme.of(context).bodyLarge,
    );
  }
}
