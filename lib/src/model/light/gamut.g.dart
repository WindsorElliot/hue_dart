// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gamut.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Gamut _$GamutFromJson(Map<String, dynamic> json) => Gamut(
      red: ColorXY.fromJson(json['red'] as Map<String, dynamic>),
      green: ColorXY.fromJson(json['green'] as Map<String, dynamic>),
      blue: ColorXY.fromJson(json['blue'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GamutToJson(Gamut instance) => <String, dynamic>{
      'red': instance.red,
      'green': instance.green,
      'blue': instance.blue,
    };
