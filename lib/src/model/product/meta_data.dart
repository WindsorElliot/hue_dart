import 'package:json_annotation/json_annotation.dart';

part 'meta_data.g.dart';

@JsonSerializable()
class MetaData {
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'archetype')
  String archetype;

  MetaData({
    required this.name,
    required this.archetype,
  });

  factory MetaData.fromJson(Map<String, dynamic> json) =>
      _$MetaDataFromJson(json);
  Map<String, dynamic> toJson() => _$MetaDataToJson(this);
}

// "metadata": {
//                 "name": "Mars",
//                 "archetype": "pendant_round"
//             },