// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsuarioStruct extends BaseStruct {
  UsuarioStruct({
    String? usuario,
  }) : _usuario = usuario;

  // "usuario" field.
  String? _usuario;
  String get usuario => _usuario ?? '';
  set usuario(String? val) {
    _usuario = val;
    debugLog();
  }

  bool hasUsuario() => _usuario != null;

  static UsuarioStruct fromMap(Map<String, dynamic> data) => UsuarioStruct(
        usuario: data['usuario'] as String?,
      );

  static UsuarioStruct? maybeFromMap(dynamic data) =>
      data is Map ? UsuarioStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'usuario': _usuario,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'usuario': serializeParam(
          _usuario,
          ParamType.String,
        ),
      }.withoutNulls;

  static UsuarioStruct fromSerializableMap(Map<String, dynamic> data) =>
      UsuarioStruct(
        usuario: deserializeParam(
          data['usuario'],
          ParamType.String,
          false,
        ),
      );
  @override
  Map<String, DebugDataField> toDebugSerializableMap() => {
        'usuario': debugSerializeParam(
          usuario,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
      };

  @override
  String toString() => 'UsuarioStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UsuarioStruct && usuario == other.usuario;
  }

  @override
  int get hashCode => const ListEquality().hash([usuario]);
}

UsuarioStruct createUsuarioStruct({
  String? usuario,
}) =>
    UsuarioStruct(
      usuario: usuario,
    );
