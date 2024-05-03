// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mirek_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MirekSchema _$MirekSchemaFromJson(Map<String, dynamic> json) => MirekSchema(
      mirekMinimum: (json['mirek_minimum'] as num).toInt(),
      mirekMaximum: (json['mirek_maximum'] as num).toInt(),
    );

Map<String, dynamic> _$MirekSchemaToJson(MirekSchema instance) =>
    <String, dynamic>{
      'mirek_minimum': instance.mirekMinimum,
      'mirek_maximum': instance.mirekMaximum,
    };
