import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'app_bar_custom_copy_model.dart';
export 'app_bar_custom_copy_model.dart';

class AppBarCustomCopyWidget extends StatefulWidget {
  const AppBarCustomCopyWidget({super.key});

  @override
  State<AppBarCustomCopyWidget> createState() => _AppBarCustomCopyWidgetState();
}

class _AppBarCustomCopyWidgetState extends State<AppBarCustomCopyWidget> {
  late AppBarCustomCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AppBarCustomCopyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Material(
        color: Colors.transparent,
        elevation: 6.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
        ),
        child: Container(
          width: 400.0,
          height: 165.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [const Color(0xFF03145D), FlutterFlowTheme.of(context).accent1],
              stops: const [0.0, 1.0],
              begin: const AlignmentDirectional(1.0, -1.0),
              end: const AlignmentDirectional(-1.0, 1.0),
            ),
            borderRadius: BorderRadius.circular(0.0),
          ),
        ),
      ),
    );
  }
}
