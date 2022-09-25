import 'package:flutter/material.dart';
import 'package:flutter_study/ui/wifi_scan/wifi_scan_view.dart';

class MenuData {
  final Widget icon;
  final String title;
  final Widget screen;

  MenuData({
    required this.icon,
    required this.title,
    required this.screen,
  });
}

class MenuView extends StatelessWidget {
  MenuView({super.key});

  final List<MenuData> listData = [
    MenuData(icon: const Icon(Icons.wifi), title: 'Wi-Fi Scan', screen: const WifiScanView()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          for (var data in listData)
            ListTile(
              title: Text(data.title),
              leading: data.icon,
              onTap: () {
                context.push(data.screen);
              },
            ),
        ],
      ),
    );
  }
}

extension Screen on BuildContext {
  push(Widget screen) {
    Navigator.of(this).push(
      MaterialPageRoute(
        builder: (context) {
          return screen;
        },
      ),
    );
  }
}
