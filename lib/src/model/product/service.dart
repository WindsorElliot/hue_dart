import 'package:json_annotation/json_annotation.dart';

part 'service.g.dart';

@JsonSerializable()
class Service {
  @JsonKey(name: 'rid')
  String rid;
  @JsonKey(name: 'rtype')
  String rType;

  Service({required this.rid, required this.rType});

  factory Service.fromJson(Map<String, dynamic> json) =>
      _$ServiceFromJson(json);
  Map<String, dynamic> toJson() => _$ServiceToJson(this);
}
