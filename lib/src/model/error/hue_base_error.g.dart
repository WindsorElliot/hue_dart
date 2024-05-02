// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hue_base_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HueBaseError _$HueBaseErrorFromJson(Map<String, dynamic> json) => HueBaseError(
      description: json['description'] as String,
      type: (json['type'] as num?)?.toInt(),
      address: json['address'] as String?,
    );

Map<String, dynamic> _$HueBaseErrorToJson(HueBaseError instance) =>
    <String, dynamic>{
      'description': instance.description,
      'type': instance.type,
      'address': instance.address,
    };
