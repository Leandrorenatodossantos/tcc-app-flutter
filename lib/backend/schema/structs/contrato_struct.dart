// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContratoStruct extends BaseStruct {
  ContratoStruct({
    List<ContratoStruct>? codigo,
  }) : _codigo = codigo != null ? LoggableList(codigo) : null;

  // "codigo" field.
  LoggableList<ContratoStruct>? _codigo;
  List<ContratoStruct> get codigo =>
      (_codigo ?? LoggableList(const []))..logger = logger;
  set codigo(List<ContratoStruct>? val) {
    if (val != null) {
      _codigo = LoggableList(val);
    } else {
      _codigo = null;
    }
    debugLog();
  }

  void updateCodigo(Function(List<ContratoStruct>) updateFn) {
    updateFn(_codigo ??= LoggableList([]));
    debugLog();
  }

  bool hasCodigo() => _codigo != null;

  static ContratoStruct fromMap(Map<String, dynamic> data) => ContratoStruct(
        codigo: getStructList(
          data['codigo'],
          ContratoStruct.fromMap,
        ),
      );

  static ContratoStruct? maybeFromMap(dynamic data) =>
      data is Map ? ContratoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'codigo': _codigo?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'codigo': serializeParam(
          _codigo,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static ContratoStruct fromSerializableMap(Map<String, dynamic> data) =>
      ContratoStruct(
        codigo: deserializeStructParam<ContratoStruct>(
          data['codigo'],
          ParamType.DataStruct,
          true,
          structBuilder: ContratoStruct.fromSerializableMap,
        ),
      );
  @override
  Map<String, DebugDataField> toDebugSerializableMap() => {
        'codigo': debugSerializeParam(
          _codigo,
          ParamType.DataStruct,
          isList: true,
          name: 'contrato',
          nullable: false,
        ),
      };

  @override
  String toString() => 'ContratoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ContratoStruct && listEquality.equals(codigo, other.codigo);
  }

  @override
  int get hashCode => const ListEquality().hash([codigo]);
}

ContratoStruct createContratoStruct() => ContratoStruct();
