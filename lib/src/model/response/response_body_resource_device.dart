import 'package:hue_dart/src/model/error/hue_base_error.dart';
import 'package:hue_dart/src/model/product/product.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response_body_resource_device.g.dart';

@JsonSerializable()
class ResponseBodyResourceDevice {
  @JsonKey(name: 'errors')
  final List<HueBaseError> errors;
  @JsonKey(name: 'data')
  final List<Product> data;

  ResponseBodyResourceDevice({
    required this.errors,
    required this.data,
  });

  factory ResponseBodyResourceDevice.fromJson(Map<String, dynamic> json) =>
      _$ResponseBodyResourceDeviceFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseBodyResourceDeviceToJson(this);
}
