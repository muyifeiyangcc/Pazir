import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pazir/Bpages/encrypt.dart';

class ApiMethod {
  ApiMethod._();

  /// 统一接口域名，只需要改这里即可。
  static const String baseUrl = 'https://opi.yg9ybcys.link';
  static const String appVersion = '1.0.0';
  static const String appId = '31906627';

  /// POST 请求统一封装。
  ///
  /// [path] 可以传 `/api/login` 或 `api/login`。
  /// [params] 请求参数，会自动 jsonEncode。
  /// [headers] 额外请求头，会覆盖默认同名字段。
  static Future<dynamic> post(
    String path, {
    Map<String, dynamic>? params,
    Map<String, String>? headers,
    Duration timeout = const Duration(seconds: 15),
  }) async {
    final Uri uri = Uri.parse(
      path.contains('http')
          ? path
          : '$baseUrl/${path.startsWith('/') ? path.substring(1) : path}',
    );

    final Map<String, String> requestHeaders = <String, String>{
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      ...?headers,
    };

    print('请求头：');
    print(requestHeaders);

    print('请求体：');
    print(params);

    String encryptParams = path.contains('http')
        ? jsonEncode(params)
        : jsonEncode(params ?? <String, dynamic>{}).managerEncode();

    try {
      final http.Response response = await http
          .post(uri, headers: requestHeaders, body: encryptParams)
          .timeout(timeout);

      if (response.statusCode < 200 || response.statusCode >= 300) {
        return null;
      }

      final String responseBody = utf8.decode(response.bodyBytes);
      if (responseBody.isEmpty) {
        return null;
      }

      return jsonDecode(responseBody);
    } catch (error) {
      return null;
    }
  }
}
