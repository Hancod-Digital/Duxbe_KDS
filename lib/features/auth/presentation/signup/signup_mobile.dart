import 'package:duxbe_kds/features/auth/auth.dart';
import 'package:duxbe_kds/shared/shared.dart';
import 'package:duxbe_kds/shared/utils/assets.gen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import 'package:hancod_theme/hancod_theme.dart';

class SignupScreenMobile extends ConsumerStatefulWidget {
  const SignupScreenMobile({super.key, this.onNext});
  final Function? onNext;

  @override
  ConsumerState<SignupScreenMobile> createState() => _SignupScreenMobileState();
}

class _SignupScreenMobileState extends ConsumerState<SignupScreenMobile> {
  void _next(String? value) {
    final formState = FormBuilder.of(context);
    if (formState != null) {
      final isEmailValid = formState.fields['email']?.validate() ?? false;
      final isPasswordValid = formState.fields['password']?.validate() ?? false;

      if (isEmailValid && isPasswordValid) {
        widget.onNext?.call();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authProvider);
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Container(
                padding: const EdgeInsets.all(24),
                height: MediaQuery.sizeOf(context).height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: Assets.images.loginBgMobile.provider(),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Assets.icons.duxbeWhiteLogo.svg(height: 48),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      context.l10n.welcomeToDuxbe,
                      style: AppText.heading5.copyWith(color: AppColors.white),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      context.l10n.signupTitle,
                      style: AppText.smallN.copyWith(color: AppColors.white),
                    ),
                    const SizedBox(height: 34),
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
                          Text(
                            context.l10n.setUpYourAccount,
                            style: AppText.heading6,
                          ),
                          const SizedBox(height: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              AppTextForm<String>(
                                autofocus: true,
                                name: 'email',
                                validator: FormBuilderValidators.compose([
                                  FormBuilderValidators.email(),
                                  FormBuilderValidators.required(),
                                ]),
                                secondaryLabel: context.l10n.email,
                                hintText: 'your@example.com',
                                inputFormatters: [LowerCaseTextFormatter()],
                                keyboardType: TextInputType.emailAddress,
                                onSubmitted: _next,
                              ),
                              const SizedBox(height: 10),
                              AppTextForm<String>(
                                name: 'password',
                                validator: FormBuilderValidators.compose([
                                  FormBuilderValidators.minLength(6),
                                ]),
                                secondaryLabel: context.l10n.createPassword,
                                hintText: '*******',
                                enableObscureText: true,
                                keyboardType: TextInputType.visiblePassword,
                                onSubmitted: _next,
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Expanded(
                                child: AppButton(
                                  isLoading:
                                      authState.status == AuthStatus.loading,
                                  onPress: () => _next(null),
                                  label: Text(context.l10n.proceed),
                                ),
                              ),
                            ],
                          ),
                          // const SizedBox(height: 20),
                          // Stack(
                          //   children: [
                          //     const Divider(
                          //       color: AppColors.brandViolet,
                          //       thickness: 1,
                          //     ),
                          //     Center(
                          //       child: Row(
                          //         mainAxisSize: MainAxisSize.min,
                          //         children: [
                          //           Container(
                          //             padding: const EdgeInsets.symmetric(horizontal: 16),
                          //             alignment: Alignment.center,
                          //             color: AppColors.white,
                          //             child: Text(
                          //               'Or continue with',
                          //               style: AppText.mediumM.copyWith(color: AppColors.stormyBlue),
                          //             ),
                          //           ),
                          //         ],
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          // const SizedBox(height: 20),
                          // Row(
                          //   spacing: 16,
                          //   children:
                          //       [Assets.icons.google.svg(), Assets.icons.apple.svg(), Assets.icons.microsoft.svg()]
                          //           .map(
                          //             (e) => Expanded(
                          //               child: Material(
                          //                 color: AppColors.white,
                          //                 borderRadius: BorderRadius.circular(10),
                          //                 child: InkWell(
                          //                   borderRadius: BorderRadius.circular(10),
                          //                   onTap: () {}, // Replace with your handler if needed
                          //                   child: Container(
                          //                     decoration: BoxDecoration(
                          //                       border: Border.all(color: AppColors.textfieldOutline),
                          //                       borderRadius: BorderRadius.circular(10),
                          //                     ),
                          //                     padding: const EdgeInsets.symmetric(vertical: 8),
                          //                     child: e,
                          //                   ),
                          //                 ),
                          //               ),
                          //             ),
                          //           )
                          //           .toList(),
                          // ),
                          const SizedBox(height: 20),
                          Center(
                            child: Text.rich(
                              TextSpan(
                                text: context.l10n.alreadyHaveAnAccount,
                                style: AppText.mediumM.copyWith(
                                  color: AppColors.stormyBlue,
                                ),
                                children: [
                                  TextSpan(
                                    text: context.l10n.login,
                                    style: AppText.mediumM.copyWith(
                                      color: AppColors.brandViolet,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        context.pushNamed(AppRouter.login);
                                      },
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: AppText.smallN.copyWith(color: AppColors.white),
                        children: [
                          const TextSpan(
                            text: 'By continuing you agree to our ',
                          ),
                          TextSpan(
                            text: 'Terms and Conditions',
                            style: AppText.smallN.copyWith(
                              color: AppColors.lightPurple,
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                context.pushNamed(AppRouter.termsAndConditions);
                              },
                          ),
                          const TextSpan(text: ' and '),
                          TextSpan(
                            text: 'Privacy Policy',
                            style: AppText.smallN.copyWith(
                              color: AppColors.lightPurple,
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                context.pushNamed(AppRouter.privacyPolicy);
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
