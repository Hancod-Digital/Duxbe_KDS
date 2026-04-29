import 'dart:async';
import 'dart:io';

import 'package:duxbe_kds/shared/shared.dart';
import 'package:duxbe_kds/shared/utils/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hancod_theme/hancod_theme.dart';
import 'package:pinput/pinput.dart';
import 'package:smart_auth/smart_auth.dart';

class EnterOtpScreenMobile extends ConsumerStatefulWidget {
  const EnterOtpScreenMobile({
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
  ConsumerState<EnterOtpScreenMobile> createState() =>
      _EnterOtpScreenMobileState();
}

class _EnterOtpScreenMobileState extends ConsumerState<EnterOtpScreenMobile> {
  final TextEditingController _otpController = TextEditingController();
  Timer? _timer;
  int _remainingSeconds = 90; // 1:30 minutes in seconds
  bool _canResend = false;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _remainingSeconds = 90;
    _canResend = false;
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remainingSeconds > 0) {
        setState(() {
          _remainingSeconds--;
        });
      } else {
        setState(() {
          _canResend = true;
        });
        timer.cancel();
      }
    });
  }

  String _formatTime(int seconds, BuildContext context) {
    final minutes = seconds ~/ 60;
    final remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  bool get _showWhatsappInfo => widget.phoneNumber?.trim().isNotEmpty ?? false;

  String get _phoneLabel {
    final phone = widget.phoneNumber?.trim() ?? '';
    if (phone.isEmpty) {
      return '';
    }
    return phone.startsWith('(') ? phone : '($phone)';
  }

  @override
  void dispose() {
    _timer?.cancel();
    _otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Assets.images.loginBgMobile.provider(),
                  fit: BoxFit.cover,
                ),
              ),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight - 48,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          spacing: 12,
                          children: [
                            Assets.icons.duxbeWhiteLogo.svg(height: 66),
                            Assets.icons.duxbeWhiteText.svg(height: 33),
                          ],
                        ),
                        const SizedBox(height: 60),
                        Text(
                          'Verify Code',
                          style: AppText.heading4.copyWith(
                            color: AppColors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 26),

                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(14),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 20,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              if (_showWhatsappInfo) ...[
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      Assets.icons.whatsapp.path,
                                      height: 24,
                                      width: 24,
                                    ),
                                    const SizedBox(width: 10),
                                    Expanded(
                                      child: Text(
                                        "We've sent a 6-digit verification code to your WhatsApp number $_phoneLabel.",
                                        style: AppText.mediumM.copyWith(
                                          color: AppColors.stormyBlue,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 16),
                              ],
                              Pinput(
                                // smsRetriever: kIsWeb
                                //     ? null
                                //     : Platform.isIOS
                                //     ? null
                                //     : SmsRetrieverImpl(SmartAuth.instance),
                                autofocus: true,
                                controller: _otpController,
                                defaultPinTheme: PinTheme(
                                  width: 48,
                                  height: 56,
                                  textStyle: AppText.mediumM.copyWith(
                                    color: AppColors.black,
                                  ),
                                  decoration: ShapeDecoration(
                                    shape: RoundedSuperellipseBorder(
                                      side: const BorderSide(
                                        color: Color(0xFFC7C7C7),
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                focusedPinTheme: PinTheme(
                                  width: 48,
                                  height: 56,
                                  textStyle: AppText.mediumM.copyWith(
                                    color: AppColors.black,
                                  ),
                                  decoration: ShapeDecoration(
                                    shape: RoundedSuperellipseBorder(
                                      side: const BorderSide(
                                        color: AppColors.primaryColor,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                submittedPinTheme: PinTheme(
                                  width: 48,
                                  height: 56,
                                  textStyle: AppText.mediumM.copyWith(
                                    color: AppColors.black,
                                  ),
                                  decoration: ShapeDecoration(
                                    shape: RoundedSuperellipseBorder(
                                      side: const BorderSide(
                                        color: AppColors.primaryColor,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                errorPinTheme: PinTheme(
                                  width: 48,
                                  height: 56,
                                  textStyle: AppText.mediumM.copyWith(
                                    color: AppColors.primaryColor,
                                  ),
                                  decoration: ShapeDecoration(
                                    shape: RoundedSuperellipseBorder(
                                      side: const BorderSide(
                                        color: AppColors.red,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),

                                showCursor: false,
                                obscuringCharacter: '_',
                                preFilledWidget: Text(
                                  '_',
                                  style: AppText.mediumM.copyWith(
                                    color: AppColors.greyNew,
                                  ),
                                ),
                                length: 6,
                                onCompleted: (pin) {
                                  ref
                                      .read(
                                        asyncActionProvider(
                                          actionName: 'verifyOtp',
                                        ).notifier,
                                      )
                                      .execute(
                                        () async {
                                          await widget.onVerify?.call(pin);
                                        },
                                        error: (error, stackTrace) {
                                          Alert.error(error.toString());
                                        },
                                      );
                                },
                                onSubmitted: (pin) {
                                  ref
                                      .read(
                                        asyncActionProvider(
                                          actionName: 'verifyOtp',
                                        ).notifier,
                                      )
                                      .execute(
                                        () async {
                                          await widget.onVerify?.call(pin);
                                        },
                                        error: (error, stackTrace) {
                                          Alert.error(error.toString());
                                        },
                                      );
                                },
                              ),
                              const SizedBox(height: 16),
                              AppButton(
                                isLoading: ref
                                    .watch(
                                      asyncActionProvider(
                                        actionName: 'verifyOtp',
                                      ),
                                    )
                                    .isLoading,
                                label: Text(
                                  _showWhatsappInfo
                                      ? 'Verify'
                                      : context.l10n.proceed,
                                ),
                                onPress: () {
                                  ref
                                      .read(
                                        asyncActionProvider(
                                          actionName: 'verifyOtp',
                                        ).notifier,
                                      )
                                      .execute(
                                        () async {
                                          if (_otpController.text.length == 6) {
                                            await widget.onVerify?.call(
                                              _otpController.text,
                                            );
                                          }
                                        },
                                        error: (error, stackTrace) {
                                          Alert.error(error.toString());
                                        },
                                      );
                                },
                              ),
                              Row(
                                spacing: 12,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  if (!_canResend)
                                    Text(
                                      _formatTime(_remainingSeconds, context),
                                      style: AppText.mediumM.copyWith(
                                        color: AppColors.blue,
                                      ),
                                    ),
                                  CupertinoButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: _canResend
                                        ? () {
                                            // Handle resend code
                                            widget.onResend?.call();
                                            _startTimer();
                                          }
                                        : null,
                                    child: Text(
                                      'Resend Code',
                                      style: AppText.mediumM.copyWith(
                                        color: _canResend
                                            ? AppColors.blue
                                            : AppColors.greyNew,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: 36,
                      left: 0,
                      child: GestureDetector(
                        onTap: widget.onBack,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff180759),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: const EdgeInsets.all(9),
                          child: const Icon(
                            Icons.arrow_back_ios_new,
                            color: AppColors.white,
                            size: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
