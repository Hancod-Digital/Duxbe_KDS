part of '../forms.dart';

/// Input type detected from user input.
enum EmailOrPhoneInputType {
  /// No input yet or ambiguous.
  undetermined,

  /// Input looks like an email address.
  email,

  /// Input looks like a phone number.
  phone,
}

/// A combined reactive form field that uses a single [TextField] and
/// seamlessly transitions between email and phone-number input modes.
///
/// Instead of swapping between two separate widgets, this component uses one
/// [TextField] and dynamically shows/hides a [CountryButton] prefix based on
/// what the user is typing:
///
/// - **Phone mode**: When the input starts with digits or '+', a country-code
///   button appears as `prefixIcon` and formatting is applied.
/// - **Email mode**: When the input contains '@' or alphabetic characters,
///   the country button is hidden and the field behaves as a plain email text
///   field.
///
/// Bind to a `FormControl<String>` via [formControlName] or [formControl].
class ReactiveEmailOrPhone extends ReactiveFormField<String, String> {
  ReactiveEmailOrPhone({
    super.key,
    super.formControlName,
    super.formControl,
    super.validationMessages,
    super.valueAccessor,
    super.showErrors,
    this.label,
    this.decoration = const InputDecoration(),
    this.textInputAction,
    this.style,
    this.countryCode,
    this.countryButtonStyle = const CountryButtonStyle(
      showIsoCode: true,
      flagSize: 16,
    ),
    this.countrySelectorNavigator = const CountrySelectorNavigator.dialog(
      width: 500,
      height: 600,
    ),
    this.isCountrySelectionEnabled = true,
    this.isCountryButtonPersistent = true,
    this.onInputTypeChanged,
    this.onSubmitted,
  }) : super(
          builder: (field) {
            final state = field as _ReactiveEmailOrPhoneState;
            final effectiveDecoration = decoration
                .applyDefaults(Theme.of(state.context).inputDecorationTheme);

            final isRequired = field.control.validators
                .any((validator) => validator is RequiredValidator);

            final isPhoneMode = state._inputType == EmailOrPhoneInputType.phone;

            // Build country button (only visible in phone mode)
            Widget? suffixIcon;
            if (isPhoneMode) {
              suffixIcon = state._buildCountryButton();
            }

            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              spacing: 12,
              children: [
                if (label != null) ...[
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(text: label),
                        if (isRequired)
                          const TextSpan(
                            text: ' *',
                            style: TextStyle(color: Colors.red),
                          ),
                      ],
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ],
                TextField(
                  controller: state._textController,
                  focusNode: state.focusNode,
                  decoration: effectiveDecoration.copyWith(
                    errorText: state.errorText,
                    hintText: decoration.hintText ?? 'Email or phone number',
                    suffixIcon: suffixIcon,
                  ),
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: textInputAction,
                  style: style,
                  enabled: field.control.enabled,
                  inputFormatters: isPhoneMode
                      ? [
                          FilteringTextInputFormatter.allow(
                            RegExp(r'[+\d\s\-\(\).]'),
                          ),
                        ]
                      : [
                          FilteringTextInputFormatter.allow(
                            RegExp(r'[a-zA-Z0-9@._%+\-]'),
                          ),
                        ],
                  onChanged: state._onTextChanged,
                  onSubmitted: onSubmitted != null
                      ? (_) => onSubmitted(field.control)
                      : null,
                ),
              ],
            );
          },
        );

  final String? label;
  final InputDecoration decoration;
  final TextInputAction? textInputAction;
  final TextStyle? style;
  final PhoneNumber? countryCode;
  final CountryButtonStyle countryButtonStyle;
  final CountrySelectorNavigator countrySelectorNavigator;
  final bool isCountrySelectionEnabled;
  final bool isCountryButtonPersistent;

  /// Called when the detected input type changes.
  final ValueChanged<EmailOrPhoneInputType>? onInputTypeChanged;

  final ReactiveFormFieldCallback<String>? onSubmitted;

  @override
  ReactiveFormFieldState<String, String> createState() =>
      _ReactiveEmailOrPhoneState();
}

