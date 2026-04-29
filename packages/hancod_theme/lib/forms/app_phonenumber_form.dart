part of '../forms.dart';

class AppPhoneNumberForm extends AppForm<String> {
  const AppPhoneNumberForm({
    required super.name,
    super.key,
    super.validator,
    this.mobileValidator,
    super.label,
    PhoneNumber? super.initialValue,
    super.fieldKey,
    this.onChanged,
    this.required = false,
    this.decoration = const InputDecoration(),
    this.onFieldSubmitted,
    super.enabled = true,
  });

  final void Function(String?)? onChanged;
  final bool required;
  final String? Function(PhoneNumber?)? mobileValidator;
  final void Function(String value)? onFieldSubmitted;
  final InputDecoration decoration;
  @override
  State<AppPhoneNumberForm> createState() => _AppPhoneNumberFormState();
}

class _AppPhoneNumberFormState extends State<AppPhoneNumberForm> {
  @override
  Widget build(BuildContext context) {
    return widget.buildContainer(
      context,
      FormBuilderField<String>(
        enabled: widget.enabled,
        name: widget.name,
        validator: (value) {
          // First run the string validator if provided
          final stringValidation = widget.validator?.call(value);
          if (stringValidation != null) return stringValidation;

          // Then run the phone number validator if provided
          if (widget.mobileValidator != null &&
              value != null &&
              value.isNotEmpty) {
            try {
              final phoneNumber = PhoneNumber.parse(value);
              return widget.mobileValidator?.call(phoneNumber);
            } catch (e) {
              return 'Invalid phone number format';
            }
          }

          // Check required field
          if (widget.required && (value == null || value.isEmpty)) {
            return 'This field is required';
          }

          return null;
        },
        onChanged: widget.onChanged,
        initialValue: (widget.initialValue as PhoneNumber?)?.international,
        builder: (FormFieldState<String> field) {
          return PhoneFormField(
            enabled: widget.enabled,
            initialValue: widget.initialValue as PhoneNumber?,
            validator: widget.mobileValidator,
            decoration: widget.decoration.copyWith(
              errorText: field.errorText,
            ),
            onChanged: (phoneNumber) {
              // Update the form field with the international format
              field.didChange(phoneNumber.international);
              widget.onChanged?.call(phoneNumber.international);
            },
            onSubmitted: (phoneNumber) {
              field.didChange(phoneNumber.international);
              widget.onFieldSubmitted?.call(phoneNumber.international);
            },
            countrySelectorNavigator: const CountrySelectorNavigator.dialog(
              height: 600,
              width: 500,
            ),
            countryButtonStyle: const CountryButtonStyle(
              showIsoCode: true,
              flagSize: 16,
            ),
          );
        },
      ),
    );
  }
}
