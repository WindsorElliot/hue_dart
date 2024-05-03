import 'package:hue_dart/src/model/light/color_xy.dart';
import 'package:json_annotation/json_annotation.dart';

part 'gamut.g.dart';

@JsonSerializable()
class Gamut {
  @JsonKey(name: "red")
  final ColorXY red;
  @JsonKey(name: "green")
  final ColorXY green;
  @JsonKey(name: "blue")
  final ColorXY blue;

  Gamut({required this.red, required this.green, required this.blue});

  factory Gamut.fromJson(Map<String, dynamic> json) => _$GamutFromJson(json);
  Map<String, dynamic> toJson() => _$GamutToJson(this);
}
