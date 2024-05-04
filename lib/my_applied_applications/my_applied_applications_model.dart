import '/components/app_bar_custom_copy_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'my_applied_applications_widget.dart' show MyAppliedApplicationsWidget;
import 'package:flutter/material.dart';

class MyAppliedApplicationsModel
    extends FlutterFlowModel<MyAppliedApplicationsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for AppBarCustomCopy component.
  late AppBarCustomCopyModel appBarCustomCopyModel;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];

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
