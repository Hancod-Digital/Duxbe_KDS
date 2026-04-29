part of '../forms.dart';

/// Helper function to get the default country code from device locale
IsoCode _getDefaultCountryCode() {
  try {
    final locale = ui.PlatformDispatcher.instance.locale;
    final countryCode = locale.countryCode;
    if (countryCode != null && countryCode.isNotEmpty) {
      return IsoCode.fromJson(countryCode);
    }
  } catch (e) {
    // fall back to US
  }
  return IsoCode.US;
}

class ReactivePhoneNumberForm extends ReactiveFormField<String, String> {
  ReactivePhoneNumberForm({
    super.key,
    super.formControlName,
    super.formControl,
    super.validationMessages,
    super.valueAccessor,
    super.showErrors,
    this.label,
    this.decoration = const InputDecoration(),
    this.keyboardType,
    this.textInputAction,
    this.countryCode,
    this.mobileValidator,
    this.onSubmitted,
  }) : super(
          builder: (field) {
            final state = field as _ReactivePhoneNumberFormState;
            final effectiveDecoration = decoration
                .applyDefaults(Theme.of(state.context).inputDecorationTheme);

            // Resolve validator here where BuildContext is available
            final resolvedValidator = state._widget.mobileValidator ??
                PhoneValidator.validMobile(state.context);

            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                if (label != null) ...[
                  Text(label),
                  const SizedBox(height: 12),
                ],
                PhoneFormField(
                  controller: state._phoneController,
                  countryButtonStyle: const CountryButtonStyle(
                    showIsoCode: true,
                    flagSize: 16,
                  ),
                  decoration: effectiveDecoration.copyWith(
                    errorText: state.errorText,
                  ),
                  validator: resolvedValidator,
                  onChanged: (phoneNumber) {
                    final nsn = phoneNumber.nsn.trim();
                    field.didChange(
                      nsn.isEmpty ? null : phoneNumber.international,
                    );
                  },
                  enabled: field.control.enabled,
                  textInputAction: textInputAction,
                  onSubmitted: onSubmitted != null
                      ? (_) => onSubmitted(field.control)
                      : null,
                  countrySelectorNavigator:
                      const CountrySelectorNavigator.dialog(
                    width: 500,
                    height: 600,
                  ),
                ),
              ],
            );
          },
        );

  final String? label;
  final InputDecoration decoration;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final PhoneNumber? countryCode;

  /// Pass your validator from the calling screen.
  /// If null, falls back to
  /// PhoneValidator.validMobile(context) as a safe default.
  final PhoneNumberInputValidator? mobileValidator;

  final ReactiveFormFieldCallback<String>? onSubmitted;

  @override
  ReactiveFormFieldState<String, String> createState() =>
      _ReactivePhoneNumberFormState();
}

class _ReactivePhoneNumberFormState
    extends ReactiveFormFieldState<String, String> {
  late PhoneController _phoneController;

  /// Convenience getter to avoid repeated casting
  ReactivePhoneNumberForm get _widget => widget as ReactivePhoneNumberForm;

  @override
  void initState() {
    super.initState();
    final initialValue = control.value ?? _widget.countryCode?.international;

    final defaultIsoCode = _widget.countryCode?.isoCode ??
        (initialValue != null ? null : _getDefaultCountryCode());

    _phoneController = PhoneController(
      initialValue: initialValue != null
          ? PhoneNumber.parse(initialValue)
          : PhoneNumber(isoCode: defaultIsoCode ?? IsoCode.US, nsn: ''),
    );
  }

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  @override
  void onControlValueChanged(dynamic value) {
    final newValue = value == null
        ? null
        : value is String
            ? value
            : value.toString();

    if (newValue != null && newValue.isNotEmpty) {
      try {
        final phoneNumber = PhoneNumber.parse(newValue);
        if (_phoneController.value != phoneNumber) {
          _phoneController.value = phoneNumber;
        }
      } catch (_) {
        _phoneController.value =
            PhoneNumber(isoCode: _getDefaultCountryCode(), nsn: '');
      }
    } else {
      _phoneController.value =
          PhoneNumber(isoCode: _getDefaultCountryCode(), nsn: '');
    }

    super.onControlValueChanged(newValue);
  }

  @override
  ControlValueAccessor<String, String> selectValueAccessor() =>
      _PhoneNumberValueAccessor();
}

class _PhoneNumberValueAccessor extends ControlValueAccessor<String, String> {
  @override
  String? modelToViewValue(String? modelValue) => modelValue;

  @override
  String? viewToModelValue(String? viewValue) => viewValue;
}
