// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: json['id'] as String,
      idV1: json['id_v1'] as String?,
      productData:
          ProductData.fromJson(json['product_data'] as Map<String, dynamic>),
      metadata: MetaData.fromJson(json['metadata'] as Map<String, dynamic>),
      services: (json['services'] as List<dynamic>)
          .map((e) => Service.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: json['type'] as String,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'id_v1': instance.idV1,
      'product_data': instance.productData,
      'metadata': instance.metadata,
      'services': instance.services,
      'type': instance.type,
    };
