import 'package:hue_dart/src/model/light/color.dart';
import 'package:hue_dart/src/model/light/color_temperature.dart';
import 'package:hue_dart/src/model/light/dimming.dart';
import 'package:hue_dart/src/model/light/on_value.dart';
import 'package:hue_dart/src/model/product/meta_data.dart';
import 'package:hue_dart/src/model/product/service.dart';
import 'package:json_annotation/json_annotation.dart';

part 'light.g.dart';

@JsonSerializable()
class Light {
  @JsonKey(name: "type")
  final String? type;
  @JsonKey(name: "id_v1")
  final String? idV1;
  @JsonKey(name: "mode")
  final String mode;
  @JsonKey(name: "owner")
  final Service owner;
  @JsonKey(name: "metadata")
  final MetaData metaData;
  @JsonKey(name: "on")
  final OnValue onValue;
  @JsonKey(name: "dimming")
  final Dimming dimming;
  @JsonKey(name: "color_temperature")
  final ColorTemperature colorTemperature;
  @JsonKey(name: "color")
  final Color color;

  Light({
    required this.type,
    required this.idV1,
    required this.mode,
    required this.owner,
    required this.metaData,
    required this.onValue,
    required this.dimming,
    required this.colorTemperature,
    required this.color,
  });

  factory Light.fromJson(Map<String, dynamic> json) => _$LightFromJson(json);
  Map<String, dynamic> toJson() => _$LightToJson(this);
}
