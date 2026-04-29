import 'package:duxbe_kds/features/auth/presentation/presentation/enter_password/enter_password_mobile.dart';
import 'package:duxbe_kds/features/auth/presentation/presentation/enter_password/enter_password_web.dart';
import 'package:duxbe_kds/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Skeleton screen for entering password.
/// Title dynamically shows "Enter Password" (existing user) or "Create Password" (new user).
class EnterPasswordScreen extends ConsumerWidget {
  const EnterPasswordScreen({
    required this.title,
    super.key,
    this.onNext,
    this.onBack,
  });

  final String title;
  final Future<void> Function()? onNext;
  final VoidCallback? onBack;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ResponsiveWidget(
      smallScreen: EnterPasswordScreenMobile(
        title: title,
        onNext: onNext,
        onBack: onBack,
      ),
      largeScreen: EnterPasswordScreenWeb(
        title: title,
        onNext: onNext,
        onBack: onBack,
      ),
    );
  }
}
