import 'package:duxbe_kds/features/auth/presentation/presentation/choose_business_type/choose_business_type_mobile.dart';
import 'package:duxbe_kds/features/auth/presentation/presentation/choose_business_type/choose_business_type_web.dart';
import 'package:duxbe_kds/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

export 'choose_business_type_mobile.dart';
export 'choose_business_type_web.dart';

/// Skeleton screen for choosing business type in the new auth flow.
/// Uses reactive_forms instead of flutter_form_builder.
class ChooseBusinessTypeScreen extends ConsumerWidget {
  const ChooseBusinessTypeScreen({super.key, this.onNext, this.onBack});

  final VoidCallback? onNext;
  final VoidCallback? onBack;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ResponsiveWidget(
      smallScreen: ChooseBusinessTypeScreenMobile(
        onNext: onNext,
        onBack: onBack,
      ),
      largeScreen: ChooseBusinessTypeScreenWeb(onNext: onNext, onBack: onBack),
    );
  }
}
