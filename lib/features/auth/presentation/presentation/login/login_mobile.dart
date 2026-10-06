import 'package:duxbe_kds/shared/shared.dart';
import 'package:duxbe_kds/shared/utils/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hancod_theme/hancod_theme.dart';

class LoginScreenMobile extends ConsumerStatefulWidget {
  const LoginScreenMobile({super.key, this.onSubmit});

  final Future<void> Function()? onSubmit;

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
