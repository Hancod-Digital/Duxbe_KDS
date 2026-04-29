import 'package:duxbe_kds/features/auth/auth.dart';
import 'package:duxbe_kds/shared/shared.dart';
import 'package:duxbe_kds/shared/utils/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hancod_theme/hancod_theme.dart';

class EnterOtpScreenWeb extends ConsumerStatefulWidget {
  const EnterOtpScreenWeb({super.key});

  @override
  ConsumerState<EnterOtpScreenWeb> createState() => _EnterOtpScreenWebState();
}

class _EnterOtpScreenWebState extends ConsumerState<EnterOtpScreenWeb> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.images.loginBg.provider(),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 58,
            left: 0,
            right: 0,
            child: Text(
              context.l10n.copyright,
              textAlign: TextAlign.center,
              style: AppText.largeN.copyWith(color: AppColors.white),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Assets.icons.duxbeWhiteLogo.svg(height: 88),
                  const SizedBox(height: 44),
                  Text(
                    context.l10n.loginTitle,
                    style: AppText.heading1.copyWith(
                      fontSize: 80,
                      height: 1.1,
                      color: AppColors.white,
                    ),
                  ),
                  Text(
                    context.l10n.loginSubtitle,
                    style: AppText.heading5.copyWith(color: AppColors.white),
                  ),
                  const SizedBox(height: 44),
                  ...[
                    context.l10n.feature1,
                    context.l10n.feature2,
                    context.l10n.feature3,
                    context.l10n.feature4,
                  ].map(
                    (e) => Row(
                      children: [
                        const Icon(
                          CupertinoIcons.check_mark_circled,
                          color: AppColors.white,
                        ),
                        const SizedBox(width: 6, height: 36),
                        Text(
                          e,
                          style: AppText.xLargeN.copyWith(
                            color: AppColors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 220),
              Container(
                alignment: Alignment.center,
                constraints: const BoxConstraints(maxWidth: 600),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 48,
                    vertical: 40,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.mark_email_read,
                        size: 80,
                        color: AppColors.primaryColor,
                      ),
                      const SizedBox(height: 24),
                      Text(
                        context
                            .l10n
                            .resetPasswordLinkSentSuccessfullyToYourEmail,
                        style: AppText.heading3.copyWith(
                          color: AppColors.title,
                        ),
                      ),
                      const SizedBox(height: 14),
                      Text(
                        context
                            .l10n
                            .weWillSendPasswordResetLinkToYourRegisteredEmailId,
                        style: AppText.largeN.copyWith(
                          color: AppColors.stormyBlue,
                        ),
                      ),
                      const SizedBox(height: 34),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          AppButton(
                            isLoading:
                                ref.watch(authProvider).status ==
                                AuthStatus.loading,
                            label: Text(context.l10n.backToLogin),
                            onPress: () {
                              context.goNamed(AppRouter.login);
                            },
                          ),
                          const SizedBox(height: 16),
                          AppButton(
                            label: Text(context.l10n.retry),
                            onPress: () {
                              // TODO: Implement resend functionality
                              context.showSnackBar(
                                context
                                    .l10n
                                    .resetPasswordLinkSentSuccessfullyToYourEmail,
                                type: SnackBarType.success,
                              );
                            },
                          ),
                          const SizedBox(height: 30),
                          Text.rich(
                            TextSpan(
                              text: context.l10n.alreadyHaveAnAccount,
                              style: AppText.mediumM.copyWith(
                                color: AppColors.stormyBlue,
                              ),
                              children: [
                                TextSpan(
                                  text: context.l10n.login,
                                  style: AppText.mediumM.copyWith(
                                    color: AppColors.primaryColor,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      context.goNamed(AppRouter.login);
                                    },
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
