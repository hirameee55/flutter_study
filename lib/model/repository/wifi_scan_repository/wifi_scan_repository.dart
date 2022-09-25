import 'dart:async';

import 'package:wifi_scan/wifi_scan.dart';

abstract class WifiScanRepository {
  Future<void> startScan({required Function(WifiScanStatus, List<WiFiAccessPoint>?) stateCallback});
}

class WifiScanRepositoryImpl implements WifiScanRepository {
  StreamSubscription<List<WiFiAccessPoint>>? subscription;

  @override
  Future<void> startScan({required Function(WifiScanStatus, List<WiFiAccessPoint>?) stateCallback}) async {
    final can = await WiFiScan.instance.canStartScan(askPermissions: false);
    if (can != CanStartScan.yes) {
      stateCallback(WifiScanStatus.error, null);
      return;
    }

    final state = await WiFiScan.instance.startScan();
    if (!state) {
      stateCallback(WifiScanStatus.scanningError, await WiFiScan.instance.getScannedResults());
      return;
    }

    stateCallback(WifiScanStatus.scanning, null);
    await Future.delayed(const Duration(seconds: 2));

    subscription = WiFiScan.instance.onScannedResultsAvailable.listen((results) async {
      stateCallback(WifiScanStatus.success, results);
      subscription?.cancel();
      subscription = null;
    });
  }
}

enum WifiScanStatus {
  idle,
  scanning,
  scanningError,
  success,
  error,
}
