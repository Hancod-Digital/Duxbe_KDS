import 'package:duxbe_kds/features/auth/auth.dart';
import 'package:duxbe_kds/features/organization/organization.dart';
import 'package:duxbe_kds/shared/shared.dart';
import 'package:duxbe_kds/shared/utils/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import 'package:hancod_theme/hancod_theme.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class NewPasswordScreenMobile extends ConsumerStatefulWidget {
  const NewPasswordScreenMobile({
    super.key,
    this.inviteToken,
    this.orgId,
    this.refreshToken,
  });
  final String? inviteToken;
  final String? orgId;
  final String? refreshToken;

  @override
  ConsumerState<NewPasswordScreenMobile> createState() =>
      _NewPasswordScreenMobileState();
}

class _NewPasswordScreenMobileState
    extends ConsumerState<NewPasswordScreenMobile> {
  final _formKey = GlobalKey<FormBuilderState>();

  Future<void> _changePassword() async {
    if (_formKey.currentState?.saveAndValidate() ?? false) {
      await ref
          .read(authProvider.notifier)
          .createPassword(
            _formKey.currentState!.value['password'].toString(),
            token: widget.inviteToken,
            refreshToken: widget.refreshToken,
          )
          .then((value) {
            AppRouter.goNamed(AppRouter.login);
          });
    }
  }

  @override
  void initState() {
    Supabase.instance.client.auth.signOut();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final org = ref.watch(organizationByIdProvider(widget.orgId));
    final error = GoRouterState.of(context).uri.queryParameters['error'];
    final errorDescription = GoRouterState.of(
      context,
    ).uri.queryParameters['error_description'];

    return FormBuilder(
      key: _formKey,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: error == null
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 90),
                    Assets.images.duxbeLogo.image(),
                    const SizedBox(height: 20),
                    org.when(
                      data: (org) => org == null
                          ? const SizedBox.shrink()
                          : Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Welcome to ${org.organizationName!}',
                                  style: AppText.heading3.copyWith(
                                    color: AppColors.title,
                                  ),
                                ),
                                const SizedBox(height: 14),
                                Text(
                                  'By continuing, you will be a part of ${org.organizationName!}',
                                  style: AppText.largeN.copyWith(
                                    color: AppColors.title,
                                  ),
                                ),
                                const SizedBox(height: 14),
                              ],
                            ),
                      error: (error, stack) => Text(error.toString()),
                      loading: () => const SizedBox.shrink(),
                    ),
                    const SizedBox(height: 14),
                    Text(
                      context.l10n.createANewPassword,
                      style: AppText.heading5,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      context.l10n.createNewPassSubtitle,
                      style: AppText.smallN.copyWith(color: AppColors.greyText),
                    ),
                    const SizedBox(height: 16),
                    AppTextForm<String>(
                      name: 'password',
                      label: context.l10n.password,
                      enableObscureText: true,
                      onSubmitted: (value) => _changePassword(),
                      hintText: context.l10n.enterYourPassword,
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(),
                        FormBuilderValidators.minLength(6),
                        (value) {
                          if (_formKey
                                  .currentState
                                  ?.fields['confirm_password']
                                  ?.value !=
                              value) {
                            return context.l10n.passwordsDoesNotMatch;
                          }
                          return null;
                        },
                      ]),
                    ),
                    const SizedBox(height: 16),
                    AppTextForm<String>(
                      name: 'confirm_password',
                      label: context.l10n.confimationPassword,
                      enableObscureText: true,
                      onSubmitted: (value) => _changePassword(),
                      hintText: context.l10n.enterYourPassword,
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(),
                        FormBuilderValidators.minLength(6),
                        (value) {
                          if (_formKey
                                  .currentState
                                  ?.fields['password']
                                  ?.value !=
                              value) {
                            return context.l10n.passwordsDoesNotMatch;
                          }
                          return null;
                        },
                      ]),
                    ),
                    const SizedBox(height: 16),
                    AppButton(
                      isLoading:
                          ref.watch(authProvider).status == AuthStatus.loading,
                      label: Text(context.l10n.submit),
                      onPress: _changePassword,
                    ),
                    const SizedBox(height: 30),
                  ],
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      error.displayCase,
                      style: AppText.heading3.copyWith(color: AppColors.black),
                    ),
                    const SizedBox(height: 14),
                    Text(
                      errorDescription ?? 'Something went wrong',
                      style: AppText.largeN.copyWith(color: AppColors.black),
                    ),
                    const SizedBox(height: 22),
                    AppButton(
                      label: const Text('Back to login'),
                      onPress: () {
                        context.goNamed(AppRouter.login);
                      },
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
