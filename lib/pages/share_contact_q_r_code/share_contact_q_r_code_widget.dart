import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'share_contact_q_r_code_model.dart';
export 'share_contact_q_r_code_model.dart';

class ShareContactQRCodeWidget extends StatefulWidget {
  const ShareContactQRCodeWidget({super.key});

  @override
  _ShareContactQRCodeWidgetState createState() =>
      _ShareContactQRCodeWidgetState();
}

class _ShareContactQRCodeWidgetState extends State<ShareContactQRCodeWidget> {
  late ShareContactQRCodeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShareContactQRCodeModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Share Contact',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Lato',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    valueOrDefault<String>(
                      FFAppState().userProfile.name,
                      'name',
                    ),
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Outfit',
                          color: const Color(0xFF15161E),
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                    child: Text(
                      valueOrDefault<String>(
                        FFAppState().userProfile.title,
                        'title',
                      ),
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily: 'Plus Jakarta Sans',
                            color: const Color(0xFF606A85),
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                    child: Text(
                      valueOrDefault<String>(
                        FFAppState().userProfile.businessUnit,
                        'bu',
                      ),
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily: 'Plus Jakarta Sans',
                            color: const Color(0xFF606A85),
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          valueOrDefault<String>(
                            FFAppState().userProfile.phoneNumber,
                            'phone',
                          ),
                          style: FlutterFlowTheme.of(context).headlineSmall,
                        ),
                        Text(
                          valueOrDefault<String>(
                            FFAppState().userProfile.email,
                            'email',
                          ),
                          style: FlutterFlowTheme.of(context).headlineSmall,
                        ),
                        Text(
                          valueOrDefault<String>(
                            FFAppState().userProfile.location,
                            'email',
                          ),
                          style: FlutterFlowTheme.of(context).headlineSmall,
                        ),
                      ]
                          .divide(const SizedBox(height: 16.0))
                          .addToStart(const SizedBox(height: 12.0)),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 300.0,
                          height: 300.0,
                          child: custom_widgets.GenerateQRCode(
                            width: 300.0,
                            height: 300.0,
                            data: UserStruct(
                              name: valueOrDefault<String>(
                                FFAppState().userProfile.name,
                                'name',
                              ),
                              title: valueOrDefault<String>(
                                FFAppState().userProfile.title,
                                'title',
                              ),
                              businessUnit: valueOrDefault<String>(
                                FFAppState().userProfile.businessUnit,
                                'bu',
                              ),
                              location: valueOrDefault<String>(
                                FFAppState().userProfile.location,
                                'location',
                              ),
                              email: valueOrDefault<String>(
                                FFAppState().userProfile.email,
                                'email',
                              ),
                              phoneNumber: valueOrDefault<String>(
                                FFAppState().userProfile.phoneNumber,
                                'phone',
                              ),
                            ),
                            eyeStyleColor: FlutterFlowTheme.of(context).primary,
                            dataModuleStyleColor:
                                FlutterFlowTheme.of(context).info,
                            isSquare: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
