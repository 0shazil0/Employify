import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'app_bar_custom_model.dart';
export 'app_bar_custom_model.dart';

class AppBarCustomWidget extends StatefulWidget {
  const AppBarCustomWidget({super.key});

  @override
  State<AppBarCustomWidget> createState() => _AppBarCustomWidgetState();
}

class _AppBarCustomWidgetState extends State<AppBarCustomWidget> {
  late AppBarCustomModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AppBarCustomModel());

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
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15.0),
            bottomRight: Radius.circular(15.0),
            topLeft: Radius.circular(0.0),
            topRight: Radius.circular(0.0),
          ),
        ),
        child: Container(
          width: 400.0,
          height: 98.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [const Color(0xFF03145D), FlutterFlowTheme.of(context).accent1],
              stops: const [0.0, 1.0],
              begin: const AlignmentDirectional(1.0, -1.0),
              end: const AlignmentDirectional(-1.0, 1.0),
            ),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(15.0),
              bottomRight: Radius.circular(15.0),
              topLeft: Radius.circular(0.0),
              topRight: Radius.circular(0.0),
            ),
          ),
          child: Align(
            alignment: const AlignmentDirectional(-1.0, 0.0),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: FlutterFlowIconButton(
                borderColor: FlutterFlowTheme.of(context).accent1,
                borderRadius: 20.0,
                borderWidth: 2.0,
                buttonSize: 40.0,
                fillColor: FlutterFlowTheme.of(context).accent1,
                icon: Icon(
                  Icons.chevron_left,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
