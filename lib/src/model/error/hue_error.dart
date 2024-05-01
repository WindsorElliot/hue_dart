import 'package:json_annotation/json_annotation.dart';

part 'hue_error.g.dart';

@JsonSerializable()
class HueError {
  final int type;
  final String address;
  final String description;

  HueError({
    required this.type,
    required this.address,
    required this.description,
  });

  factory HueError.fromJson(Map<String, dynamic> json) =>
      _$HueErrorFromJson(json);

  Map<String, dynamic> toJson() => _$HueErrorToJson(this);
}
