import 'dart:async';

import 'package:duxbe_kds/features/auth/auth.dart';

import 'package:duxbe_kds/shared/constants/db_constants.dart';

import 'package:duxbe_kds/shared/shared.dart';
import 'package:duxbe_kds/shared/utils/alert.dart';
import 'package:duxbe_kds/shared/utils/router.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hancod_theme/hancod_theme.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'auth_notifier.freezed.dart';
part 'auth_notifier.g.dart';
part 'auth_state.dart';

@Riverpod(keepAlive: true)
class AuthNotifier extends _$AuthNotifier {
  late IAuthRepository _authRepository;

  @override
  AuthNotifierState build() {
    _authRepository = ref.watch(authRepoProvider);

    // Check initial auth state and set status accordingly
    final currentSession = ref.read(supabaseProvider).auth.currentSession;
    if (currentSession != null && !currentSession.isExpired) {
      // User is authenticated
      return const AuthNotifierState(status: AuthStatus.success);
    }

    // User is not authenticated
    return const AuthNotifierState(
      status: AuthStatus.success,
    ); // Return success to unblock the UI
  }

  Future<void> signOut() async {
    // First, clear shared preferences
    await ref.read(sharedPrefsProvider).value!.clear();
    // await NotificationService().deleteToken();
    // Then sign out from Supabase
    await _authRepository.signOut();

    // Finally invalidate providers using microtask to avoid circular dependency issues
    await Future.microtask(() {
      // Invalidate business provider first, then self
      ref
        ..invalidate(employeeDetailsProvider)
        ..invalidate(selectedBusinessProvider)
        ..invalidate(sidebarRoutesProvider)
        // ..invalidate(organizationProvider)
        // ..invalidate(homeProvider)
        // ..invalidate(networkPrinterServiceProvider)
        // ..invalidate(bluetoothPrinterServiceProvider)
        // ..invalidate(usbPrinterServiceProvider)
        ..invalidateSelf();
    });
  }

  Future<void> updateUserPassword(
    String oldPassword,
    String newPassword,
  ) async {
    try {
      state = state.copyWith(status: AuthStatus.loading);
      final verified = await _authRepository.updateUserPassword(
        oldPassword,
        newPassword,
      );

      if (verified) {
        Alert.showSnackBar(
          AppRouter.l10n.passwordChangedSuccessfully,
          type: SnackBarType.success,
        );
      } else {
        Alert.showSnackBar(
          AppRouter.l10n.passwordChangingFailed,
          type: SnackBarType.error,
        );
      }
      state = state.copyWith(status: AuthStatus.success);
    } catch (e) {
      Alert.showSnackBar(e.toString(), type: SnackBarType.error);
      state = state.copyWith(status: AuthStatus.error);
    }
  }

  Future<void> updateUserDetails(
    String name,
    // ignore: type_annotate_public_apis, inference_failure_on_untyped_parameter
    var image, {
    String? phone,
  }) async {
    try {
      state = state.copyWith(status: AuthStatus.loading);
      await _authRepository.editEmployee(
        name: name,
        image: image,
        phone: phone,
      );
      ref.invalidate(employeeDetailsProvider);
      state = state.copyWith(status: AuthStatus.success);

      Alert.showSnackBar(
        'Profile updated successfully',
        type: SnackBarType.success,
      );
    } catch (e) {
      Alert.showSnackBar(e.toString(), type: SnackBarType.error);
      state = state.copyWith(status: AuthStatus.error);
    }
  }

  Future<void> sendOtp(String phone) async {
    try {
      state = state.copyWith(status: AuthStatus.loading);
      await _authRepository.sendOtp(phone);
      state = state.copyWith(status: AuthStatus.success);
    } catch (e) {
      Alert.showSnackBar(e.toString(), type: SnackBarType.error);
      state = state.copyWith(status: AuthStatus.error);
      rethrow;
    }
  }

  Future<void> setSession(String refreshToken) async {
    try {
      state = state.copyWith(status: AuthStatus.loading);
      await ref.read(supabaseProvider).auth.setSession(refreshToken);

      // On Web, signInWithOAuth redirects. This code might not run immediately, but on mobile it will.
      final currentUser = ref.read(supabaseProvider).auth.currentUser;
      if (currentUser != null) {
        final userList = await ref
            .read(supabaseProvider)
            .from(DbConstants.employeeView)
            .select(
              '*,organizations!employees_org_id_fkey(*),employee_branches_view(*)',
            )
            .eq('employee_id', currentUser.id);

        if (userList.isNotEmpty) {
          final user = EmployeeModel.fromJson(userList.single);
          // unawaited(NotificationService().registerToken());

          if (ref.read(selectedBusinessProvider) == null &&
              user.accessedBrances.isNotEmpty) {
            ref.read(selectedBusinessProvider.notifier).business =
                user.accessedBrances.first;
          }

          Alert.showSnackBar(
            AppRouter.l10n.loginSuccessfully,
            type: SnackBarType.success,
          );
        }
      }

      state = state.copyWith(status: AuthStatus.success);
    } catch (e) {
      Alert.showSnackBar(e.toString(), type: SnackBarType.error);
      state = state.copyWith(status: AuthStatus.error);
      rethrow;
    }
  }
}
