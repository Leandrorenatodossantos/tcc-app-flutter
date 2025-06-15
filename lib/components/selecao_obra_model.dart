import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'selecao_obra_widget.dart' show SelecaoObraWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SelecaoObraModel extends FlutterFlowModel<SelecaoObraWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? _dropDownValue;
  set dropDownValue(String? value) {
    _dropDownValue = value;
    debugLogWidgetClass(this);
  }

  String? get dropDownValue => _dropDownValue;

  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textFieldTextController;
  String? Function(BuildContext, String?)? textFieldTextControllerValidator;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textFieldTextController?.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetStates: {
          'dropDownValue': debugSerializeParam(
            dropDownValue,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/teste-mb2pd4?tab=uiBuilder&page=SelecaoObra',
            name: 'String',
            nullable: true,
          ),
          'textFieldText': debugSerializeParam(
            textFieldTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/teste-mb2pd4?tab=uiBuilder&page=SelecaoObra',
            name: 'String',
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
            'https://app.flutterflow.io/project/teste-mb2pd4/tab=uiBuilder&page=SelecaoObra',
        searchReference: 'reference=OgtTZWxlY2FvT2JyYVAAWgtTZWxlY2FvT2JyYQ==',
        widgetClassName: 'SelecaoObra',
      );
}
