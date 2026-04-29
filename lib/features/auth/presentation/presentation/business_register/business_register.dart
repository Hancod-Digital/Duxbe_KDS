import 'package:duxbe_kds/features/auth/presentation/presentation/business_register/business_register_mobile.dart';
import 'package:duxbe_kds/features/auth/presentation/presentation/business_register/business_register_web.dart';
import 'package:duxbe_kds/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

export 'business_register_mobile.dart';
export 'business_register_web.dart';

class BusinessRegisterScreen extends ConsumerWidget {
  const BusinessRegisterScreen({super.key, this.onNext, this.onBack});
  final VoidCallback? onNext;
  final VoidCallback? onBack;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ResponsiveWidget(
      smallScreen: BusinessRegisterScreenMobile(onNext: onNext, onBack: onBack),
      largeScreen: BusinessRegisterScreenWeb(onNext: onNext, onBack: onBack),
    );
  }
}
