// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(businessRepo)
const businessRepoProvider = BusinessRepoProvider._();

final class BusinessRepoProvider
    extends
        $FunctionalProvider<
          IBusinessRepository,
          IBusinessRepository,
          IBusinessRepository
        >
    with $Provider<IBusinessRepository> {
  const BusinessRepoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'businessRepoProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$businessRepoHash();

  @$internal
  @override
  $ProviderElement<IBusinessRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  IBusinessRepository create(Ref ref) {
    return businessRepo(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(IBusinessRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<IBusinessRepository>(value),
    );
  }
}

String _$businessRepoHash() => r'a423817f14c8b4ede68d8171264e13facace139e';
