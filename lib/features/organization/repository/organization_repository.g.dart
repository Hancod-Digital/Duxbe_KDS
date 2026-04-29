// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(orgRepo)
const orgRepoProvider = OrgRepoProvider._();

final class OrgRepoProvider
    extends
        $FunctionalProvider<
          IOrganizationRepository,
          IOrganizationRepository,
          IOrganizationRepository
        >
    with $Provider<IOrganizationRepository> {
  const OrgRepoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'orgRepoProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$orgRepoHash();

  @$internal
  @override
  $ProviderElement<IOrganizationRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  IOrganizationRepository create(Ref ref) {
    return orgRepo(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(IOrganizationRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<IOrganizationRepository>(value),
    );
  }
}

String _$orgRepoHash() => r'd2424122f819c3d77256009d737cbfe588be7019';
