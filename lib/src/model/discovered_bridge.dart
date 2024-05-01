import 'package:json_annotation/json_annotation.dart';

part 'discovered_bridge.g.dart';

@JsonSerializable()
class DiscoveredBridge {
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "datastoreversion")
  final String datastoreVersion;
  @JsonKey(name: "swversion")
  final String swVersion;
  @JsonKey(name: "apiversion")
  final String apiVersion;
  @JsonKey(name: "mac")
  final String mac;
  @JsonKey(name: "bridgeid")
  final String bridgeId;
  @JsonKey(name: "factorynew")
  final bool factoryNew;
  @JsonKey(name: "replacesbridgeid")
  final String? replacesBridgeId;
  @JsonKey(name: "modelid")
  final String modelId;
  @JsonKey(name: "starterkitid")
  final String starterKitId;

  DiscoveredBridge({
    required this.name,
    required this.datastoreVersion,
    required this.swVersion,
    required this.apiVersion,
    required this.mac,
    required this.bridgeId,
    required this.factoryNew,
    required this.replacesBridgeId,
    required this.modelId,
    required this.starterKitId,
  });

  factory DiscoveredBridge.fromJson(Map<String, dynamic> json) =>
      _$DiscoveredBridgeFromJson(json);

  Map<String, dynamic> toJson() => _$DiscoveredBridgeToJson(this);
}
