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
import 'package:url_launcher/url_launcher_string.dart';

class ForgotPasswordScreenMobile extends ConsumerStatefulWidget {
  const ForgotPasswordScreenMobile({super.key});

  @override
  ConsumerState<ForgotPasswordScreenMobile> createState() =>
      _ForgotPasswordScreenMobileState();
}

class _ForgotPasswordScreenMobileState
    extends ConsumerState<ForgotPasswordScreenMobile> {
  final _formKey = GlobalKey<FormBuilderState>();

  Future<void> _forgotPassword() async {
    if (_formKey.currentState?.saveAndValidate() ?? false) {
      await ref
          .read(asyncActionProvider(actionName: 'forgot_password').notifier)
          .execute(
            () async {
              await ref
                  .read(authRepoProvider)
                  .forgotPassword(
                    _formKey.currentState!.value['email'].toString(),
                  )
                  .then((value) {
                    AppRouter.pushNamed(
                      AppRouter.enterOTP,
                      queryParameters: {
                        'email': _formKey.currentState!.value['email'],
                      },
                    );
                  });
            },
            error: (error, stackTrace) {
              Alert.error(error.toString());
            },
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _formKey,
      child: Container(
        padding: const EdgeInsets.all(24),
        height: MediaQuery.sizeOf(context).height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Assets.images.loginBgMobile.provider(),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Forget Password',
                  style: AppText.heading4.copyWith(color: AppColors.white),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                Text(
                  context
                      .l10n
                      .weWillSendPasswordResetLinkToYourRegisteredEmailId,
                  style: AppText.smallM.copyWith(color: AppColors.divider),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 26),
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
                      AppTextForm<String>(
                        onSubmitted: (value) => _forgotPassword(),
                        name: 'email',
                        label: context.l10n.email,
                        hintText: context.l10n.enterEmailId,
                        initialValue: GoRouterState.of(
                          context,
                        ).uri.queryParameters['email'],
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.email(),
                          FormBuilderValidators.required(),
                        ]),
                        keyboardType: TextInputType.emailAddress,
                        inputFormatters: [LowerCaseTextFormatter()],
                      ),
                      const SizedBox(height: 16),
                      AppButton(
                        isLoading: ref
                            .watch(
                              asyncActionProvider(
                                actionName: 'forgot_password',
                              ),
                            )
                            .isLoading,
                        label: Text(context.l10n.proceed),
                        onPress: () async {
                          await _forgotPassword();
                        },
                      ),
                      const SizedBox(height: 12),
                      Text.rich(
                        TextSpan(
                          style: AppText.smallM.copyWith(
                            color: AppColors.stormyBlue,
                          ),
                          children: [
                            const TextSpan(text: 'You may contact '),
                            TextSpan(
                              text: 'Customer Service',
                              style: const TextStyle(
                                color: AppColors.brandViolet,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  // Handle tap here
                                  launchUrlString('mailto:support@duxbe.com');
                                },
                            ),
                            const TextSpan(
                              text:
                                  ' for help restoring access to your account.',
                            ),
                          ],
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 36,

              child: GestureDetector(
                onTap: context.pop,
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
    );
  }
}
