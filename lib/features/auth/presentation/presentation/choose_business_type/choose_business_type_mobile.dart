import 'package:duxbe_kds/features/auth/auth.dart';
import 'package:duxbe_kds/shared/utils/assets.gen.dart';
import 'package:duxbe_kds/shared/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hancod_theme/hancod_theme.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ChooseBusinessTypeScreenMobile extends ConsumerStatefulWidget {
  const ChooseBusinessTypeScreenMobile({super.key, this.onNext, this.onBack});
  final Function? onNext;
  final Function? onBack;
  @override
  ConsumerState<ChooseBusinessTypeScreenMobile> createState() =>
      _ChooseBusinessTypeScreenMobileState();
}

class _ChooseBusinessTypeScreenMobileState
    extends ConsumerState<ChooseBusinessTypeScreenMobile> {
  final _border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(color: Color(0xffCECECE)),
  );

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {});
    });
  }

  Future<void> _next() async {
    final formGroup = ReactiveForm.of(context) as FormGroup?;
    if (formGroup != null) {
      final businessTypeControl = formGroup.control('business_type');
      final businessTypeOthersControl = formGroup.control(
        'business_type_others',
      );

      businessTypeControl.markAsTouched();

      if (businessTypeControl.value == BusinessType.others.name) {
        businessTypeOthersControl.setValidators([
          Validators.required,
          Validators.minLength(3),
        ]);
        businessTypeOthersControl.markAsTouched();
        if (businessTypeControl.valid && businessTypeOthersControl.valid) {
          widget.onNext?.call();
        }
      } else {
        businessTypeOthersControl.clearValidators();
        businessTypeOthersControl.updateValueAndValidity();
        if (businessTypeControl.valid) {
          widget.onNext?.call();
        }
      }
    }
  }

  Future<void> _back() async {
    widget.onBack?.call();
  }

  @override
  Widget build(BuildContext context) {
    final formGroup = ReactiveForm.of(context) as FormGroup?;
    final businessTypeControl =
        formGroup?.control('business_type') as FormControl<String>?;
    if (businessTypeControl != null && businessTypeControl.value == null) {
      Future.microtask(() {
        if (mounted) {
          businessTypeControl.value = BusinessType.retail.name;
        }
      });
    }
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: Assets.images.loginBgMobile.provider(),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const SizedBox(height: 80),
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(
                              0xff0F255A,
                            ).withValues(alpha: 0.6),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          padding: const EdgeInsets.all(24),
                          child: Column(
                            children: [
                              Text(
                                'What type of business do you have?',
                                style: AppText.heading6.copyWith(
                                  color: AppColors.white,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'This helps us customize your experience and provide relevant features',
                                style: AppText.mediumN.copyWith(
                                  color: AppColors.stormyBlue,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 30),
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(14),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0xffA2A2A2),
                                offset: Offset(8, 8),
                              ),
                            ],
                          ),
                          padding: const EdgeInsets.all(24),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ReactiveValueListenableBuilder<String>(
                                formControlName: 'business_type',
                                builder: (context, control, child) {
                                  return Column(
                                    spacing: 12,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      ...BusinessType.values.map(
                                        (e) => GestureDetector(
                                          onTap: () => control.value = e.name,
                                          child: Container(
                                            padding: const EdgeInsets.all(12),
                                            decoration: BoxDecoration(
                                              color: AppColors.white,
                                              borderRadius:
                                                  BorderRadius.circular(14),
                                              border: control.value == e.name
                                                  ? Border.all(
                                                      color:
                                                          AppColors.brandViolet,
                                                      width: 2,
                                                    )
                                                  : Border.all(
                                                      color:
                                                          AppColors.greyBorder,
                                                    ),
                                              boxShadow: const [
                                                BoxShadow(
                                                  color: Colors.black12,
                                                  blurRadius: 28,
                                                  offset: Offset(5, 12),
                                                ),
                                              ],
                                            ),
                                            child: Stack(
                                              clipBehavior: Clip.none,
                                              children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      height: 32,
                                                      width: 32,
                                                      child: e.icon.svg(),
                                                    ),
                                                    const SizedBox(width: 8),
                                                    Expanded(
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Text(
                                                            e.title,
                                                            style: AppText
                                                                .mediumM
                                                                .copyWith(
                                                                  color:
                                                                      AppColors
                                                                          .black,
                                                                ),
                                                            maxLines: 1,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                          ),
                                                          const SizedBox(
                                                            height: 4,
                                                          ),
                                                          Text(
                                                            e.subtitle,
                                                            style: AppText
                                                                .smallM
                                                                .copyWith(
                                                                  color: AppColors
                                                                      .stormyBlue,
                                                                  height: 1.3,
                                                                ),
                                                            maxLines: 3,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                if (control.value == e.name)
                                                  const Positioned(
                                                    top: 0,
                                                    right: 0,
                                                    child: Icon(
                                                      Icons.check_circle,
                                                      color:
                                                          AppColors.brandViolet,
                                                      size: 20,
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      if (control.value ==
                                          BusinessType.others.name) ...[
                                        const SizedBox(height: 18),
                                        ReactiveText<String>(
                                          formControlName:
                                              'business_type_others',
                                          decoration: InputDecoration(
                                            border: _border,
                                            focusedBorder: _border,
                                            enabledBorder: _border,
                                            errorBorder: _border,
                                            focusedErrorBorder: _border,
                                            hintText:
                                                'Please specify business type...',
                                            hintStyle: AppText.xLargeN.copyWith(
                                              color: const Color(0xffd0d0d0),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ],
                                  );
                                },
                              ),
                              const SizedBox(height: 24),
                              AppButton(
                                isLoading:
                                    ref.watch(authProvider).status ==
                                    AuthStatus.loading,
                                label: Text(context.l10n.next),
                                onPress: _next,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 40),
                      ],
                    ),
                    if (widget.onBack != null)
                      Positioned(
                        top: 36,
                        left: 0,
                        child: GestureDetector(
                          onTap: _back,
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
            ),
          );
        },
      ),
    );
  }
}
