import '/flutter_flow/flutter_flow_util.dart';
import 'create_contact_widget.dart' show CreateContactWidget;
import 'package:flutter/material.dart';

class CreateContactModel extends FlutterFlowModel<CreateContactWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for name_input widget.
  FocusNode? nameInputFocusNode;
  TextEditingController? nameInputController;
  String? Function(BuildContext, String?)? nameInputControllerValidator;
  // State field(s) for bussiness_unit_input widget.
  FocusNode? bussinessUnitInputFocusNode;
  TextEditingController? bussinessUnitInputController;
  String? Function(BuildContext, String?)?
      bussinessUnitInputControllerValidator;
  // State field(s) for title_input widget.
  FocusNode? titleInputFocusNode;
  TextEditingController? titleInputController;
  String? Function(BuildContext, String?)? titleInputControllerValidator;
  // State field(s) for location_input widget.
  FocusNode? locationInputFocusNode;
  TextEditingController? locationInputController;
  String? Function(BuildContext, String?)? locationInputControllerValidator;
  var newContactQRData = '';

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    nameInputFocusNode?.dispose();
    nameInputController?.dispose();

    bussinessUnitInputFocusNode?.dispose();
    bussinessUnitInputController?.dispose();

    titleInputFocusNode?.dispose();
    titleInputController?.dispose();

    locationInputFocusNode?.dispose();
    locationInputController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
