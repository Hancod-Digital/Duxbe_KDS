import 'dart:io';

import 'package:animations/animations.dart';
import 'package:collection/collection.dart';
import 'package:duxbe_kds/features/auth/auth.dart' hide EnterOtpScreen;
import 'package:duxbe_kds/features/auth/presentation/presentation/business_register/business_register.dart';
import 'package:duxbe_kds/features/auth/presentation/presentation/choose_business_type/choose_business_type.dart';
import 'package:duxbe_kds/features/auth/presentation/presentation/choose_modules/choose_modules.dart';
import 'package:duxbe_kds/features/auth/presentation/presentation/enter_otp/enter_otp.dart';
import 'package:duxbe_kds/features/auth/presentation/presentation/enter_password/enter_password.dart';
import 'package:duxbe_kds/features/auth/presentation/presentation/login/login.dart';
import 'package:duxbe_kds/shared/constants/currencies.dart';
import 'package:duxbe_kds/shared/models/currency_model/currency_model.dart';
import 'package:duxbe_kds/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hancod_theme/hancod_theme.dart';
import 'package:phone_form_field/phone_form_field.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

enum AuthStep {
  login,
  enterPassword,
  enterOTP,
  businessRegister,
  chooseBusinessType,
  chooseModules,
}

class AuthFlowManager extends ConsumerStatefulWidget {
  const AuthFlowManager({super.key, this.initialStep = AuthStep.login});

  final AuthStep initialStep;

  @override
  ConsumerState<AuthFlowManager> createState() => _AuthFlowManagerState();
}

class _AuthFlowManagerState extends ConsumerState<AuthFlowManager> {
  late final formGroup = FormGroup({
    'email_or_phone': FormControl<String>(
      validators: [Validators.delegate(_emailOrPhoneValidator)],
    ),
    'password': FormControl<String>(),
    'name': FormControl<String>(),
    'business_type': FormControl<String>(),
    'business_type_others': FormControl<String>(),
    'currency': FormControl<Currency>(),
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
    } else {
      // Otherwise treat it as a phone number
      try {
        final isPhone = PhoneNumber.parse(value).isValid();
        return isPhone ? null : {'phone': true};
      } catch (_) {
        return {'phone': true};
      }
    }
  }

  void _setRegistrationValidators(bool isRegister) {
    final fields = ['name', 'business_type', 'currency'];
    for (final field in fields) {
      final control = formGroup.control(field);
      if (isRegister) {
        control.setValidators([Validators.required]);
      } else {
        control.setValidators([]);
      }
      control.updateValueAndValidity();
    }
  }

  List<Currency> currencyModels = [];

  late AuthStep _currentStep;
  final SharedAxisTransitionType _transitionType =
      SharedAxisTransitionType.horizontal;
  bool _reverse = false;

  @override
  void initState() {
    super.initState();
    currencyModels = currencies.map(Currency.fromJson).toList();
    _currentStep = widget.initialStep;

    // If starting directly at registration from an oauth callback
    if (_currentStep == AuthStep.businessRegister) {
      _setRegistrationValidators(true);
      // email_or_phone is not available in OAuth flow, remove its validator
      formGroup.control('email_or_phone').setValidators([]);
      formGroup.control('email_or_phone').updateValueAndValidity();
    }

    final currentCountry = ref.read(countryCodeProvider);
    final currency = currencyModels.firstWhereOrNull(
      (element) => element.countryCode.contains(currentCountry.isoCode.name),
    );

    formGroup.patchValue({'currency': currency});
  }

  /// Whether the current flow is email-based (true) or phone-based (false).
  bool _isEmailFlow = false;

  /// Whether the user is new (not registered before).
  String? _token;

  /// The resolved email (if email flow).
  String? _email;

  /// The resolved phone number (if phone flow).
  String? _phone;

  // ---------------------------------------------------------------------------
  // Input detection
  // ---------------------------------------------------------------------------

  /// Returns true if the input looks like an email address.
  bool _isEmail(String input) {
    return input.contains('@');
  }

  // ---------------------------------------------------------------------------
  // Step navigation
  // ---------------------------------------------------------------------------

