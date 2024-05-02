// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductData _$ProductDataFromJson(Map<String, dynamic> json) => ProductData(
      modelId: json['model_id'] as String,
      manufacturerName: json['manufacturer_name'] as String,
      productName: json['product_name'] as String,
      productArchetype: json['product_archetype'] as String,
      certified: json['certified'] as bool,
      softwareVersion: json['software_version'] as String,
      hardwarePlatformType: json['hardware_platform_type'] as String?,
    );

Map<String, dynamic> _$ProductDataToJson(ProductData instance) =>
    <String, dynamic>{
      'model_id': instance.modelId,
      'manufacturer_name': instance.manufacturerName,
      'product_name': instance.productName,
      'product_archetype': instance.productArchetype,
      'certified': instance.certified,
      'software_version': instance.softwareVersion,
      'hardware_platform_type': instance.hardwarePlatformType,
    };
