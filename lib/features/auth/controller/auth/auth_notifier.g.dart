// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AuthNotifier)
const authProvider = AuthNotifierProvider._();

final class AuthNotifierProvider
    extends $NotifierProvider<AuthNotifier, AuthNotifierState> {
  const AuthNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authNotifierHash();

  @$internal
  @override
  AuthNotifier create() => AuthNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthNotifierState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthNotifierState>(value),
    );
  }
}

String _$authNotifierHash() => r'5e2f13669eb9c9b50476d3e440de51137036cedc';

abstract class _$AuthNotifier extends $Notifier<AuthNotifierState> {
  AuthNotifierState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AuthNotifierState, AuthNotifierState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AuthNotifierState, AuthNotifierState>,
              AuthNotifierState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
