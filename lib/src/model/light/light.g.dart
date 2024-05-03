// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'light.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Light _$LightFromJson(Map<String, dynamic> json) => Light(
      type: json['type'] as String?,
      idV1: json['id_v1'] as String?,
      mode: json['mode'] as String,
      owner: Service.fromJson(json['owner'] as Map<String, dynamic>),
      metaData: MetaData.fromJson(json['metadata'] as Map<String, dynamic>),
      onValue: OnValue.fromJson(json['on'] as Map<String, dynamic>),
      dimming: Dimming.fromJson(json['dimming'] as Map<String, dynamic>),
      colorTemperature: ColorTemperature.fromJson(
          json['color_temperature'] as Map<String, dynamic>),
      color: Color.fromJson(json['color'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LightToJson(Light instance) => <String, dynamic>{
      'type': instance.type,
      'id_v1': instance.idV1,
      'mode': instance.mode,
      'owner': instance.owner,
      'metadata': instance.metaData,
      'on': instance.onValue,
      'dimming': instance.dimming,
      'color_temperature': instance.colorTemperature,
      'color': instance.color,
    };
