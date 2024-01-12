import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'edit_contact_widget.dart' show EditContactWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditContactModel extends FlutterFlowModel<EditContactWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for edit_name_input widget.
  FocusNode? editNameInputFocusNode;
  TextEditingController? editNameInputController;
  String? Function(BuildContext, String?)? editNameInputControllerValidator;
  // State field(s) for edit_bussiness_unit_input widget.
  FocusNode? editBussinessUnitInputFocusNode;
  TextEditingController? editBussinessUnitInputController;
  String? Function(BuildContext, String?)?
      editBussinessUnitInputControllerValidator;
  // State field(s) for edit_title_input widget.
  FocusNode? editTitleInputFocusNode;
  TextEditingController? editTitleInputController;
  String? Function(BuildContext, String?)? editTitleInputControllerValidator;
  // State field(s) for edit_location_input widget.
  FocusNode? editLocationInputFocusNode;
  TextEditingController? editLocationInputController;
  String? Function(BuildContext, String?)? editLocationInputControllerValidator;
  // State field(s) for edit_notes_input widget.
  FocusNode? editNotesInputFocusNode;
  TextEditingController? editNotesInputController;
  String? Function(BuildContext, String?)? editNotesInputControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    editNameInputFocusNode?.dispose();
    editNameInputController?.dispose();

    editBussinessUnitInputFocusNode?.dispose();
    editBussinessUnitInputController?.dispose();

    editTitleInputFocusNode?.dispose();
    editTitleInputController?.dispose();

    editLocationInputFocusNode?.dispose();
    editLocationInputController?.dispose();

    editNotesInputFocusNode?.dispose();
    editNotesInputController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
