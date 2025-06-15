import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldEmail widget.
  FocusNode? textFieldEmailFocusNode;
  TextEditingController? textFieldEmailTextController;
  String? Function(BuildContext, String?)?
      textFieldEmailTextControllerValidator;
  // State field(s) for TextFildSenha widget.
  FocusNode? textFildSenhaFocusNode;
  TextEditingController? textFildSenhaTextController;
  late bool textFildSenhaVisibility;
  String? Function(BuildContext, String?)? textFildSenhaTextControllerValidator;
  // Stores action output result for [Backend Call - API (loginUsuario)] action in Button widget.
  ApiCallResponse? _apiResultLogin;
  set apiResultLogin(ApiCallResponse? value) {
    _apiResultLogin = value;
    debugLogWidgetClass(this);
  }

  ApiCallResponse? get apiResultLogin => _apiResultLogin;

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
    textFieldEmailFocusNode?.dispose();
    textFieldEmailTextController?.dispose();

    textFildSenhaFocusNode?.dispose();
    textFildSenhaTextController?.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetStates: {
          'textFieldEmailText': debugSerializeParam(
            textFieldEmailTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/teste-mb2pd4?tab=uiBuilder&page=HomePage',
            name: 'String',
            nullable: true,
          ),
          'textFildSenhaText': debugSerializeParam(
            textFildSenhaTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/teste-mb2pd4?tab=uiBuilder&page=HomePage',
            name: 'String',
            nullable: true,
          )
        },
        actionOutputs: {
          'apiResultLogin': debugSerializeParam(
            apiResultLogin,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/teste-mb2pd4?tab=uiBuilder&page=HomePage',
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
            'https://app.flutterflow.io/project/teste-mb2pd4/tab=uiBuilder&page=HomePage',
        searchReference: 'reference=OghIb21lUGFnZVABWghIb21lUGFnZQ==',
        widgetClassName: 'HomePage',
      );
}
