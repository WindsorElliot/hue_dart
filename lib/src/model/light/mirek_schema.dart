import 'package:json_annotation/json_annotation.dart';

part 'mirek_schema.g.dart';

@JsonSerializable()
class MirekSchema {
  @JsonKey(name: "mirek_minimum")
  final int mirekMinimum;
  @JsonKey(name: "mirek_maximum")
  final int mirekMaximum;

  MirekSchema({required this.mirekMinimum, required this.mirekMaximum});

  factory MirekSchema.fromJson(Map<String, dynamic> json) =>
      _$MirekSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$MirekSchemaToJson(this);
}
