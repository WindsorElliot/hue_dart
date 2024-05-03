import 'package:hue_dart/hue_dart.dart';
import 'package:hue_dart/src/model/light/light.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response_body_resource_light.g.dart';

@JsonSerializable()
class ResponseBodyResourceLight {
  @JsonKey(name: "errors")
  final List<HueBaseError> errors;
  @JsonKey(name: "data")
  final List<Light> data;

  ResponseBodyResourceLight({
    required this.errors,
    required this.data,
  });

  factory ResponseBodyResourceLight.fromJson(Map<String, dynamic> json) =>
      _$ResponseBodyResourceLightFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseBodyResourceLightToJson(this);
}
