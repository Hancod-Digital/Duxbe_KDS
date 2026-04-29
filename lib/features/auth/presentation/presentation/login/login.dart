import 'package:duxbe_kds/features/auth/presentation/presentation/login/login_mobile.dart';
import 'package:duxbe_kds/features/auth/presentation/presentation/login/login_web.dart';
import 'package:duxbe_kds/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

export 'login_mobile.dart';
export 'login_web.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key, this.onSubmit, this.onGoogle, this.onApple});

  /// Called when the user submits the email or phone field.
  final Future<void> Function()? onSubmit;
  final Future<void> Function()? onGoogle;
  final Future<void> Function()? onApple;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ResponsiveWidget(
      smallScreen: LoginScreenMobile(
        onSubmit: onSubmit,
        onApple: onApple,
        onGoogle: onGoogle,
      ),
      largeScreen: LoginScreenWeb(
        onSubmit: onSubmit,
        onApple: onApple,
        onGoogle: onGoogle,
      ),
    );
  }
}
