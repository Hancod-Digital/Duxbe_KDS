// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choose_modules_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ChooseModulesNotifier)
const chooseModulesProvider = ChooseModulesNotifierFamily._();

final class ChooseModulesNotifierProvider
    extends $NotifierProvider<ChooseModulesNotifier, ChooseModulesState> {
  const ChooseModulesNotifierProvider._({
    required ChooseModulesNotifierFamily super.from,
    required String? super.argument,
  }) : super(
         retry: null,
         name: r'chooseModulesProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$chooseModulesNotifierHash();

  @override
  String toString() {
    return r'chooseModulesProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ChooseModulesNotifier create() => ChooseModulesNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ChooseModulesState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ChooseModulesState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ChooseModulesNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$chooseModulesNotifierHash() =>
    r'5ebdce98b4322d28dd6acbc06edf1f505274e94d';

final class ChooseModulesNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          ChooseModulesNotifier,
          ChooseModulesState,
          ChooseModulesState,
          ChooseModulesState,
          String?
        > {
  const ChooseModulesNotifierFamily._()
    : super(
        retry: null,
        name: r'chooseModulesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  ChooseModulesNotifierProvider call(String? businessType) =>
      ChooseModulesNotifierProvider._(argument: businessType, from: this);

  @override
  String toString() => r'chooseModulesProvider';
}

abstract class _$ChooseModulesNotifier extends $Notifier<ChooseModulesState> {
  late final _$args = ref.$arg as String?;
  String? get businessType => _$args;

  ChooseModulesState build(String? businessType);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<ChooseModulesState, ChooseModulesState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ChooseModulesState, ChooseModulesState>,
              ChooseModulesState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
