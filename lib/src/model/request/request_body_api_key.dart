import 'package:json_annotation/json_annotation.dart';

part 'request_body_api_key.g.dart';

@JsonSerializable()
class RequestBodyApiKey {
  @JsonKey(name: "devicetype")
  final String deviceType;
  @JsonKey(name: "generateclientkey")
  final bool generateClientKey;

  RequestBodyApiKey({
    required this.deviceType,
    required this.generateClientKey,
  });

  factory RequestBodyApiKey.fromJson(Map<String, dynamic> json) =>
      _$RequestBodyApiKeyFromJson(json);

  Map<String, dynamic> toJson() => _$RequestBodyApiKeyToJson(this);
}
