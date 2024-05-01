import 'package:dio/dio.dart';
import 'package:hue_dart/src/model/request/request_body_api_key.dart';
import 'package:hue_dart/src/model/response/response_body_api_key.dart';
import 'package:retrofit/retrofit.dart';

part 'hue_http_client.g.dart';

@RestApi(baseUrl: "https://api.meethue.com")
abstract class HueHttpClient {
  factory HueHttpClient(Dio dio, {String baseUrl}) = _HueHttpClient;

  @POST("/api")
  Future<List<BodyApiKey>> retrieveApiKey(@Body() RequestBodyApiKey body);
}
