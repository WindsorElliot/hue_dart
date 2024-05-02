import 'package:flutter/material.dart';
import 'package:hue_dart/hue_dart.dart';

class DevicesPage extends StatelessWidget {
  final String bridgeName;
  final String username;
  final HueClient client;

  const DevicesPage({
    super.key,
    required this.bridgeName,
    required this.username,
    required this.client,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(bridgeName),
      ),
      body: FutureBuilder(
        future: client.retrieveDevices(username),
        builder:
            (BuildContext context, AsyncSnapshot<List<Product>> snapshot) =>
                snapshot.connectionState == ConnectionState.waiting
                    ? const Center(child: CircularProgressIndicator())
                    : snapshot.hasError
                        ? Center(
                            child: Text(snapshot.error.toString()),
                          )
                        : ListView.builder(
                            itemBuilder: (context, index) {
                              final device = snapshot.data?.elementAt(index);
                              return ListTile(
                                title: Text(device?.metadata.name ?? ''),
                                subtitle: Text(device?.type ?? ''),
                              );
                            },
                            itemCount: snapshot.data?.length,
                          ),
      ),
    );
  }
}
