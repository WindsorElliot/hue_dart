import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Light {
  @JsonKey(name: "type")
  final String? type;
  @JsonKey(name: "id_v1")
  final String? idV1;
  @JsonKey(name: "mode")
  final String mode;
}
