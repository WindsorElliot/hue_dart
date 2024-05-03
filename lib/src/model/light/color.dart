import 'package:hue_dart/src/model/light/color_xy.dart';
import 'package:hue_dart/src/model/light/gamut.dart';
import 'package:json_annotation/json_annotation.dart';

part 'color.g.dart';

@JsonSerializable()
class Color {
  @JsonKey(name: "xy")
  final ColorXY xy;
  @JsonKey(name: "gamut")
  final Gamut gamut;
  @JsonKey(name: "gamut_type")
  final String gamutType;

  Color({required this.xy, required this.gamut, required this.gamutType});

  factory Color.fromJson(Map<String, dynamic> json) => _$ColorFromJson(json);
  Map<String, dynamic> toJson() => _$ColorToJson(this);
}
