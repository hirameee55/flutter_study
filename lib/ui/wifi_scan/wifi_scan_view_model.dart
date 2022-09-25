import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_study/model/repository/wifi_scan_repository/wifi_scan_repository.dart';
import 'package:flutter_study/ui/wifi_scan/wifi_scan_state.dart';

final wifiScanProvider = StateNotifierProvider.autoDispose<WifiScanViewModel, WifiScanState>(
  (ref) => WifiScanViewModel(),
);

class WifiScanViewModel extends StateNotifier<WifiScanState> {
  final WifiScanRepositoryImpl _wifiScanRepository;

  WifiScanViewModel({WifiScanRepositoryImpl? wifiScanRepository})
      : _wifiScanRepository = wifiScanRepository ?? WifiScanRepositoryImpl(),
        super(const WifiScanState());

  Future<void> startScanWifi() async {
    await _wifiScanRepository.startScan(stateCallback: (status, results) {
      switch (status) {
        case WifiScanStatus.scanning:
          state = state.copyWith(scanState: true);
          break;

        case WifiScanStatus.scanningError:
        case WifiScanStatus.success:
          results!.sort((a, b) => -a.level.compareTo(b.level));
          state = state.copyWith(scanState: false, accessPoints: results);
          break;

        default:
          state = state.copyWith(scanState: false);
          break;
      }
    });
  }
}
