import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:hue_dart/src/client/hue_http_client.dart';
import 'package:hue_dart/src/model/api_key.dart';
import 'package:hue_dart/src/model/exception/hue_exception.dart';
import 'package:hue_dart/src/model/product/product.dart';
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
        throw HueException.fromHueError([errorData]);
      } else {
        throw HueExceptionUnknownError();
      }
    } on HueException catch (_) {
      rethrow;
    } on DioException catch (_) {
      throw HueExceptionNetworkError();
    } catch (e) {
      throw HueExceptionUnknownError();
    }
  }

  Future<List<Product>> retrieveDevices(String applicationKey) async {
    try {
      final response = await _httpClient.retrieveDevices(applicationKey);
      final errorsList = response.errors;
      final dataList = response.data;
      if (errorsList.isNotEmpty) {
        throw HueExceptionMultipleError(
            errorsList.map((e) => e.description).toList());
      } else if (dataList.isNotEmpty) {
        return dataList;
      } else {
        throw HueExceptionUnknownError();
      }
    } on DioException catch (_) {
      throw HueExceptionNetworkError();
    } catch (e) {
      throw HueExceptionUnknownError();
    }
  }
}
