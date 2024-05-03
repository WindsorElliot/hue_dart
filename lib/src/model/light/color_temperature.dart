import 'package:hue_dart/src/model/light/mirek_schema.dart';
import 'package:json_annotation/json_annotation.dart';

part 'color_temperature.g.dart';

@JsonSerializable()
class ColorTemperature {
  @JsonKey(name: 'mirek')
  final int mirek;
  @JsonKey(name: "mirek_valid")
  final bool mirekValid;
  @JsonKey(name: "mirek_schema")
  final MirekSchema schema;

  ColorTemperature({
    required this.mirek,
    required this.mirekValid,
    required this.schema,
  });

  factory ColorTemperature.fromJson(Map<String, dynamic> json) =>
      _$ColorTemperatureFromJson(json);
  Map<String, dynamic> toJson() => _$ColorTemperatureToJson(this);
}
