import 'package:json_annotation/json_annotation.dart';

part 'product_data.g.dart';

@JsonSerializable()
class ProductData {
  @JsonKey(name: 'model_id')
  String modelId;
  @JsonKey(name: 'manufacturer_name')
  String manufacturerName;
  @JsonKey(name: 'product_name')
  String productName;
  @JsonKey(name: 'product_archetype')
  String productArchetype;
  @JsonKey(name: 'certified')
  bool certified;
  @JsonKey(name: 'software_version')
  String softwareVersion;
  @JsonKey(name: 'hardware_platform_type')
  String? hardwarePlatformType;

  ProductData({
    required this.modelId,
    required this.manufacturerName,
    required this.productName,
    required this.productArchetype,
    required this.certified,
    required this.softwareVersion,
    required this.hardwarePlatformType,
  });

  factory ProductData.fromJson(Map<String, dynamic> json) =>
      _$ProductDataFromJson(json);

  Map<String, dynamic> toJson() => _$ProductDataToJson(this);
}


// "product_data": {
//                 "model_id": "LWB010",
//                 "manufacturer_name": "Signify Netherlands B.V.",
//                 "product_name": "Hue white lamp",
//                 "product_archetype": "classic_bulb",
//                 "certified": true,
//                 "software_version": "1.108.7",
//                 "hardware_platform_type": "100b-10c"
//             },