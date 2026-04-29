import 'package:duxbe_kds/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hancod_theme/hancod_theme.dart';
import 'package:phone_form_field/phone_form_field.dart';
import 'package:reactive_forms/reactive_forms.dart';

class PostSignupPhoneDialog extends ConsumerStatefulWidget {
  const PostSignupPhoneDialog({required this.onSubmit, super.key});

  final void Function(String fullPhoneNumber) onSubmit;

  @override
  ConsumerState<PostSignupPhoneDialog> createState() =>
      _PostSignupPhoneDialogState();
}

class _PostSignupPhoneDialogState extends ConsumerState<PostSignupPhoneDialog> {
  final _formControl = FormControl<String>(
    validators: [
      Validators.required,
      Validators.delegate((control) {
        if (control.value != null &&
            !PhoneNumber.parse(control.value!.toString()).isValid()) {
          return {'invalid': 'Invalid phone number'};
        }
        return null;
      }),
    ],
  );

  Future<void> _handleSubmit() async {
    _formControl.markAsTouched();
    if (!_formControl.valid) {
      return;
    }
    widget.onSubmit(_formControl.value!);
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      insetPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 560),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Material(
            color: AppColors.white,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 180,
                    color: const Color(0xFFEDEDF8),
                    alignment: Alignment.center,
                    child: Container(
                      width: 92,
                      height: 92,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: AppColors.primaryColor.withValues(alpha: .18),
                          width: 2,
                        ),
                      ),
                      child: const Icon(
                        Icons.phone_in_talk_rounded,
                        color: AppColors.primaryColor,
                        size: 42,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(28, 28, 28, 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Add Your Mobile Number',
                          textAlign: TextAlign.center,
                          style: AppText.heading5.copyWith(
                            color: AppColors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 14),
                        Text(
                          "We'll use this to send important updates about your business",
                          textAlign: TextAlign.center,
                          style: AppText.mediumN.copyWith(
                            color: const Color(0xFF6E7D9B),
                            height: 1.45,
                          ),
                        ),
                        const SizedBox(height: 30),
                        ReactivePhoneNumberForm(
                          label: 'Phone Number',
                          formControl: _formControl,
                          countryCode: ref.read(countryCodeProvider),
                          validationMessages: {
                            'required': (control) =>
                                'Please enter your phone number',
                          },
                        ),

                        const SizedBox(height: 28),
                        AppButton(
                          onPress: _handleSubmit,
                          label: const Text('Submit'),
                        ),

                        const SizedBox(height: 8),
                        TextButton(
                          onPressed: () {
                            context.pop();
                          },
                          child: Text(
                            'Skip for now',
                            style: AppText.mediumN.copyWith(
                              color: const Color(0xFF7A89A8),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
