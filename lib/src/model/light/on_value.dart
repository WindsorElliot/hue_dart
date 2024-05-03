import 'package:json_annotation/json_annotation.dart';

part 'on_value.g.dart';

@JsonSerializable()
class OnValue {
  @JsonKey(name: 'on')
  final bool value;

  OnValue({required this.value});

  factory OnValue.fromJson(Map<String, dynamic> json) =>
      _$OnValueFromJson(json);
  Map<String, dynamic> toJson() => _$OnValueToJson(this);
}