class _ReactiveEmailOrPhoneState
    extends ReactiveFocusableFormFieldState<String, String> {
  /// Single text editing controller used for both modes.
  late TextEditingController _textController;

  /// Phone number data model — tracks isoCode + nsn without
  /// owning the TextField controller.
  late IsoCode _selectedIsoCode;
  PhoneNumber _phoneValue = const PhoneNumber(isoCode: IsoCode.US, nsn: '');

  EmailOrPhoneInputType _inputType = EmailOrPhoneInputType.undetermined;

  ReactiveEmailOrPhone get _widget => widget as ReactiveEmailOrPhone;

  /// Whether we're currently in phone mode.
  bool get isPhoneMode => _inputType == EmailOrPhoneInputType.phone;

  @override
  void initState() {
    super.initState();
    _selectedIsoCode = _widget.countryCode?.isoCode ?? _getDefaultCountryCode();
    _phoneValue = PhoneNumber(isoCode: _selectedIsoCode, nsn: '');
    _textController = TextEditingController(text: value ?? '');

    // Detect initial input type if there's a pre-populated value
    if (value != null && value!.isNotEmpty) {
      _detectInputType(value!);
    }
  }

  @override
  void didUpdateWidget(ReactiveEmailOrPhone oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.countryCode?.isoCode != _widget.countryCode?.isoCode) {
      // Only update if the user hasn't entered a phone number that would be
      // overridden.
      if (_widget.countryCode?.isoCode != null &&
          _textController.text.trim().isEmpty) {
        setState(() {
          _selectedIsoCode = _widget.countryCode!.isoCode;
          _phoneValue = PhoneNumber(
            isoCode: _selectedIsoCode,
            nsn: _phoneValue.nsn,
          );
        });
      }
    }
  }

  /// Core text change handler — detects input type and routes appropriately.
  void _onTextChanged(String text) {
    final previousType = _inputType;
    _detectInputType(text, notify: true);

    if (_inputType == EmailOrPhoneInputType.phone) {
      // Parse and format as phone number
      _updatePhoneValue(text);
      didChange(_phoneValue.international);
    } else {
      // Email/undetermined — use raw text
      didChange(text);
    }

    if (previousType != _inputType) {
      _widget.onInputTypeChanged?.call(_inputType);
    }
  }

  /// Updates the internal phone number model from raw text input.
  void _updatePhoneValue(String text) {
    final raw = text.trim();
    if (raw.startsWith('+')) {
      // User pasted or typed an international number
      try {
        _phoneValue = PhoneNumber.parse(raw);
        _selectedIsoCode = _phoneValue.isoCode;
      } on Exception {
        // Partial input like "+" — keep current isoCode
        final digits = raw.replaceAll(RegExp(r'[^\d]'), '');
        _phoneValue = PhoneNumber(isoCode: _selectedIsoCode, nsn: digits);
      }
    } else {
      // Digits only — interpret as national number
      final digits = raw.replaceAll(RegExp(r'[^\d]'), '');
      _phoneValue = PhoneNumber.parse(
        digits,
        destinationCountry: _selectedIsoCode,
      );
    }
  }

  /// Detects whether the input looks like a phone number or email.
  void _detectInputType(String input, {bool notify = false}) {
    final trimmed = input.trim();

    if (trimmed.isEmpty) {
      if (_inputType != EmailOrPhoneInputType.undetermined) {
        _inputType = EmailOrPhoneInputType.undetermined;
        if (notify) setState(() {});
      }
      return;
    }

    // If it contains @, it's definitely email
    if (trimmed.contains('@')) {
      if (_inputType != EmailOrPhoneInputType.email) {
        _inputType = EmailOrPhoneInputType.email;
        if (notify) setState(() {});
      }
      return;
    }

    // If it contains letters (a-z), it's email
    if (RegExp('[a-zA-Z]').hasMatch(trimmed)) {
      if (_inputType != EmailOrPhoneInputType.email) {
        _inputType = EmailOrPhoneInputType.email;
        if (notify) setState(() {});
      }
      return;
    }

    // If it starts with + or is all digits (with optional separators), phone
    if (trimmed.startsWith('+') ||
        RegExp(r'^[\d\s\-\(\)\.]+$').hasMatch(trimmed)) {
      if (_inputType != EmailOrPhoneInputType.phone) {
        _inputType = EmailOrPhoneInputType.phone;
        if (notify) setState(() {});
      }
      return;
    }
  }

  /// Handles country selection from the country selector dialog.
  Future<void> _selectCountry(BuildContext context) async {
    if (!_widget.isCountrySelectionEnabled) return;

    final selected = await _widget.countrySelectorNavigator.show(context);
    if (selected != null) {
      setState(() {
        _selectedIsoCode = selected;
      });
      // Re-parse the current national number with the new country
      final currentText = _textController.text.trim();
      final digits = currentText.replaceAll(RegExp(r'[^\d]'), '');
      _phoneValue = PhoneNumber.parse(
        digits,
        destinationCountry: _selectedIsoCode,
      );
      didChange(_phoneValue.international);
    }
    focusNode.requestFocus();
  }

  /// Builds the country button for phone mode.
  Widget _buildCountryButton() {
    return ExcludeFocus(
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: CountryButton(
          key: const ValueKey('country-code-chip'),
          isoCode: _selectedIsoCode,
          onTap: control.enabled ? () => _selectCountry(context) : null,
          padding: const EdgeInsets.fromLTRB(12, 0, 4, 0),
          showFlag: _widget.countryButtonStyle.showFlag,
          showIsoCode: _widget.countryButtonStyle.showIsoCode,
          showDialCode: _widget.countryButtonStyle.showDialCode,
          showDropdownIcon: _widget.countryButtonStyle.showDropdownIcon,
          dropdownIconColor: _widget.countryButtonStyle.dropdownIconColor,
          textStyle: _widget.countryButtonStyle.textStyle,
          flagSize: _widget.countryButtonStyle.flagSize,
          enabled: control.enabled,
          borderRadius: _widget.countryButtonStyle.borderRadius,
        ),
      ),
    );
  }

  @override
  void onControlValueChanged(dynamic value) {
    final effectiveValue = (value == null) ? '' : value.toString();
    if (_inputType != EmailOrPhoneInputType.phone) {
      if (_textController.text != effectiveValue) {
        _textController.value = _textController.value.copyWith(
          text: effectiveValue,
          selection: TextSelection.collapsed(offset: effectiveValue.length),
          composing: TextRange.empty,
        );
      }
    } else if (effectiveValue.isNotEmpty) {
      try {
        final phoneNumber = PhoneNumber.parse(effectiveValue);
        _phoneValue = phoneNumber;
        _selectedIsoCode = phoneNumber.isoCode;
        // Update the text field with the national number portion
        final nsn = phoneNumber.formatNsn();
        if (_textController.text != nsn) {
          _textController.value = _textController.value.copyWith(
            text: nsn,
            selection: TextSelection.collapsed(offset: nsn.length),
            composing: TextRange.empty,
          );
        }
      } catch (_) {
        // If parsing fails, just update raw text
        if (_textController.text != effectiveValue) {
          _textController.value = _textController.value.copyWith(
            text: effectiveValue,
            selection: TextSelection.collapsed(offset: effectiveValue.length),
            composing: TextRange.empty,
          );
        }
      }
    } else {
      if (_textController.text != effectiveValue) {
        _textController.value = _textController.value.copyWith(
          text: effectiveValue,
          selection: TextSelection.collapsed(offset: effectiveValue.length),
          composing: TextRange.empty,
        );
      }
    }
    super.onControlValueChanged(value);
  }

  @override
  ControlValueAccessor<String, String> selectValueAccessor() =>
      _EmailOrPhoneValueAccessor();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}

class _EmailOrPhoneValueAccessor extends ControlValueAccessor<String, String> {
  @override
  String? modelToViewValue(String? modelValue) => modelValue;

  @override
  String? viewToModelValue(String? viewValue) => viewValue;
}
