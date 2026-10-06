import 'package:animations/animations.dart';
import 'package:duxbe_kds/features/auth/auth.dart';
import 'package:duxbe_kds/features/auth/presentation/presentation/enter_otp/enter_otp.dart';
import 'package:duxbe_kds/features/auth/presentation/presentation/enter_password/enter_password.dart';
import 'package:duxbe_kds/features/auth/presentation/presentation/login/login.dart';
import 'package:duxbe_kds/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hancod_theme/hancod_theme.dart';
import 'package:phone_form_field/phone_form_field.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

enum AuthStep { login, enterPassword, enterOTP }

class AuthFlowManager extends ConsumerStatefulWidget {
  const AuthFlowManager({super.key});

  @override
  ConsumerState<AuthFlowManager> createState() => _AuthFlowManagerState();
}

class _AuthFlowManagerState extends ConsumerState<AuthFlowManager> {
  late final formGroup = FormGroup({
    'email_or_phone': FormControl<String>(
      validators: [Validators.delegate(_emailOrPhoneValidator)],
    ),
    'password': FormControl<String>(),
  });

  Map<String, dynamic>? _emailOrPhoneValidator(
    AbstractControl<dynamic> control,
  ) {
    final value = control.value as String?;
    if (value == null || value.isEmpty) {
      return {'required': true};
    }

    // If it contains an @ or alphabetic characters, treat it as an email
    if (value.contains('@') || RegExp('[a-zA-Z]').hasMatch(value)) {
      return Validators.email(control);
    }
    // Otherwise treat it as a phone number
    try {
      final isPhone = PhoneNumber.parse(value).isValid();
      return isPhone ? null : {'phone': true};
    } catch (_) {
      return {'phone': true};
    }
  }

  AuthStep _currentStep = AuthStep.login;
  bool _reverse = false;

  String? _email;
  String? _phone;

  void _goToStep(AuthStep step, {bool isBack = false}) {
    setState(() {
      _reverse = isBack || step.index < _currentStep.index;
      _currentStep = step;
    });
  }

  void _goBackToLogin() => _goToStep(AuthStep.login, isBack: true);

  /// Called when the user submits the email_or_phone field from the login screen.
  Future<void> _submitEmailOrPhone() async {
    final control = formGroup.control('email_or_phone')..markAsTouched();
    if (control.invalid) {
      return;
    }

    final input = control.value?.toString().trim() ?? '';

    if (input.contains('@')) {
      _email = input;
      formGroup.control('password')
        ..setValidators([Validators.required, Validators.minLength(6)])
        ..updateValueAndValidity();
      _goToStep(AuthStep.enterPassword);
    } else {
      _phone = input;
      formGroup.control('password')
        ..setValidators([])
        ..updateValueAndValidity();
      await ref.read(authProvider.notifier).sendOtp(input);
      _goToStep(AuthStep.enterOTP);
    }
  }

  Future<void> _submitPassword() async {
    final control = formGroup.control('password')..markAsTouched();
    if (control.invalid) {
      return;
    }

    final token = await ref
        .read(authRepoProvider)
        .verify(
          type: 'email',
          email: _email,
          password: control.value?.toString() ?? '',
        );
    await _signIn(token.orgId, token.token);
  }

  Future<void> _verifyOtp(String otp) async {
    final token = await ref
        .read(authRepoProvider)
        .verify(type: 'phone', phone: _phone, token: otp);
    await _signIn(token.orgId, token.token);
  }

  /// KDS is login-only: accounts without a business are rejected, since
  /// business registration lives in the main Duxbe app.
  Future<void> _signIn(String? orgId, String token) async {
    if (orgId == null) {
      Alert.showSnackBar(
        'No business found for this account. Register on the Duxbe app first.',
        type: SnackBarType.error,
      );
      _goBackToLogin();
      return;
    }
    await ref.read(authProvider.notifier).setSession(token);
  }

  Widget _buildCurrentScreen() {
    switch (_currentStep) {
      case AuthStep.login:
        return LoginScreen(
          key: const ValueKey('login'),
          onSubmit: _submitEmailOrPhone,
        );
      case AuthStep.enterOTP:
        return EnterOtpScreen(
          key: const ValueKey('enterOTP'),
          onVerify: _verifyOtp,
          phoneNumber: _phone,
          onResend: () async {
            if (_phone != null) {
              await ref.read(authProvider.notifier).sendOtp(_phone!);
            }
          },
          onBack: _goBackToLogin,
        );
      case AuthStep.enterPassword:
        return EnterPasswordScreen(
          key: const ValueKey('enterPassword'),
          title: 'Enter Password',
          onNext: _submitPassword,
          onBack: _goBackToLogin,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: _currentStep == AuthStep.login,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) return;
        _goBackToLogin();
      },
      child: Scaffold(
        body: ReactiveForm(
          formGroup: formGroup,
          child: PageTransitionSwitcher(
            reverse: _reverse,
            transitionBuilder: (child, animation, secondaryAnimation) {
              return SharedAxisTransition(
                animation: animation,
                secondaryAnimation: secondaryAnimation,
                transitionType: SharedAxisTransitionType.horizontal,
                fillColor: AppColors.primaryColor,
                child: child,
              );
            },
            child: _buildCurrentScreen(),
          ),
        ),
      ),
    );
  }
}
