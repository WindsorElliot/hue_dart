// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_body_resource_device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseBodyResourceDevice _$ResponseBodyResourceDeviceFromJson(
        Map<String, dynamic> json) =>
    ResponseBodyResourceDevice(
      errors: (json['errors'] as List<dynamic>)
          .map((e) => HueBaseError.fromJson(e as Map<String, dynamic>))
          .toList(),
      data: (json['data'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResponseBodyResourceDeviceToJson(
        ResponseBodyResourceDevice instance) =>
    <String, dynamic>{
      'errors': instance.errors,
      'data': instance.data,
    };
