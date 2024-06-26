import 'package:example/pages/devices_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hue_dart/hue_dart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final HueDiscover _discover;
  late List<DiscoveredBridge> _bridgeAddress;

  @override
  void initState() {
    _bridgeAddress = [];
    _discover = HueDiscover(onBridgeAddressFound: _onBridgeAddressFound);
    super.initState();
  }

  void _startDiscover() async {
    await _discover.startDiscover();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final bridge = _bridgeAddress[index];
          return ListTile(
            title: Text(bridge.name),
            subtitle: Text("${bridge.addressIP} || ${bridge.mac}"),
            trailing: Text(bridge.modelId),
            onTap: () async {
              final client = HueClient("https://${bridge.addressIP}/",
                  certificate: await rootBundle.load(
                      'packages/hue_dart/assets/certificate/huebridge_cacert.pem'));
              if (!context.mounted) return;
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DevicesPage(
                    bridgeName: bridge.name,
                    username: "XBB4owOkBO6ETFYepq5b05ZE8SB93aq6HukrBXkQ",
                    client: client,
                  ),
                ),
              );
              // client.createApiKey("DartHue#iphone de Elliot").then((value) {
              //   Navigator.of(context).push(
              //     MaterialPageRoute(
              //       builder: (context) => DevicesPage(
              //         bridgeName: bridge.name,
              //         username: value.username,
              //         client: client,
              //       ),
              //     ),
              //   );
              // }).catchError((error) {
              //   context.displayError(error);
              // });
            },
          );
        },
        itemCount: _bridgeAddress.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _startDiscover,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  void _onBridgeAddressFound(DiscoveredBridge discoveredBridge) {
    setState(() {
      _bridgeAddress.add(discoveredBridge);
    });
  }
}
