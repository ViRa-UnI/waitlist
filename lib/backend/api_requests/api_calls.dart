import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class FCCTitleIDCall {
  static Future<ApiCallResponse> call({
    int? iid = 2287,
    String? uid = 'usrchayah',
    String? p = '1bc54f3f-e34b-4dcf-941f-7758c0ee2d14',
    String? s = 'title',
    int? g = 96594080660,
    String? m = 'Hello',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'FCC Title ID',
      apiUrl: 'https://api.future-club.com/falconapi/fccsms.aspx',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'IID': iid,
        'UID': uid,
        'P': p,
        'S': s,
        'G': g,
        'M': m,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class FCCChopsIDCall {
  static Future<ApiCallResponse> call({
    int? iid = 2406,
    String? uid = 'usrChops',
    String? p = '525702e2-8f38-4b3e-87d0-413bfcd7956c',
    String? s = 'Chops',
    int? g = 96594080660,
    String? m = 'Hello',
    String? l = 'L',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'FCC Chops ID',
      apiUrl: 'https://api.future-club.com/falconapi/fccsms.aspx',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'IID': iid,
        'UID': uid,
        'P': p,
        'S': s,
        'G': g,
        'M': m,
        'L': l,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
