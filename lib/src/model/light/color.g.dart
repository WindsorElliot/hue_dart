// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Color _$ColorFromJson(Map<String, dynamic> json) => Color(
      xy: ColorXY.fromJson(json['xy'] as Map<String, dynamic>),
      gamut: Gamut.fromJson(json['gamut'] as Map<String, dynamic>),
      gamutType: json['gamut_type'] as String,
    );

Map<String, dynamic> _$ColorToJson(Color instance) => <String, dynamic>{
      'xy': instance.xy,
      'gamut': instance.gamut,
      'gamut_type': instance.gamutType,
    };
