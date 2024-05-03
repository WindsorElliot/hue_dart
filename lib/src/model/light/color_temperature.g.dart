// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color_temperature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ColorTemperature _$ColorTemperatureFromJson(Map<String, dynamic> json) =>
    ColorTemperature(
      mirek: (json['mirek'] as num).toInt(),
      mirekValid: json['mirek_valid'] as bool,
      schema:
          MirekSchema.fromJson(json['mirek_schema'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ColorTemperatureToJson(ColorTemperature instance) =>
    <String, dynamic>{
      'mirek': instance.mirek,
      'mirek_valid': instance.mirekValid,
      'mirek_schema': instance.schema,
    };
