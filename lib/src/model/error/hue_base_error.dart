import 'package:json_annotation/json_annotation.dart';

part 'hue_base_error.g.dart';

@JsonSerializable()
class HueBaseError {
  @JsonKey(name: 'description')
  final String description;
  final int? type;
  final String? address;

  HueBaseError({
    required this.description,
    required this.type,
    required this.address,
  });

  factory HueBaseError.fromJson(Map<String, dynamic> json) =>
      _$HueBaseErrorFromJson(json);

  Map<String, dynamic> toJson() => _$HueBaseErrorToJson(this);
}
