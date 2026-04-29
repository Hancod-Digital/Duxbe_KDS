// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_order_lane_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(HomeOrderLaneNotifier)
const homeOrderLaneProvider = HomeOrderLaneNotifierFamily._();

final class HomeOrderLaneNotifierProvider
    extends $NotifierProvider<HomeOrderLaneNotifier, HomeOrderLaneState> {
  const HomeOrderLaneNotifierProvider._({
    required HomeOrderLaneNotifierFamily super.from,
    required Status super.argument,
  }) : super(
         retry: null,
         name: r'homeOrderLaneProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$homeOrderLaneNotifierHash();

  @override
  String toString() {
    return r'homeOrderLaneProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  HomeOrderLaneNotifier create() => HomeOrderLaneNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(HomeOrderLaneState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<HomeOrderLaneState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is HomeOrderLaneNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$homeOrderLaneNotifierHash() =>
    r'6540a4f0549e71b16ba68e7ee394e95bd109f8f3';

final class HomeOrderLaneNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          HomeOrderLaneNotifier,
          HomeOrderLaneState,
          HomeOrderLaneState,
          HomeOrderLaneState,
          Status
        > {
  const HomeOrderLaneNotifierFamily._()
    : super(
        retry: null,
        name: r'homeOrderLaneProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  HomeOrderLaneNotifierProvider call(Status status) =>
      HomeOrderLaneNotifierProvider._(argument: status, from: this);

  @override
  String toString() => r'homeOrderLaneProvider';
}

abstract class _$HomeOrderLaneNotifier extends $Notifier<HomeOrderLaneState> {
  late final _$args = ref.$arg as Status;
  Status get status => _$args;

  HomeOrderLaneState build(Status status);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<HomeOrderLaneState, HomeOrderLaneState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<HomeOrderLaneState, HomeOrderLaneState>,
              HomeOrderLaneState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
