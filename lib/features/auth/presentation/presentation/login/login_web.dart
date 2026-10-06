import 'package:duxbe_kds/shared/shared.dart';
import 'package:duxbe_kds/shared/utils/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hancod_theme/hancod_theme.dart';

class LoginScreenWeb extends ConsumerStatefulWidget {
  const LoginScreenWeb({super.key, this.onSubmit});

  final Future<void> Function()? onSubmit;

  @override
  ConsumerState<LoginScreenWeb> createState() => _LoginScreenWebState();
}

class _LoginScreenWebState extends ConsumerState<LoginScreenWeb> {
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

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: Assets.images.loginBg.image(fit: BoxFit.cover)),
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
        LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 550),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            spacing: 12,
                            children: [
                              Assets.icons.duxbeWhiteLogo.svg(height: 88),
                              Assets.icons.duxbeWhiteText.svg(height: 44),
                            ],
                          ),
                          const SizedBox(height: 60),

                          Text(
                            'ERP REDEFINED',
                            style: AppText.b42.copyWith(color: AppColors.white),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Your Partner in Streamlined Sales',
                            style: AppText.sb20.copyWith(
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
                              horizontal: 75,
                              vertical: 36,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  'Get started with Duxbe',
                                  style: AppText.b32.copyWith(
                                    color: AppColors.black,
                                  ),
                                ),
                                const SizedBox(height: 24),
                                ReactiveEmailOrPhone(
                                  label: 'Email or Mobile Number',
                                  formControlName: 'email_or_phone',
                                  textInputAction: TextInputAction.done,
                                  onSubmitted: (_) =>
                                      _handleLogin(context, ref),
                                  validationMessages: {
                                    'email': (error) =>
                                        'Please enter a valid email',
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
                                      .watch(
                                        asyncActionProvider(
                                          actionName: 'login',
                                        ),
                                      )
                                      .isLoading,
                                  label: Text(context.l10n.login),
                                  onPress: () => _handleLogin(context, ref),
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  children: [
                                    Image.asset(
                                      Assets.icons.whatsapp.path,
                                      height: 20,
                                      width: 20,
                                    ),
                                    const SizedBox(width: 8),
                                    const Text(
                                      'OTP will be sent to your Whatsapp Number',
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
