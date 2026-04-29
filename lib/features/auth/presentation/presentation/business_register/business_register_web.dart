import 'package:duxbe_kds/features/auth/auth.dart';
import 'package:duxbe_kds/shared/constants/currencies.dart';
import 'package:duxbe_kds/shared/models/currency_model/currency_model.dart';
import 'package:duxbe_kds/shared/shared.dart';
import 'package:duxbe_kds/shared/utils/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hancod_theme/hancod_theme.dart';
import 'package:reactive_forms/reactive_forms.dart';

class BusinessRegisterScreenWeb extends ConsumerStatefulWidget {
  const BusinessRegisterScreenWeb({super.key, this.onNext, this.onBack});
  final VoidCallback? onNext;
  final VoidCallback? onBack;
  @override
  ConsumerState<BusinessRegisterScreenWeb> createState() =>
      _BusinessRegisterScreenWebState();
}

class _BusinessRegisterScreenWebState
    extends ConsumerState<BusinessRegisterScreenWeb> {
  Future<void> _next() async {
    final formGroup = ReactiveForm.of(context) as FormGroup?;
    if (formGroup != null) {
      final nameControl = formGroup.control('name');
      final currencyControl = formGroup.control('currency');
      nameControl.markAsTouched();
      currencyControl.markAsTouched();

      if (nameControl.valid && currencyControl.valid) {
        widget.onNext?.call();
      }
    }
  }

  Future<void> _back() async {
    widget.onBack?.call();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: Assets.images.loginBg.provider(),
              fit: BoxFit.cover,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    constraints: const BoxConstraints(
                      maxWidth: 600,
                      minWidth: 600,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xff0F255A).withValues(alpha: 0.6),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      children: [
                        Text(
                          'Tell us about your business',
                          style: AppText.heading3.copyWith(
                            color: AppColors.white,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Let's set up the basics to get you started",
                          style: AppText.heading5.copyWith(
                            color: AppColors.stormyBlue,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 70),
                  Container(
                    alignment: Alignment.center,
                    constraints: const BoxConstraints(
                      maxWidth: 600,
                      minWidth: 600,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xff838383),
                          offset: Offset(16, 16),
                        ),
                        BoxShadow(
                          color: Color(0xffA2A2A2),
                          offset: Offset(8, 8),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ReactiveValueListenableBuilder<String>(
                          formControlName: 'name',
                          builder: (context, control, child) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                ReactiveText(
                                  formControlName: 'name',
                                  label: context.l10n.businessName,
                                  textInputAction: TextInputAction.next,
                                  onSubmitted: (_) => _next(),
                                ),
                                const SizedBox(height: 30),
                                if (control.value?.isNotEmpty ?? false) ...[
                                  ReactiveTypeAhead<Currency, Currency>(
                                    formControlName: 'currency',
                                    label: context.l10n.currency,
                                    stringify: (e) => '${e.code}   ${e.symbol}',
                                    itemBuilder: (context, e) => ListTile(
                                      title: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(e.name),
                                          Text('${e.code}   ${e.symbol}'),
                                        ],
                                      ),
                                    ),
                                    suggestionsCallback: (search) async =>
                                        currencies
                                            .map(Currency.fromJson)
                                            .where(
                                              (e) =>
                                                  e.name.toLowerCase().contains(
                                                    search.toLowerCase(),
                                                  ),
                                            )
                                            .toList(),
                                  ),
                                  const SizedBox(height: 30),
                                ],
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: AppButton(
                                    width: 200,
                                    isLoading:
                                        ref.watch(authProvider).status ==
                                        AuthStatus.loading,
                                    label: Text(context.l10n.next),
                                    onPress: _next,
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: 60,
          left: 60,
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
    );
  }
}
