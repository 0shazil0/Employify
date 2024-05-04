import '/components/app_bar_custom_copy_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'track_application_widget.dart' show TrackApplicationWidget;
import 'package:flutter/material.dart';

class TrackApplicationModel extends FlutterFlowModel<TrackApplicationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for AppBarCustomCopy component.
  late AppBarCustomCopyModel appBarCustomCopyModel;

  @override
  void initState(BuildContext context) {
    appBarCustomCopyModel = createModel(context, () => AppBarCustomCopyModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    appBarCustomCopyModel.dispose();
  }
}
