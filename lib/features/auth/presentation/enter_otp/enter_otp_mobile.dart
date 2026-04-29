import 'package:duxbe_kds/features/auth/auth.dart';
import 'package:duxbe_kds/shared/shared.dart';
import 'package:duxbe_kds/shared/utils/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hancod_theme/hancod_theme.dart';

class EnterOtpScreenMobile extends ConsumerStatefulWidget {
  const EnterOtpScreenMobile({super.key});

  @override
  ConsumerState<EnterOtpScreenMobile> createState() =>
      _EnterOtpScreenMobileState();
}

class _EnterOtpScreenMobileState extends ConsumerState<EnterOtpScreenMobile> {
  @override
  Widget build(BuildContext context) {
    final email = GoRouterState.of(context).uri.queryParameters['email'];
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 90),
            Assets.images.duxbeLogo.image(),
            const SizedBox(height: 40),
            const Icon(
              Icons.mark_email_read,
              size: 80,
              color: AppColors.primaryColor,
            ),
            const SizedBox(height: 24),
            Text(
              context.l10n.cancel,
              style: AppText.heading4,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Text(
              context.l10n.weWillSendPasswordResetLinkToYourRegisteredEmailId,
              style: AppText.mediumN.copyWith(color: AppColors.greyText),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            AppButton(
              label: Text(context.l10n.backToLogin),
              onPress: () {
                context.goNamed(AppRouter.login);
              },
            ),
            const SizedBox(height: 16),
            AppButton(
              label: const Text('Resend'),
              isLoading: ref
                  .watch(asyncActionProvider(actionName: 'resend_email'))
                  .isLoading,
              onPress: () async {
                if (email != null) {
                  await ref
                      .read(
                        asyncActionProvider(
                          actionName: 'resend_email',
                        ).notifier,
                      )
                      .execute(
                        () async {
                          context.showSnackBar(
                            context
                                .l10n
                                .resetPasswordLinkSentSuccessfullyToYourEmail,
                            type: SnackBarType.success,
                          );
                          await ref
                              .read(authRepoProvider)
                              .forgotPassword(email);
                        },
                        error: (error, stackTrace) {
                          Alert.error(error.toString());
                        },
                      );
                }
              },
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
