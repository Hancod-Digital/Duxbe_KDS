// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SelectedBusiness)
@JsonPersist()
const selectedBusinessProvider = SelectedBusinessProvider._();

@JsonPersist()
final class SelectedBusinessProvider
    extends $NotifierProvider<SelectedBusiness, EmployeeAccessModel?> {
  const SelectedBusinessProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedBusinessProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedBusinessHash();

  @$internal
  @override
  SelectedBusiness create() => SelectedBusiness();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EmployeeAccessModel? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EmployeeAccessModel?>(value),
    );
  }
}

String _$selectedBusinessHash() => r'13780c1455aac5b1a2452d6ebdb99f5d16c51d8f';

@JsonPersist()
abstract class _$SelectedBusinessBase extends $Notifier<EmployeeAccessModel?> {
  EmployeeAccessModel? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<EmployeeAccessModel?, EmployeeAccessModel?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<EmployeeAccessModel?, EmployeeAccessModel?>,
              EmployeeAccessModel?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

/// This is the main provider for the current user's details.
/// It uses an AsyncNotifier to reactively fetch data based on
/// auth state and the selected business.

@ProviderFor(EmployeeDetails)
const employeeDetailsProvider = EmployeeDetailsProvider._();

/// This is the main provider for the current user's details.
/// It uses an AsyncNotifier to reactively fetch data based on
/// auth state and the selected business.
final class EmployeeDetailsProvider
    extends $AsyncNotifierProvider<EmployeeDetails, EmployeeModel?> {
  /// This is the main provider for the current user's details.
  /// It uses an AsyncNotifier to reactively fetch data based on
  /// auth state and the selected business.
  const EmployeeDetailsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'employeeDetailsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$employeeDetailsHash();

  @$internal
  @override
  EmployeeDetails create() => EmployeeDetails();
}

String _$employeeDetailsHash() => r'244f495f49d959478bfe124aea69839288eee65d';

/// This is the main provider for the current user's details.
/// It uses an AsyncNotifier to reactively fetch data based on
/// auth state and the selected business.

abstract class _$EmployeeDetails extends $AsyncNotifier<EmployeeModel?> {
  FutureOr<EmployeeModel?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<EmployeeModel?>, EmployeeModel?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<EmployeeModel?>, EmployeeModel?>,
              AsyncValue<EmployeeModel?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(SidebarRoutes)
const sidebarRoutesProvider = SidebarRoutesProvider._();

final class SidebarRoutesProvider
    extends $AsyncNotifierProvider<SidebarRoutes, List<RouteItem>> {
  const SidebarRoutesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sidebarRoutesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sidebarRoutesHash();

  @$internal
  @override
  SidebarRoutes create() => SidebarRoutes();
}

String _$sidebarRoutesHash() => r'59f9a24248f5a057db9de4b24282030a14c49a5d';

abstract class _$SidebarRoutes extends $AsyncNotifier<List<RouteItem>> {
  FutureOr<List<RouteItem>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<RouteItem>>, List<RouteItem>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<RouteItem>>, List<RouteItem>>,
              AsyncValue<List<RouteItem>>,
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
abstract class _$SelectedBusiness extends _$SelectedBusinessBase {
  /// The default key used by [persist].
  String get key {
    const resolvedKey = "SelectedBusiness";
    return resolvedKey;
  }

  /// A variant of [persist], for JSON-specific encoding.
  ///
  /// You can override [key] to customize the key used for storage.
  PersistResult persist(
    FutureOr<Storage<String, String>> storage, {
    String? key,
    String Function(EmployeeAccessModel? state)? encode,
    EmployeeAccessModel? Function(String encoded)? decode,
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
                : EmployeeAccessModel?.fromJson(e as Map<String, Object?>);
          },
      options: options,
    );
  }
}
