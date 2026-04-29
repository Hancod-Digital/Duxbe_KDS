part of 'auth_notifier.dart';

enum AuthStatus { initial, loading, success, error }

@freezed
sealed class AuthNotifierState with _$AuthNotifierState {
  const factory AuthNotifierState({
    @Default(AuthStatus.initial) AuthStatus status,
    @Default('') String error,
    AuthResponse? authResponse,
  }) = _AuthState;

  factory AuthNotifierState.initial() => const AuthNotifierState();
}
