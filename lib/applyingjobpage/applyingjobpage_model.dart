import '/backend/backend.dart';
import '/components/app_bar_custom_copy_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'applyingjobpage_widget.dart' show ApplyingjobpageWidget;
import 'package:flutter/material.dart';

class ApplyingjobpageModel extends FlutterFlowModel<ApplyingjobpageWidget> {
  ///  Local state fields for this page.

  String? profile;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for AppBarCustomCopy component.
  late AppBarCustomCopyModel appBarCustomCopyModel;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  AppliedJobRecord? candidate;

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
