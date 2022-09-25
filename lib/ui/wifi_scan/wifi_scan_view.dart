import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_study/ui/wifi_scan/wifi_scan_view_model.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class WifiScanView extends ConsumerWidget {
  const WifiScanView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final wifiScanState = ref.watch(wifiScanProvider);
    final wifiScanNotifier = ref.watch(wifiScanProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Wi-Fi Scan'),
      ),
      body: SafeArea(
        child: !wifiScanState.scanState
            ? ListView(
                padding: const EdgeInsets.symmetric(vertical: 8),
                children: [
                  for (var accessPoint in wifiScanState.accessPoints)
                    ListTile(
                      leading: ExcludeSemantics(
                        child: CircleAvatar(child: Text(accessPoint.level.toString())),
                      ),
                      title: Text(accessPoint.ssid),
                    ),
                ],
              )
            : Center(
                child: LoadingAnimationWidget.staggeredDotsWave(
                  color: Colors.pinkAccent,
                  size: 50,
                ),
              ),
      ),
      floatingActionButton: !wifiScanState.scanState
          ? FloatingActionButton(
              onPressed: () async {
                wifiScanNotifier.startScanWifi();
              },
              child: const Icon(Icons.wifi),
            )
          : null,
    );
  }
}
