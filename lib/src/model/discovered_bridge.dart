import 'package:hue_dart/src/model/response/response_body_discovered_bridge.dart';

class DiscoveredBridge {
  final String name;
  final String mac;
  final String bridgeId;
  final String modelId;
  final String addressIP;

  DiscoveredBridge._({
    required this.name,
    required this.mac,
    required this.bridgeId,
    required this.modelId,
    required this.addressIP,
  });

  factory DiscoveredBridge.fromResponseDiscoveredBridge(
          ResponseBodyDiscoveredBridge response, String address) =>
      DiscoveredBridge._(
        name: response.name,
        mac: response.mac,
        bridgeId: response.bridgeId,
        modelId: response.modelId,
        addressIP: address,
      );
}
