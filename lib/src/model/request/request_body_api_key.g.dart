// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_body_api_key.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequestBodyApiKey _$RequestBodyApiKeyFromJson(Map<String, dynamic> json) =>
    RequestBodyApiKey(
      deviceType: json['devicetype'] as String,
      generateClientKey: json['generateclientkey'] as bool,
    );

Map<String, dynamic> _$RequestBodyApiKeyToJson(RequestBodyApiKey instance) =>
    <String, dynamic>{
      'devicetype': instance.deviceType,
      'generateclientkey': instance.generateClientKey,
    };