  void _goToStep(AuthStep step, {bool isBack = false}) {
    setState(() {
      _reverse = isBack || step.index < _currentStep.index;
      _currentStep = step;
    });

    // If we are returning to or staying in login, ensure validators are restored
    // unless we specificially disabled them for OAuth.
    // However, it's safer to just enable them here if we are at the login step.
    if (step == AuthStep.login) {
      formGroup.control('email_or_phone')
        ..setValidators([Validators.delegate(_emailOrPhoneValidator)])
        ..updateValueAndValidity();
    }
  }

  Future<void> _goToNextStep() async {
    switch (_currentStep) {
      case AuthStep.login:
        await _submitEmailOrPhone();
      case AuthStep.enterOTP:
        break; // Verification handles the navigation
      case AuthStep.enterPassword:
        await _submitPassword();
      case AuthStep.businessRegister:
        _goToStep(AuthStep.chooseBusinessType);
      case AuthStep.chooseBusinessType:
        _goToStep(AuthStep.chooseModules);
      case AuthStep.chooseModules:
        await _completeRegistration();
    }
  }

  void _goToPreviousStep() {
    if (_currentStep == widget.initialStep) {
      // Prevent navigating backwards past the initial step
      return;
    }
    switch (_currentStep) {
      case AuthStep.login:
        // Can't go back from login
        break;
      case AuthStep.enterOTP:
        _goToStep(AuthStep.login, isBack: true);
      case AuthStep.enterPassword:
        _goToStep(AuthStep.login, isBack: true);
      case AuthStep.businessRegister:
        _goToStep(AuthStep.login, isBack: true);
      case AuthStep.chooseBusinessType:
        _goToStep(AuthStep.businessRegister, isBack: true);
      case AuthStep.chooseModules:
        _goToStep(AuthStep.chooseBusinessType, isBack: true);
    }
  }

  // ---------------------------------------------------------------------------
  // Flow logic
  // ---------------------------------------------------------------------------

  /// Called when the user submits the email_or_phone field from the login screen.
  Future<void> _submitEmailOrPhone() async {
    final control = formGroup.control('email_or_phone')..markAsTouched();
    if (control.invalid) {
      return;
    }

    final input = control.value?.toString().trim() ?? '';

    if (_isEmail(input)) {
      // ---- Email flow ----
      _isEmailFlow = true;
      _email = input;
      formGroup.control('password').setValidators([
        Validators.required,
        Validators.minLength(6),
      ]);
      formGroup.control('password').updateValueAndValidity();
      _goToStep(AuthStep.enterPassword);
    } else {
      // ---- Phone flow ----
      _isEmailFlow = false;
      _phone = input;
      formGroup.control('password').setValidators([]);
      formGroup.control('password').updateValueAndValidity();

      await ref.read(authProvider.notifier).sendOtp(input);
      _goToStep(AuthStep.enterOTP);
    }
  }

  /// Called when the user submits the password from the enter password screen.
  Future<void> _submitPassword() async {
    final control = formGroup.control('password')..markAsTouched();
    if (control.invalid) {
      return;
    }

    final password = control.value?.toString() ?? '';

    final token = await ref
        .read(authRepoProvider)
        .verify(type: 'email', email: _email, password: password);

    if (token.orgId == null) {
      _token = token.token;

      // New user – go to business registration
      _setRegistrationValidators(true);
      _goToStep(AuthStep.businessRegister);
    } else {
      // Existing user – sign in and go to dashboard
      _setRegistrationValidators(false);
      await ref.read(authProvider.notifier).setSession(_token ?? token.token);
    }
  }

  /// Called when the user submits the OTP from the enter OTP screen.
  Future<void> _verifyOtp(String otp) async {
    final token = await ref
        .read(authRepoProvider)
        .verify(type: 'phone', phone: _phone, token: otp);

    if (token.orgId == null) {
      _token = token.token;
      _setRegistrationValidators(true);
      _goToStep(AuthStep.businessRegister);
    } else {
      _setRegistrationValidators(false);
      await ref.read(authProvider.notifier).setSession(_token ?? token.token);
    }
  }

