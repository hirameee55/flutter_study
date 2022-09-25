import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wifi_scan/wifi_scan.dart';

part 'wifi_scan_state.freezed.dart';

@freezed
class WifiScanState with _$WifiScanState {
  const factory WifiScanState({
    @Default(false) bool scanState,
    @Default([]) List<WiFiAccessPoint> accessPoints,
  }) = _WifiScanState;
}
