import 'package:duxbe_kds/shared/shared.dart';
import 'package:duxbe_kds/shared/utils/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hancod_theme/hancod_theme.dart';
import 'package:reactive_forms/reactive_forms.dart';

class EnterPasswordScreenWeb extends ConsumerStatefulWidget {
  const EnterPasswordScreenWeb({
    required this.title,
    super.key,
    this.onNext,
    this.onBack,
  });

  final String title;
  final Future<void> Function()? onNext;
  final VoidCallback? onBack;

  @override
  ConsumerState<EnterPasswordScreenWeb> createState() =>
      _EnterPasswordScreenWebState();
}

class _EnterPasswordScreenWebState
    extends ConsumerState<EnterPasswordScreenWeb> {
  void _handleNext(BuildContext context, WidgetRef ref) {
    ref
        .read(asyncActionProvider(actionName: 'password').notifier)
        .execute(
          () async {
            await widget.onNext?.call();
          },
          error: (error, stackTrace) {
            Alert.error(error.toString());
          },
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              Positioned.fill(
                child: Assets.images.loginBg.image(fit: BoxFit.cover),
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
              SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 530),
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
                              style: AppText.b42.copyWith(
                                color: AppColors.white,
                              ),
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
                                horizontal: 20,
                                vertical: 24,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    widget.title,
                                    style: AppText.heading4.copyWith(
                                      color: AppColors.black,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(height: 24),
                                  ReactiveText<String>(
                                    formControlName: 'password',
                                    autofocus: true,
                                    obscureText: true,
                                    textInputAction: TextInputAction.done,
                                    onSubmitted: (_) =>
                                        _handleNext(context, ref),
                                    decoration: InputDecoration(
                                      labelText: context.l10n.password,
                                      hintText: '6+ characters',
                                    ),
                                    validationMessages: {
                                      'required': (error) =>
                                          'Please enter your password',
                                      'minLength': (error) =>
                                          'Password must be at least 6 characters long',
                                    },
                                  ),
                                  const SizedBox(height: 16),
                                  AppButton(
                                    isLoading: ref
                                        .watch(
                                          asyncActionProvider(
                                            actionName: 'password',
                                          ),
                                        )
                                        .isLoading,
                                    label: Text(context.l10n.proceed),
                                    onPress: () => _handleNext(context, ref),
                                  ),
                                  const SizedBox(height: 16),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: InkWell(
                                      onTap: () {
                                        final form =
                                            ReactiveForm.of(context)!
                                                as FormGroup;
                                        context.pushNamed(
                                          AppRouter.forgotPassword,
                                          queryParameters: {
                                            'email': form
                                                .value['email_or_phone']
                                                ?.toString(),
                                          },
                                        );
                                      },
                                      child: TextButton(
                                        child: Text(
                                          context.l10n.forgotPassword,
                                          style: AppText.mediumM.copyWith(
                                            color: AppColors.brandViolet,
                                          ),
                                        ),
                                        onPressed: () {
                                          final form =
                                              ReactiveForm.of(context)!
                                                  as FormGroup;
                                          context.pushNamed(
                                            AppRouter.forgotPassword,
                                            queryParameters: {
                                              'email': form
                                                  .value['email_or_phone']
                                                  ?.toString(),
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 36,
                left: 24,
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
          );
        },
      ),
    );
  }
}
