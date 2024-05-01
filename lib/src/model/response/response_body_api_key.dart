import 'package:hue_dart/src/model/api_key.dart';
import 'package:hue_dart/src/model/hue_error.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response_body_api_key.g.dart';

@JsonSerializable()
class ResponseBodyApiKey {
  final List<BodyApiKey> bodyApiKey;

  ResponseBodyApiKey({
    required this.bodyApiKey,
  });

  factory ResponseBodyApiKey.fromJson(json) =>
      _$ResponseBodyApiKeyFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseBodyApiKeyToJson(this);
}

@JsonSerializable()
class BodyApiKey {
  final ApiKey? success;
  final HueError? error;

  BodyApiKey({
    this.success,
    this.error,
  });

  factory BodyApiKey.fromJson(Map<String, dynamic> json) =>
      _$BodyApiKeyFromJson(json);

  Map<String, dynamic> toJson() => _$BodyApiKeyToJson(this);
}
