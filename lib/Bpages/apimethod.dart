import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pazir/Bpages/encrypt.dart';

class ApiMethod {
  ApiMethod._();

  static const String baseUrl = 'https://opi.yg9ybcys.link';
  static const String appVersion = '1.0.0';
  static const String appId = '31906627';

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
