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

class SignupScreenWeb extends ConsumerStatefulWidget {
  const SignupScreenWeb({super.key, this.onNext});
  final Function? onNext;

  @override
  ConsumerState<SignupScreenWeb> createState() => _SignupScreenWebState();
}

class _SignupScreenWebState extends ConsumerState<SignupScreenWeb> {
  void _next(String? value) {
    if (FormBuilder.of(context)?.saveAndValidate() ?? false) {
      widget.onNext?.call();
    }
  }

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
                    context.l10n.welcomeToDuxbe,
                    style: AppText.heading1.copyWith(
                      fontSize: 80,
                      height: 1.1,
                      color: AppColors.white,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    context.l10n.signupTitle,
                    style: AppText.heading5.copyWith(
                      color: AppColors.white,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 220),
              Container(
                alignment: Alignment.center,
                constraints: const BoxConstraints(maxWidth: 600),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
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
                          Text(
                            context.l10n.createAnAccount,
                            style: AppText.heading3.copyWith(
                              color: AppColors.title,
                            ),
                          ),
                          const SizedBox(height: 14),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              AppTextForm<String>(
                                name: 'email',
                                validator: FormBuilderValidators.compose([
                                  FormBuilderValidators.email(),
                                  FormBuilderValidators.required(),
                                ]),
                                onSubmitted: _next,
                                label: context.l10n.email,
                                hintText: context.l10n.yourExampleCom,
                                inputFormatters: [LowerCaseTextFormatter()],
                              ),
                              const SizedBox(height: 30),
                              AppTextForm<String>(
                                name: 'password',
                                validator: FormBuilderValidators.compose([
                                  FormBuilderValidators.minLength(6),
                                ]),
                                label: context.l10n.createPassword,
                                hintText: '*******',
                                enableObscureText: true,
                                onSubmitted: _next,
                                keyboardType: TextInputType.visiblePassword,
                              ),
                              const SizedBox(height: 30),
                              AppButton(
                                label: Text(context.l10n.proceed),
                                onPress: () => _next(null),
                                isLoading:
                                    ref.watch(authProvider).status ==
                                    AuthStatus.loading,
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
                                        color: AppColors.brandViolet,
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
            ],
          ),
        ],
      ),
    );
  }
}
