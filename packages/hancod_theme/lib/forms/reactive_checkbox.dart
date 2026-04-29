part of '../forms.dart';

class ReactiveCheckboxWithLabel extends StatefulWidget {
  const ReactiveCheckboxWithLabel({
    required this.label,
    this.formControlName,
    this.formControl,
    super.key,
    this.labelOnRight = true,
    this.labelStyle,
  });
  final String? formControlName;
  final FormControl<dynamic>? formControl;
  final String label;
  final bool labelOnRight;
  final TextStyle? labelStyle;

  @override
  State<ReactiveCheckboxWithLabel> createState() =>
      _ReactiveCheckboxWithLabelState();
}

class _ReactiveCheckboxWithLabelState extends State<ReactiveCheckboxWithLabel> {
  bool _isRequired = false;
  FormControl<bool> _resolveFormControl() {
    final parent = ReactiveForm.of(context, listen: false);
    if (parent == null || parent is! FormControlCollection) {
      throw FormControlParentNotFoundException(widget);
    }

    final collection = parent as FormControlCollection;
    final control =
        widget.formControl ?? collection.control(widget.formControlName!);
    if (control is! FormControl<bool>) {
      throw Exception('Form control is not a bool');
    }

    return control;
  }

  @override
  void initState() {
    super.initState();
    final control = _resolveFormControl();
    _isRequired =
        control.validators.any((validator) => validator is RequiredValidator);
  }

  @override
  Widget build(BuildContext context) {
    final control = _resolveFormControl();
    return ReactiveFormField<bool, bool>(
      formControl: control,
      builder: (field) {
        final hasError = field.errorText != null;
        final checkbox = Checkbox(
          value: field.value ?? false,
          isError: hasError,
          side: BorderSide(
            color: hasError ? AppColors.red : AppColors.black,
            width: 1.5,
          ),
          checkColor: AppColors.white,
          activeColor: hasError ? AppColors.red : AppColors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          onChanged:
              field.control.enabled ? (value) => field.didChange(value) : null,
        );
        final label = Text.rich(
          TextSpan(
            children: [
              TextSpan(text: widget.label, style: widget.labelStyle),
              if (_isRequired)
                const TextSpan(
                  text: ' *',
                  style: TextStyle(color: AppColors.red),
                ),
            ],
          ),
        );

        final rowChildren = widget.labelOnRight
            ? <Widget>[
                checkbox,
                const SizedBox(width: 8),
                label,
              ]
            : <Widget>[
                label,
                const SizedBox(width: 8),
                checkbox,
              ];

        return GestureDetector(
          onTap: () {
            if (!field.control.enabled) return;
            field.didChange(!(field.value ?? false));
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: rowChildren,
              ),
              if (hasError) ...[
                const SizedBox(height: 6),
                Text(
                  _checkboxErrorText(field.control) ?? '',
                  style: AppText.smallN.copyWith(color: AppColors.red),
                ),
              ],
            ],
          ),
        );
      },
    );
  }
}

class ReactiveCheckboxTile extends StatefulWidget {
  const ReactiveCheckboxTile({
    required this.label,
    this.formControlName,
    this.formControl,
    super.key,
    this.labelStyle,
    this.controlAffinity = ListTileControlAffinity.leading,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  });
  final String? formControlName;
  final FormControl<bool>? formControl;
  final String label;
  final TextStyle? labelStyle;
  final ListTileControlAffinity controlAffinity;
  final CrossAxisAlignment crossAxisAlignment;
  @override
  State<ReactiveCheckboxTile> createState() => _ReactiveCheckboxTileState();
}

class _ReactiveCheckboxTileState extends State<ReactiveCheckboxTile> {
  FormControl<bool> _resolveFormControl() {
    final parent = ReactiveForm.of(context, listen: false);
    if (parent == null || parent is! FormControlCollection) {
      throw FormControlParentNotFoundException(widget);
    }

    final collection = parent as FormControlCollection;
    final control =
        widget.formControl ?? collection.control(widget.formControlName!);
    if (control is! FormControl<bool>) {
      throw Exception('Form control is not a bool');
    }

    return control;
  }

  @override
  Widget build(BuildContext context) {
    final control = _resolveFormControl();

    return ReactiveFormField<bool, bool>(
      formControl: control,
      builder: (field) {
        final hasError = field.errorText != null;
        Widget? leading;
        Widget? trailing;
        final checkbox = Checkbox(
          value: field.value ?? false,
          isError: hasError,
          side: BorderSide(
            color: hasError ? AppColors.red : AppColors.black,
            width: 1.5,
          ),
          checkColor: AppColors.white,
          activeColor: hasError ? AppColors.red : AppColors.black,
          onChanged: (value) {
            if (!field.control.enabled) return;
            field.didChange(value);
          },
        );
        final secondary = Text(
          widget.label,
          overflow: TextOverflow.ellipsis,
          style: widget.labelStyle ??
              AppText.largeN.copyWith(color: AppColors.stormyBlue),
        );
        switch (widget.controlAffinity) {
          case ListTileControlAffinity.leading:
            leading = checkbox;
            trailing = secondary;
          case ListTileControlAffinity.trailing:
          case ListTileControlAffinity.platform:
            leading = secondary;
            trailing = checkbox;
        }
        return GestureDetector(
          onTap: () {
            if (!field.control.enabled) return;
            field.didChange(!(field.value ?? false));
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: widget.crossAxisAlignment,
                children: [leading, trailing],
              ),
              if (hasError) ...[
                const SizedBox(height: 6),
                Text(
                  _checkboxErrorText(field.control) ?? '',
                  style: AppText.smallN.copyWith(color: AppColors.red),
                ),
              ],
            ],
          ),
        );
      },
    );
  }
}

String? _checkboxErrorText(FormControl<bool> control) {
  final errorKey = control.errors.entries.firstOrNull?.key;
  if (errorKey == null) return null;
  if (errorKey == ValidationMessage.requiredTrue ||
      errorKey == ValidationMessage.required) {
    return 'This field is required';
  }
  return errorKey;
}
