// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hue_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HueError _$HueErrorFromJson(Map<String, dynamic> json) => HueError(
      type: (json['type'] as num).toInt(),
      address: json['address'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$HueErrorToJson(HueError instance) => <String, dynamic>{
      'type': instance.type,
      'address': instance.address,
      'description': instance.description,
    };
