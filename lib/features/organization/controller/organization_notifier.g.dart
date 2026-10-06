// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(OrganizationNotifier)
@JsonPersist()
const organizationProvider = OrganizationNotifierProvider._();

@JsonPersist()
final class OrganizationNotifierProvider
    extends $NotifierProvider<OrganizationNotifier, OrganizationDetails?> {
  const OrganizationNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'organizationProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$organizationNotifierHash();

  @$internal
  @override
  OrganizationNotifier create() => OrganizationNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(OrganizationDetails? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OrganizationDetails?>(value),
    );
  }
}

String _$organizationNotifierHash() =>
    r'0ba7ac9d0a559377c0b36eb3a2e44f4e2046667a';

@JsonPersist()
abstract class _$OrganizationNotifierBase
    extends $Notifier<OrganizationDetails?> {
  OrganizationDetails? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<OrganizationDetails?, OrganizationDetails?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<OrganizationDetails?, OrganizationDetails?>,
              OrganizationDetails?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// **************************************************************************
// JsonGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
abstract class _$OrganizationNotifier extends _$OrganizationNotifierBase {
  /// The default key used by [persist].
  String get key {
    const resolvedKey = "OrganizationNotifier";
    return resolvedKey;
  }

  /// A variant of [persist], for JSON-specific encoding.
  ///
  /// You can override [key] to customize the key used for storage.
  PersistResult persist(
    FutureOr<Storage<String, String>> storage, {
    String? key,
    String Function(OrganizationDetails? state)? encode,
    OrganizationDetails? Function(String encoded)? decode,
    StorageOptions options = const StorageOptions(),
  }) {
    return NotifierPersistX(this).persist<String, String>(
      storage,
      key: key ?? this.key,
      encode: encode ?? $jsonCodex.encode,
      decode:
          decode ??
          (encoded) {
            final e = $jsonCodex.decode(encoded);
            return e == null
                ? null
                : OrganizationDetails?.fromJson(e as Map<String, Object?>);
          },
      options: options,
    );
  }
}
