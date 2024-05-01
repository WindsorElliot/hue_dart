// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_key.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiKey _$ApiKeyFromJson(Map<String, dynamic> json) => ApiKey(
      username: json['username'] as String,
      clientKey: json['clientkey'] as String,
    );

Map<String, dynamic> _$ApiKeyToJson(ApiKey instance) => <String, dynamic>{
      'username': instance.username,
      'clientkey': instance.clientKey,
    };
