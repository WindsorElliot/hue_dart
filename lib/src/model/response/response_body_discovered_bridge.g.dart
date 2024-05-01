// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_body_discovered_bridge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseBodyDiscoveredBridge _$ResponseBodyDiscoveredBridgeFromJson(
        Map<String, dynamic> json) =>
    ResponseBodyDiscoveredBridge(
      name: json['name'] as String,
      datastoreVersion: json['datastoreversion'] as String,
      swVersion: json['swversion'] as String,
      apiVersion: json['apiversion'] as String,
      mac: json['mac'] as String,
      bridgeId: json['bridgeid'] as String,
      factoryNew: json['factorynew'] as bool,
      replacesBridgeId: json['replacesbridgeid'] as String?,
      modelId: json['modelid'] as String,
      starterKitId: json['starterkitid'] as String,
    );

Map<String, dynamic> _$ResponseBodyDiscoveredBridgeToJson(
        ResponseBodyDiscoveredBridge instance) =>
    <String, dynamic>{
      'name': instance.name,
      'datastoreversion': instance.datastoreVersion,
      'swversion': instance.swVersion,
      'apiversion': instance.apiVersion,
      'mac': instance.mac,
      'bridgeid': instance.bridgeId,
      'factorynew': instance.factoryNew,
      'replacesbridgeid': instance.replacesBridgeId,
      'modelid': instance.modelId,
      'starterkitid': instance.starterKitId,
    };
