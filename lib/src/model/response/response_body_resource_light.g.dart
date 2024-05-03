// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_body_resource_light.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseBodyResourceLight _$ResponseBodyResourceLightFromJson(
        Map<String, dynamic> json) =>
    ResponseBodyResourceLight(
      errors: (json['errors'] as List<dynamic>)
          .map((e) => HueBaseError.fromJson(e as Map<String, dynamic>))
          .toList(),
      data: (json['data'] as List<dynamic>)
          .map((e) => Light.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResponseBodyResourceLightToJson(
        ResponseBodyResourceLight instance) =>
    <String, dynamic>{
      'errors': instance.errors,
      'data': instance.data,
    };
