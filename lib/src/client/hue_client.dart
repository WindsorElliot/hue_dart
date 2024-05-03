import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:hue_dart/src/client/hue_http_client.dart';
import 'package:hue_dart/src/model/api_key.dart';
import 'package:hue_dart/src/model/exception/hue_exception.dart';
import 'package:hue_dart/src/model/light/light.dart';
import 'package:hue_dart/src/model/product/product.dart';
import 'package:hue_dart/src/model/request/request_body_api_key.dart';

class HueClient {
  final String baseUrl;
  late final HueHttpClient _httpClient;

  HueClient(this.baseUrl, {ByteData? certificate}) {
    final dio = Dio();
    if (certificate == null) {
      (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () =>
          HttpClient()
            ..badCertificateCallback =
                (X509Certificate cert, String host, int port) => true;
    } else {
      ByteData rootCACertificate = certificate;
      dio.httpClientAdapter = IOHttpClientAdapter(createHttpClient: () {
        final SecurityContext context = SecurityContext();
        context.setTrustedCertificatesBytes(
            rootCACertificate.buffer.asUint8List());
        return HttpClient(context: context);
      });
    }

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

  Future<List<Light>> retrieveLights(String applicationKey) async {
    try {
      final response = await _httpClient.retrieveLights(applicationKey);
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
