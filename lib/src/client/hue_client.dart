import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:hue_dart/src/client/hue_http_client.dart';
import 'package:hue_dart/src/model/api_key.dart';
import 'package:hue_dart/src/model/exception/hue_exception.dart';
import 'package:hue_dart/src/model/request/request_body_api_key.dart';

class HueClient {
  final String baseUrl;
  late final HueHttpClient _httpClient;

  HueClient(this.baseUrl) {
    final dio = Dio();
    (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () =>
        HttpClient()
          ..badCertificateCallback =
              (X509Certificate cert, String host, int port) => true;
    _httpClient = HueHttpClient(dio, baseUrl: baseUrl);
  }

  Future<ApiKey> createApiKey(String appName) async {
    final body =
        RequestBodyApiKey(deviceType: appName, generateClientKey: true);
    try {
      final response = await _httpClient.retrieveApiKey(body);
      final data = response.firstOrNull;

      final successData = data?.success;
      final errorData = data?.error;
      if (successData != null) {
        return successData;
      } else if (errorData != null) {
        throw HueException.fromCode(errorData.type);
      } else {
        throw HueExceptionUnknown();
      }
    } on HueException {
      rethrow;
    } on DioException catch (_) {
      throw HueException.fromCode(-1);
    } catch (e) {
      throw HueExceptionUnknown();
    }
  }
}
