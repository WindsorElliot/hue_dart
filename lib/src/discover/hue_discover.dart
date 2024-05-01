import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:multicast_dns/multicast_dns.dart';

import '../model/discovered_bridge.dart';

class HueDiscover {
  static String name = "_hue._tcp.local";
  final void Function(DiscoveredBridge)? onBridgeAddressFound;

  HueDiscover({required this.onBridgeAddressFound});

  Future<void> startDiscover({
    Duration timeout = const Duration(seconds: 5),
  }) async {
    final client = MDnsClient();
    await client.start();
    await for (final PtrResourceRecord ptr in client.lookup<PtrResourceRecord>(
        ResourceRecordQuery.serverPointer(name),
        timeout: timeout)) {
      await for (final SrvResourceRecord srv
          in client.lookup<SrvResourceRecord>(
              ResourceRecordQuery.service(ptr.domainName))) {
        await for (final IPAddressResourceRecord ip
            in client.lookup<IPAddressResourceRecord>(
                ResourceRecordQuery.addressIPv4(srv.target))) {
          debugPrint("Found Hue bridge at ${ip.address.address}");
          final bridge = await _askBridgeFounded(ip.address.address);
          if (bridge != null) {
            onBridgeAddressFound?.call(bridge);
          }
        }
      }
    }

    client.stop();
  }

  Future<DiscoveredBridge?> _askBridgeFounded(String address) async {
    try {
      final uri = Uri(
        scheme: "https",
        host: address,
        path: "api/0/config",
      );

      final dio = Dio();
      (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () =>
          HttpClient()
            ..badCertificateCallback =
                (X509Certificate cert, String host, int port) => true;

      final response = await dio.getUri(uri);
      if (response.statusCode != 200) return null;
      return DiscoveredBridge.fromJson(response.data);
    } catch (e) {
      debugPrint("Error asking bridge at $address: $e");
      return null;
    }
  }
}
