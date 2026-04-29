import 'package:duxbe_kds/features/auth/presentation/presentation/enter_otp/enter_otp_mobile.dart';
import 'package:duxbe_kds/features/auth/presentation/presentation/enter_otp/enter_otp_web.dart';
import 'package:duxbe_kds/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

export 'enter_otp_mobile.dart';
export 'enter_otp_web.dart';

class EnterOtpScreen extends ConsumerWidget {
  const EnterOtpScreen({
    super.key,
    this.onVerify,
    this.onResend,
    this.onBack,
    this.phoneNumber,
  });

  final Future<void> Function(String otp)? onVerify;
  final VoidCallback? onResend;
  final VoidCallback? onBack;
  final String? phoneNumber;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ResponsiveWidget(
      smallScreen: EnterOtpScreenMobile(
        onBack: onBack,
        onResend: onResend,
        onVerify: onVerify,
        phoneNumber: phoneNumber,
      ),
      largeScreen: EnterOtpScreenWeb(
        onBack: onBack,
        onResend: onResend,
        onVerify: onVerify,
        phoneNumber: phoneNumber,
      ),
    );
  }
}
