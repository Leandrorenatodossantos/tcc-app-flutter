import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'creat_account_widget.dart' show CreatAccountWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreatAccountModel extends FlutterFlowModel<CreatAccountWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFildSenha widget.
  FocusNode? textFildSenhaFocusNode1;
  TextEditingController? textFildSenhaTextController1;
  String? Function(BuildContext, String?)?
      textFildSenhaTextController1Validator;
  // State field(s) for TextFieldEmail widget.
  FocusNode? textFieldEmailFocusNode;
  TextEditingController? textFieldEmailTextController;
  String? Function(BuildContext, String?)?
      textFieldEmailTextControllerValidator;
  // State field(s) for TextFildSenha widget.
  FocusNode? textFildSenhaFocusNode2;
  TextEditingController? textFildSenhaTextController2;
  late bool textFildSenhaVisibility;
  String? Function(BuildContext, String?)?
      textFildSenhaTextController2Validator;
  // Stores action output result for [Backend Call - API (createUsuario)] action in Button widget.
  ApiCallResponse? _apiResultCreate;
  set apiResultCreate(ApiCallResponse? value) {
    _apiResultCreate = value;
    debugLogWidgetClass(this);
  }

  ApiCallResponse? get apiResultCreate => _apiResultCreate;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    textFildSenhaVisibility = false;

    debugLogWidgetClass(this);
  }

  @override
  void dispose() {
    textFildSenhaFocusNode1?.dispose();
    textFildSenhaTextController1?.dispose();

    textFieldEmailFocusNode?.dispose();
    textFieldEmailTextController?.dispose();

    textFildSenhaFocusNode2?.dispose();
    textFildSenhaTextController2?.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetStates: {
          'textFildSenhaText1': debugSerializeParam(
            textFildSenhaTextController1?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/teste-mb2pd4?tab=uiBuilder&page=CreatAccount',
            name: 'String',
            nullable: true,
          ),
          'textFieldEmailText': debugSerializeParam(
            textFieldEmailTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/teste-mb2pd4?tab=uiBuilder&page=CreatAccount',
            name: 'String',
            nullable: true,
          ),
          'textFildSenhaText2': debugSerializeParam(
            textFildSenhaTextController2?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/teste-mb2pd4?tab=uiBuilder&page=CreatAccount',
            name: 'String',
            nullable: true,
          )
        },
        actionOutputs: {
          'apiResultCreate': debugSerializeParam(
            apiResultCreate,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/teste-mb2pd4?tab=uiBuilder&page=CreatAccount',
            name: 'ApiCallResponse',
            nullable: true,
          )
        },
        generatorVariables: debugGeneratorVariables,
        backendQueries: debugBackendQueries,
        componentStates: {
          ...widgetBuilderComponents.map(
            (key, value) => MapEntry(
              key,
              value.toWidgetClassDebugData(),
            ),
          ),
        }.withoutNulls,
        link:
            'https://app.flutterflow.io/project/teste-mb2pd4/tab=uiBuilder&page=CreatAccount',
        searchReference: 'reference=OgxDcmVhdEFjY291bnRQAVoMQ3JlYXRBY2NvdW50',
        widgetClassName: 'CreatAccount',
      );
}
