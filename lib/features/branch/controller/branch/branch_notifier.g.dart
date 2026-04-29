// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(business)
const businessProvider = BusinessFamily._();

final class BusinessProvider
    extends
        $FunctionalProvider<
          AsyncValue<Business?>,
          Business?,
          FutureOr<Business?>
        >
    with $FutureModifier<Business?>, $FutureProvider<Business?> {
  const BusinessProvider._({
    required BusinessFamily super.from,
    required String? super.argument,
  }) : super(
         retry: null,
         name: r'businessProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$businessHash();

  @override
  String toString() {
    return r'businessProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Business?> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Business?> create(Ref ref) {
    final argument = this.argument as String?;
    return business(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is BusinessProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$businessHash() => r'e1290c2b337460ed1970d63aae40119e3b43b745';

final class BusinessFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Business?>, String?> {
  const BusinessFamily._()
    : super(
        retry: null,
        name: r'businessProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  BusinessProvider call(String? businessId) =>
      BusinessProvider._(argument: businessId, from: this);

  @override
  String toString() => r'businessProvider';
}

@ProviderFor(BranchNotifier)
const branchProvider = BranchNotifierProvider._();

final class BranchNotifierProvider
    extends $NotifierProvider<BranchNotifier, BranchState> {
  const BranchNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'branchProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$branchNotifierHash();

  @$internal
  @override
  BranchNotifier create() => BranchNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BranchState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BranchState>(value),
    );
  }
}

String _$branchNotifierHash() => r'0959cd8d6d946634b1a7821b60a9c453ea0edafd';

abstract class _$BranchNotifier extends $Notifier<BranchState> {
  BranchState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<BranchState, BranchState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<BranchState, BranchState>,
              BranchState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
