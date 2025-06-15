import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetContratoCall {
  static Future<ApiCallResponse> call({
    List<String>? idList,
    List<String>? codigoContratoList,
    List<String>? descricaoContratoList,
  }) async {
    final id = _serializeList(idList);
    final codigoContrato = _serializeList(codigoContratoList);
    final descricaoContrato = _serializeList(descricaoContratoList);

    return ApiManager.instance.makeApiCall(
      callName: 'getContrato',
      apiUrl: 'https://api-flutterflow.onrender.com/cadastro_contrato',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? codigocontrato(dynamic response) => (getJsonField(
        response,
        r'''$[:].codigo_contrato''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? descricaocontrato(dynamic response) => (getJsonField(
        response,
        r'''$[:].descricao_contrato''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class CreateContratoCall {
  static Future<ApiCallResponse> call({
    String? codigoContrato = '',
    String? descricaoContrato = '',
  }) async {
    final ffApiRequestBody = '''
{
  "codigo_contrato": "${escapeStringForJson(codigoContrato)}",
  "descricao_contrato": "${escapeStringForJson(descricaoContrato)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createContrato',
      apiUrl: 'https://api-flutterflow.onrender.com/cadastro_contrato',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateContratoCall {
  static Future<ApiCallResponse> call() async {
    final ffApiRequestBody = '''
{
  "codigo_contrato": "<codigo_contrato>",
  "descricao_contrato": "<descricao_contrato>"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateContrato',
      apiUrl: 'https://api-flutterflow.onrender.com/cadastro_contrato',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteContratoCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'deleteContrato',
      apiUrl: 'https://api-flutterflow.onrender.com/cadastro_contrato',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetUsuarioCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getUsuario',
      apiUrl: 'https://api-flutterflow.onrender.com/usuarios',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateUsuarioCall {
  static Future<ApiCallResponse> call({
    String? nome = '',
    String? email = '',
    String? senha = '',
  }) async {
    final ffApiRequestBody = '''
{
  "nome": "${escapeStringForJson(nome)}",
  "email": "${escapeStringForJson(email)}",
  "senha": "${escapeStringForJson(senha)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createUsuario',
      apiUrl: 'https://api-flutterflow.onrender.com/usuarios',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? mensagemCadastroUser(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class UpdateUsuarioCall {
  static Future<ApiCallResponse> call() async {
    final ffApiRequestBody = '''
{
  "nome":"[nome]",
  "email": "[email]",
  "senha": "[senha]"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateUsuario',
      apiUrl: 'https://api-flutterflow.onrender.com/usuarios',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteUsuarioCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'deleteUsuario',
      apiUrl: 'https://api-flutterflow.onrender.com/usuarios',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LoginUsuarioCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? senha = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "senha": "${senha}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'loginUsuario',
      apiUrl: 'https://api-flutterflow.onrender.com/usuarios/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? usuarioid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.usuario.id''',
      ));
  static String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
  static dynamic? usuarioitem(dynamic response) => getJsonField(
        response,
        r'''$.usuario''',
      );
  static String? usuarionome(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.usuario.nome''',
      ));
  static String? usuarioemail(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.usuario.email''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
