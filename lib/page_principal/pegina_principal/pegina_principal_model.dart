import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/nav_bar_widget.dart';
import '/components/selecao_obra_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'pegina_principal_widget.dart' show PeginaPrincipalWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PeginaPrincipalModel extends FlutterFlowModel<PeginaPrincipalWidget> {
  ///  Local state fields for this page.
  /// ativa e desativa codigo contrato
  bool _codigocontrato = false;
  set codigocontrato(bool value) {
    _codigocontrato = value;
    debugLogWidgetClass(this);
  }

  bool get codigocontrato => _codigocontrato;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textFieldTextController1;
  String? Function(BuildContext, String?)? textFieldTextController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textFieldTextController2;
  String? Function(BuildContext, String?)? textFieldTextController2Validator;
  // Stores action output result for [Backend Call - API (createContrato)] action in BtnSalvar widget.
  ApiCallResponse? _apiResultede;
  set apiResultede(ApiCallResponse? value) {
    _apiResultede = value;
    debugLogWidgetClass(this);
  }

  ApiCallResponse? get apiResultede => _apiResultede;

  // Model for NavBar component.
  late NavBarModel navBarModel;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    navBarModel = createModel(context, () => NavBarModel());

    debugLogWidgetClass(this);
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textFieldTextController1?.dispose();

    textFieldFocusNode2?.dispose();
    textFieldTextController2?.dispose();

    navBarModel.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        localStates: {
          'codigocontrato': debugSerializeParam(
            codigocontrato,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/teste-mb2pd4?tab=uiBuilder&page=PeginaPrincipal',
            searchReference:
                'reference=QkoKFwoOY29kaWdvY29udHJhdG8SBXBsb3d0KgcSBWZhbHNlcgQIBSABeiBhdGl2YSBlIGRlc2F0aXZhIGNvZGlnbyBjb250cmF0b1ABWg5jb2RpZ29jb250cmF0b2IPUGVnaW5hUHJpbmNpcGFs',
            name: 'bool',
            nullable: false,
          )
        },
        widgetStates: {
          'textFieldText1': debugSerializeParam(
            textFieldTextController1?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/teste-mb2pd4?tab=uiBuilder&page=PeginaPrincipal',
            name: 'String',
            nullable: true,
          ),
          'textFieldText2': debugSerializeParam(
            textFieldTextController2?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/teste-mb2pd4?tab=uiBuilder&page=PeginaPrincipal',
            name: 'String',
            nullable: true,
          )
        },
        actionOutputs: {
          'apiResultede': debugSerializeParam(
            apiResultede,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/teste-mb2pd4?tab=uiBuilder&page=PeginaPrincipal',
            name: 'ApiCallResponse',
            nullable: true,
          )
        },
        generatorVariables: debugGeneratorVariables,
        backendQueries: debugBackendQueries,
        componentStates: {
          'navBarModel (NavBar)': navBarModel?.toWidgetClassDebugData(),
          ...widgetBuilderComponents.map(
            (key, value) => MapEntry(
              key,
              value.toWidgetClassDebugData(),
            ),
          ),
        }.withoutNulls,
        link:
            'https://app.flutterflow.io/project/teste-mb2pd4/tab=uiBuilder&page=PeginaPrincipal',
        searchReference:
            'reference=Og9QZWdpbmFQcmluY2lwYWxQAVoPUGVnaW5hUHJpbmNpcGFs',
        widgetClassName: 'PeginaPrincipal',
      );
}
