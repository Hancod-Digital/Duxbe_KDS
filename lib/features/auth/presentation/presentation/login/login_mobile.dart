import 'package:duxbe_kds/shared/shared.dart';
import 'package:duxbe_kds/shared/utils/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hancod_theme/hancod_theme.dart';

class LoginScreenMobile extends ConsumerStatefulWidget {
  const LoginScreenMobile({
    super.key,
    this.onSubmit,
    this.onGoogle,
    this.onApple,
  });

  final Future<void> Function()? onSubmit;
  final Future<void> Function()? onGoogle;
  final Future<void> Function()? onApple;

  @override
  ConsumerState<LoginScreenMobile> createState() => _LoginScreenMobileState();
}

class _LoginScreenMobileState extends ConsumerState<LoginScreenMobile> {
  void _handleLogin(BuildContext context, WidgetRef ref) {
    ref
        .read(asyncActionProvider(actionName: 'login').notifier)
        .execute(
          () async {
            await widget.onSubmit?.call();
          },
          error: (error, stackTrace) {
            Alert.error(error.toString());
          },
        );
  }

  Widget _socialButton({required Widget icon, required VoidCallback onTap}) {
    return Material(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.textfieldOutline),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 50),
          child: icon,
        ),
      ),
    );
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
              child: Column(
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
                  const SizedBox(height: 30),
                  // Text(
                  //   'Get started with Duxbe',
                  //   style: AppText.heading4.copyWith(color: AppColors.white),
                  //   textAlign: TextAlign.center,
                  // ),
                  // const SizedBox(height: 16),
                  // Text(
                  //   context
                  //       .l10n
                  //       .accessYourPersonalizedDashboardByEnteringYourCredentialsBelow,
                  //   style: AppText.smallM.copyWith(color: AppColors.divider),
                  //   textAlign: TextAlign.center,
                  // ),
                  // const SizedBox(height: 26),
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
                        ReactiveEmailOrPhone(
                          formControlName: 'email_or_phone',
                          textInputAction: TextInputAction.done,
                          onSubmitted: (_) => _handleLogin(context, ref),
                          validationMessages: {
                            'email': (error) => 'Please enter a valid email',
                            'phone': (error) =>
                                'Please enter a valid phone number',
                            'required': (error) =>
                                'Please enter your email or phone number',
                          },
                          countryCode: ref.watch(countryCodeProvider),
                        ),
                        const SizedBox(height: 16),
                        AppButton(
                          isLoading: ref
                              .watch(asyncActionProvider(actionName: 'login'))
                              .isLoading,
                          label: Text(context.l10n.login),
                          onPress: () => _handleLogin(context, ref),
                        ),
                        const SizedBox(height: 20),
                        Stack(
                          children: [
                            const Divider(
                              color: AppColors.brandViolet,
                              thickness: 1,
                            ),
                            Center(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                    ),
                                    alignment: Alignment.center,
                                    color: AppColors.white,
                                    child: Text(
                                      'Or continue with',
                                      style: AppText.mediumM.copyWith(
                                        color: AppColors.stormyBlue,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 16,
                          children: [
                            _socialButton(
                              icon: Assets.icons.google.svg(),
                              onTap: () {
                                widget.onGoogle?.call();
                              },
                            ),
                            _socialButton(
                              icon: Assets.icons.apple.svg(),
                              onTap: () {
                                widget.onApple?.call();
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
