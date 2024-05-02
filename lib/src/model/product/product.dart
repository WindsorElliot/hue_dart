import 'package:hue_dart/src/model/product/product_data.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:hue_dart/src/model/product/service.dart';
import 'package:hue_dart/src/model/product/meta_data.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'id_v1')
  final String? idV1;
  @JsonKey(name: 'product_data')
  final ProductData productData;
  @JsonKey(name: 'metadata')
  final MetaData metadata;
  @JsonKey(name: 'services')
  final List<Service> services;
  @JsonKey(name: 'type')
  final String type;

  Product({
    required this.id,
    required this.idV1,
    required this.productData,
    required this.metadata,
    required this.services,
    required this.type,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
