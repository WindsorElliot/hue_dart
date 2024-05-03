import 'package:json_annotation/json_annotation.dart';

part 'dimming.g.dart';

@JsonSerializable()
class Dimming {
  @JsonKey(name: 'brightness')
  final int brightness;
  @JsonKey(name: "min_dim_level")
  final int minDimLevel;

  Dimming({required this.brightness, required this.minDimLevel});

  factory Dimming.fromJson(Map<String, dynamic> json) =>
      _$DimmingFromJson(json);
  Map<String, dynamic> toJson() => _$DimmingToJson(this);
}
