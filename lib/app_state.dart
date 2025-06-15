import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import '/backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _name = '';
  String get name => _name;
  set name(String value) {
    _name = value;

    debugLogAppState(this);
  }

  bool _popup = false;
  bool get popup => _popup;
  set popup(bool value) {
    _popup = value;

    debugLogAppState(this);
  }

  bool _CadContrato = false;
  bool get CadContrato => _CadContrato;
  set CadContrato(bool value) {
    _CadContrato = value;

    debugLogAppState(this);
  }

  String _DescricaoObra = '';
  String get DescricaoObra => _DescricaoObra;
  set DescricaoObra(String value) {
    _DescricaoObra = value;

    debugLogAppState(this);
  }

  Map<String, DebugDataField> toDebugSerializableMap() => {
        'name': debugSerializeParam(
          name,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/teste-mb2pd4?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=ChgKEAoEbmFtZRIIbXNuY290dGRyAggDegBaBG5hbWU=',
          name: 'String',
          nullable: false,
        ),
        'popup': debugSerializeParam(
          popup,
          ParamType.bool,
          link:
              'https://app.flutterflow.io/project/teste-mb2pd4?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=ChkKEQoFcG9wdXASCG9mdXpjZHJ5cgIIBXoAWgVwb3B1cA==',
          name: 'bool',
          nullable: false,
        ),
        'CadContrato': debugSerializeParam(
          CadContrato,
          ParamType.bool,
          link:
              'https://app.flutterflow.io/project/teste-mb2pd4?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=Ch8KFwoLQ2FkQ29udHJhdG8SCGk5bG80YWpycgIIBXoAWgtDYWRDb250cmF0bw==',
          name: 'bool',
          nullable: false,
        ),
        'DescricaoObra': debugSerializeParam(
          DescricaoObra,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/teste-mb2pd4?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=CiEKGQoNRGVzY3JpY2FvT2JyYRIIOXhncHF2eGhyAggDegBaDURlc2NyaWNhb09icmE=',
          name: 'String',
          nullable: false,
        )
      };
}
