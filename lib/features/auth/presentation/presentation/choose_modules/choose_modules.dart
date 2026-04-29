import 'package:duxbe_kds/features/auth/presentation/presentation/choose_modules/choose_modules_mobile.dart';
import 'package:duxbe_kds/features/auth/presentation/presentation/choose_modules/choose_modules_web.dart';
import 'package:duxbe_kds/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

export 'choose_modules_mobile.dart';
export 'choose_modules_web.dart';

/// Skeleton screen for choosing modules in the new auth flow.
/// Uses reactive_forms instead of flutter_form_builder.
class ChooseModulesScreen extends ConsumerWidget {
  const ChooseModulesScreen({super.key, this.register, this.onBack});

  final VoidCallback? register;
  final VoidCallback? onBack;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ResponsiveWidget(
      smallScreen: ChooseModulesScreenMobile(
        register: register,
        onBack: onBack,
      ),
      largeScreen: ChooseModulesScreenWeb(register: register, onBack: onBack),
    );
  }
}
