import 'package:duxbe_kds/features/auth/auth.dart';
import 'package:duxbe_kds/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

export 'signup_mobile.dart';
export 'signup_web.dart';

class SignupScreen extends ConsumerWidget {
  const SignupScreen({super.key, this.onNext});
  final Function? onNext;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ResponsiveWidget(
        smallScreen: SignupScreenMobile(onNext: onNext),
        largeScreen: SignupScreenWeb(onNext: onNext),
      ),
    );
  }
}
