// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supabase_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(supabase)
const supabaseProvider = SupabaseProvider._();

final class SupabaseProvider
    extends $FunctionalProvider<SupabaseClient, SupabaseClient, SupabaseClient>
    with $Provider<SupabaseClient> {
  const SupabaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'supabaseProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$supabaseHash();

  @$internal
  @override
  $ProviderElement<SupabaseClient> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SupabaseClient create(Ref ref) {
    return supabase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SupabaseClient value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SupabaseClient>(value),
    );
  }
}

String _$supabaseHash() => r'7750c766113ae9b14a18705c73c53e2e92e2ddbd';

@ProviderFor(authState)
const authStateProvider = AuthStateProvider._();

final class AuthStateProvider
    extends
        $FunctionalProvider<AsyncValue<AuthState>, AuthState, Stream<AuthState>>
    with $FutureModifier<AuthState>, $StreamProvider<AuthState> {
  const AuthStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authStateProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authStateHash();

  @$internal
  @override
  $StreamProviderElement<AuthState> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<AuthState> create(Ref ref) {
    return authState(ref);
  }
}

String _$authStateHash() => r'98a64933f908189f6514f9165e8cf1ea4adc3455';
