// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dimming.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Dimming _$DimmingFromJson(Map<String, dynamic> json) => Dimming(
      brightness: (json['brightness'] as num).toInt(),
      minDimLevel: (json['min_dim_level'] as num).toInt(),
    );

Map<String, dynamic> _$DimmingToJson(Dimming instance) => <String, dynamic>{
      'brightness': instance.brightness,
      'min_dim_level': instance.minDimLevel,
    };
