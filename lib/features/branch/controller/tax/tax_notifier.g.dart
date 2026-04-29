// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tax_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TaxNotifier)
const taxProvider = TaxNotifierFamily._();

final class TaxNotifierProvider
    extends $NotifierProvider<TaxNotifier, TaxState> {
  const TaxNotifierProvider._({
    required TaxNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'taxProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$taxNotifierHash();

  @override
  String toString() {
    return r'taxProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  TaxNotifier create() => TaxNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TaxState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TaxState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is TaxNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$taxNotifierHash() => r'd3f3e7839efbd2ca0decb1b0d538b3761252e9c0';

final class TaxNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          TaxNotifier,
          TaxState,
          TaxState,
          TaxState,
          String
        > {
  const TaxNotifierFamily._()
    : super(
        retry: null,
        name: r'taxProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  TaxNotifierProvider call(String businessId) =>
      TaxNotifierProvider._(argument: businessId, from: this);

  @override
  String toString() => r'taxProvider';
}

abstract class _$TaxNotifier extends $Notifier<TaxState> {
  late final _$args = ref.$arg as String;
  String get businessId => _$args;

  TaxState build(String businessId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<TaxState, TaxState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<TaxState, TaxState>,
              TaxState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
