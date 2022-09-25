// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wifi_scan_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WifiScanState {
  bool get scanState => throw _privateConstructorUsedError;
  List<WiFiAccessPoint> get accessPoints => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WifiScanStateCopyWith<WifiScanState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WifiScanStateCopyWith<$Res> {
  factory $WifiScanStateCopyWith(
          WifiScanState value, $Res Function(WifiScanState) then) =
      _$WifiScanStateCopyWithImpl<$Res>;
  $Res call({bool scanState, List<WiFiAccessPoint> accessPoints});
}

/// @nodoc
class _$WifiScanStateCopyWithImpl<$Res>
    implements $WifiScanStateCopyWith<$Res> {
  _$WifiScanStateCopyWithImpl(this._value, this._then);

  final WifiScanState _value;
  // ignore: unused_field
  final $Res Function(WifiScanState) _then;

  @override
  $Res call({
    Object? scanState = freezed,
    Object? accessPoints = freezed,
  }) {
    return _then(_value.copyWith(
      scanState: scanState == freezed
          ? _value.scanState
          : scanState // ignore: cast_nullable_to_non_nullable
              as bool,
      accessPoints: accessPoints == freezed
          ? _value.accessPoints
          : accessPoints // ignore: cast_nullable_to_non_nullable
              as List<WiFiAccessPoint>,
    ));
  }
}

/// @nodoc
abstract class _$$_WifiScanStateCopyWith<$Res>
    implements $WifiScanStateCopyWith<$Res> {
  factory _$$_WifiScanStateCopyWith(
          _$_WifiScanState value, $Res Function(_$_WifiScanState) then) =
      __$$_WifiScanStateCopyWithImpl<$Res>;
  @override
  $Res call({bool scanState, List<WiFiAccessPoint> accessPoints});
}

/// @nodoc
class __$$_WifiScanStateCopyWithImpl<$Res>
    extends _$WifiScanStateCopyWithImpl<$Res>
    implements _$$_WifiScanStateCopyWith<$Res> {
  __$$_WifiScanStateCopyWithImpl(
      _$_WifiScanState _value, $Res Function(_$_WifiScanState) _then)
      : super(_value, (v) => _then(v as _$_WifiScanState));

  @override
  _$_WifiScanState get _value => super._value as _$_WifiScanState;

  @override
  $Res call({
    Object? scanState = freezed,
    Object? accessPoints = freezed,
  }) {
    return _then(_$_WifiScanState(
      scanState: scanState == freezed
          ? _value.scanState
          : scanState // ignore: cast_nullable_to_non_nullable
              as bool,
      accessPoints: accessPoints == freezed
          ? _value._accessPoints
          : accessPoints // ignore: cast_nullable_to_non_nullable
              as List<WiFiAccessPoint>,
    ));
  }
}

/// @nodoc

class _$_WifiScanState implements _WifiScanState {
  const _$_WifiScanState(
      {this.scanState = false,
      final List<WiFiAccessPoint> accessPoints = const []})
      : _accessPoints = accessPoints;

  @override
  @JsonKey()
  final bool scanState;
  final List<WiFiAccessPoint> _accessPoints;
  @override
  @JsonKey()
  List<WiFiAccessPoint> get accessPoints {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accessPoints);
  }

  @override
  String toString() {
    return 'WifiScanState(scanState: $scanState, accessPoints: $accessPoints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WifiScanState &&
            const DeepCollectionEquality().equals(other.scanState, scanState) &&
            const DeepCollectionEquality()
                .equals(other._accessPoints, _accessPoints));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(scanState),
      const DeepCollectionEquality().hash(_accessPoints));

  @JsonKey(ignore: true)
  @override
  _$$_WifiScanStateCopyWith<_$_WifiScanState> get copyWith =>
      __$$_WifiScanStateCopyWithImpl<_$_WifiScanState>(this, _$identity);
}

abstract class _WifiScanState implements WifiScanState {
  const factory _WifiScanState(
      {final bool scanState,
      final List<WiFiAccessPoint> accessPoints}) = _$_WifiScanState;

  @override
  bool get scanState;
  @override
  List<WiFiAccessPoint> get accessPoints;
  @override
  @JsonKey(ignore: true)
  _$$_WifiScanStateCopyWith<_$_WifiScanState> get copyWith =>
      throw _privateConstructorUsedError;
}