  /// Completes the registration flow by calling signUp with all collected data.
  Future<void> _completeRegistration() async {
    if (formGroup.valid) {
      formGroup.markAllAsTouched();

      final values = formGroup.value;
      await ref.read(authProvider.notifier).createBusiness({
        'email': _email ?? values['email_or_phone'],
        'name': values['name'],
        'phone_number': _phone,
        'business_type': values['business_type'],
        'business_type_others': values['business_type_others'],
        'currency': values['currency'],
      }, token: _token);
    } else {
      formGroup.markAllAsTouched();
    }
  }

  Future<void> _handleGoogleSignIn() async {
    // Clear validators for email_or_phone as we are using OAuth
    formGroup.control('email_or_phone').setValidators([]);
    formGroup.control('email_or_phone').updateValueAndValidity();

    if (kIsWeb) {
      await ref.read(authRepoProvider).signInWithGoogle();
      return;
    }

    final token = await ref.read(authRepoProvider).signInWithGoogleIdToken();

    if (token.orgId == null) {
      _token = token.token;

      // New user – go to business registration
      _setRegistrationValidators(true);
      _goToStep(AuthStep.businessRegister);
    } else {
      // Existing user – sign in and go to dashboard
      _setRegistrationValidators(false);
      await ref.read(authProvider.notifier).setSession(_token ?? token.token);
    }
  }

  Future<void> _handleAppleSignIn() async {
    // Clear validators for email_or_phone as we are using OAuth
    formGroup.control('email_or_phone').setValidators([]);
    formGroup.control('email_or_phone').updateValueAndValidity();

    if (kIsWeb || !(Platform.isIOS || Platform.isMacOS)) {
      await ref.read(authRepoProvider).signInWithApple();
      return;
    }

    final token = await ref.read(authRepoProvider).signInWithAppleIdToken();

    if (token.orgId == null) {
      _token = token.token;

      // New user – go to business registration
      _setRegistrationValidators(true);
      _goToStep(AuthStep.businessRegister);
    } else {
      // Existing user – sign in and go to dashboard
      _setRegistrationValidators(false);
      await ref.read(authProvider.notifier).setSession(_token ?? token.token);
    }
  }

  // ---------------------------------------------------------------------------
  // Screen builder
  // ---------------------------------------------------------------------------

  /// Returns the password screen title based on whether the user is new.
  String get _passwordTitle => 'Enter Password';

  Widget _buildCurrentScreen() {
    switch (_currentStep) {
      case AuthStep.login:
        return LoginScreen(
          key: const ValueKey('login'),
          onSubmit: _goToNextStep,
          onGoogle: _handleGoogleSignIn,
          onApple: _handleAppleSignIn,
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
          onBack: _goToPreviousStep,
        );
      case AuthStep.enterPassword:
        return EnterPasswordScreen(
          key: const ValueKey('enterPassword'),
          title: _passwordTitle,
          onNext: _goToNextStep,
          onBack: _goToPreviousStep,
        );
      case AuthStep.businessRegister:
        return BusinessRegisterScreen(
          key: const ValueKey('businessRegister'),
          onNext: _goToNextStep,
          onBack: widget.initialStep == AuthStep.businessRegister
              ? null
              : _goToPreviousStep,
        );
      case AuthStep.chooseBusinessType:
        return ChooseBusinessTypeScreen(
          key: const ValueKey('chooseBusinessType'),
          onNext: _goToNextStep,
          onBack: _goToPreviousStep,
        );
      case AuthStep.chooseModules:
        return ChooseModulesScreen(
          key: const ValueKey('chooseModules'),
          register: _completeRegistration,
          onBack: _goToPreviousStep,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(ipConfigProvider, (previous, next) {
      final currency = currencyModels.firstWhereOrNull(
        (element) => element.countryCode.contains(next.value?.country),
      );
      formGroup.patchValue({'currency': currency});
    });

    return PopScope(
      canPop: _currentStep == widget.initialStep,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) return;
        _goToPreviousStep();
      },
      child: Scaffold(
        body: ReactiveForm(
          formGroup: formGroup,
          child: PageTransitionSwitcher(
            reverse: _reverse,
            transitionBuilder:
                (
                  Widget child,
                  Animation<double> animation,
                  Animation<double> secondaryAnimation,
                ) {
                  return SharedAxisTransition(
                    animation: animation,
                    secondaryAnimation: secondaryAnimation,
                    transitionType: _transitionType,
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
