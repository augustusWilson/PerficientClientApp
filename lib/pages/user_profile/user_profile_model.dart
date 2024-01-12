import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'user_profile_widget.dart' show UserProfileWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UserProfileModel extends FlutterFlowModel<UserProfileWidget> {
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
  // State field(s) for email_input widget.
  FocusNode? emailInputFocusNode;
  TextEditingController? emailInputController;
  String? Function(BuildContext, String?)? emailInputControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

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

    emailInputFocusNode?.dispose();
    emailInputController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
