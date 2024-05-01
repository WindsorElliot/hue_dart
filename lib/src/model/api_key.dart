import 'package:json_annotation/json_annotation.dart';

part 'api_key.g.dart';

@JsonSerializable()
class ApiKey {
  final String username;
  @JsonKey(name: "clientkey")
  final String clientKey;

  ApiKey({
    required this.username,
    required this.clientKey,
  });

  factory ApiKey.fromJson(Map<String, dynamic> json) => _$ApiKeyFromJson(json);

  Map<String, dynamic> toJson() => _$ApiKeyToJson(this);
}
