// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_body_api_key.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseBodyApiKey _$ResponseBodyApiKeyFromJson(Map<String, dynamic> json) =>
    ResponseBodyApiKey(
      bodyApiKey: (json['bodyApiKey'] as List<dynamic>)
          .map((e) => BodyApiKey.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResponseBodyApiKeyToJson(ResponseBodyApiKey instance) =>
    <String, dynamic>{
      'bodyApiKey': instance.bodyApiKey,
    };

BodyApiKey _$BodyApiKeyFromJson(Map<String, dynamic> json) => BodyApiKey(
      success: json['success'] == null
          ? null
          : ApiKey.fromJson(json['success'] as Map<String, dynamic>),
      error: json['error'] == null
          ? null
          : HueBaseError.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BodyApiKeyToJson(BodyApiKey instance) =>
    <String, dynamic>{
      'success': instance.success,
      'error': instance.error,
    };
