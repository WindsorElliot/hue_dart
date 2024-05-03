import 'package:json_annotation/json_annotation.dart';

part 'color_xy.g.dart';

@JsonSerializable()
class ColorXY {
  final double x;
  final double y;

  ColorXY({required this.x, required this.y});

  factory ColorXY.fromJson(Map<String, dynamic> json) =>
      _$ColorXYFromJson(json);
  Map<String, dynamic> toJson() => _$ColorXYToJson(this);
}
