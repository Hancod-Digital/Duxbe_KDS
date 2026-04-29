// ignore_for_file: strict_raw_type

part of '../forms.dart';

class AppTextForm<T> extends AppForm<T> {
  const AppTextForm({
    required super.name,
    super.label,
    super.key,
    this.hintText,
    super.initialValue,
    super.fieldKey,
    this.onChanged,
    this.inputFormatters,
    this.minLines = 1,
    this.controller,
    this.enableObscureText = false,
    this.keyboardType,
    super.validator,
    super.autovalidateMode,
    this.onSubmitted,
    this.focusNode,
    super.enabled,
    this.prefixIcon,
    this.suffixIcon,
    this.isReadOnly = false,
    this.decoration,
    this.style,
    this.onFocusLose,
    this.secondaryLabel,
    this.textInputAction,
    this.textAlign = TextAlign.start,
    this.autofocus = false,
  });

  final void Function(T? value)? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final int minLines;
  final String? hintText;
  final TextEditingController? controller;
  final bool enableObscureText;
  final TextInputType? keyboardType;
  final void Function(T value)? onSubmitted;
  final FocusNode? focusNode;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool isReadOnly;
  final InputDecoration? decoration;
  final TextStyle? style;
  final void Function(T? value)? onFocusLose;
  final TextInputAction? textInputAction;
  @override
  final String? secondaryLabel;
  final TextAlign textAlign;
  final bool autofocus;
  @override
  State<AppTextForm<T>> createState() => _AppTextFormState();
}

class _AppTextFormState<T> extends State<AppTextForm<T>> {
  bool isObscure = true;
  late GlobalKey<FormBuilderFieldState> _key;
  late FocusNode _focusNode;
  late InputDecoration _decoration;
  @override
  void initState() {
    super.initState();
    _key = widget.fieldKey ?? GlobalKey<FormBuilderFieldState>();
    _decoration = widget.decoration ?? const InputDecoration();
    _focusNode = widget.focusNode ?? FocusNode();
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus) {
        final val = _key.currentState?.value as String?;
        widget.onFocusLose?.call(
          switch (T) {
            String => val as T?,
            int => val == null ? null : int.tryParse(val) as T?,
            double => val == null ? null : double.tryParse(val) as T?,
            _ => val as T?
          },
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.buildContainer(
      context,
      FormBuilderTextField(
        autovalidateMode: widget.autovalidateMode,
        name: widget.name,
        enabled: widget.enabled,
        textAlign: widget.textAlign,
        key: _key,
        controller: widget.controller,
        autofocus: widget.autofocus,
        decoration: _decoration.copyWith(
          hintText: widget.hintText,
          labelText: widget.secondaryLabel,
          suffixIcon: widget.enableObscureText
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                  icon: isObscure
                      ? const Icon(Icons.visibility_outlined)
                      : const Icon(Icons.visibility_off_outlined),
                )
              : widget.suffixIcon,
          prefixIcon: widget.prefixIcon,
        ),
        onChanged: (val) {
          widget.onChanged?.call(
            switch (T) {
              String => val as T?,
              int => val == null ? null : int.tryParse(val) as T?,
              double => val == null ? null : double.tryParse(val) as T?,
              _ => val as T?
            },
          );
        },
        validator: (val) {
          return switch (T) {
            String => widget.validator?.call(val as T?),
            int => widget.validator
                ?.call(val == null ? null : int.tryParse(val) as T?),
            double => widget.validator
                ?.call(val == null ? null : double.tryParse(val) as T?),
            Type() => widget.validator?.call(val as T?),
          };
        },
        initialValue: switch (T) {
          String => widget.initialValue as String?,
          int => widget.initialValue?.toString(),
          double => widget.initialValue?.toString(),
          _ => widget.initialValue?.toString()
        },
        valueTransformer: (value) {
          return switch (T) {
            String => value as T?,
            int => value == null ? null : int.tryParse(value) as T?,
            double => value == null ? null : double.tryParse(value) as T?,
            _ => value as T?
          };
        },
        readOnly: widget.isReadOnly,
        minLines: widget.minLines,
        focusNode: _focusNode,
        obscureText: widget.enableObscureText && isObscure,
        style: widget.style,
        maxLines: widget.minLines,
        textInputAction: widget.textInputAction,
        inputFormatters: [
          if (T == double)
            TextInputFormatter.withFunction(
              (TextEditingValue oldValue, TextEditingValue newValue) {
                // Handle empty string case
                if (newValue.text.isEmpty) {
                  return const TextEditingValue(
                    text: '0',
                    selection: TextSelection.collapsed(offset: 1),
                  );
                }

                // Handle leading zeros
                if (num.tryParse(oldValue.text) == 0 &&
                    newValue.text.startsWith('0') &&
                    !newValue.text.startsWith('0.')) {
                  // Remove all leading zeros from the new text
                  final cleanedText =
                      newValue.text.substring(newValue.text.length - 1);
                  return TextEditingValue(
                    text: cleanedText,
                    selection:
                        TextSelection.collapsed(offset: cleanedText.length),
                  );
                }

                // Validate if it's a valid double
                if (double.tryParse(newValue.text) == null) {
                  return oldValue;
                }

                return newValue;
              },
            ),
          if (T == int)
            TextInputFormatter.withFunction(
              (TextEditingValue oldValue, TextEditingValue newValue) {
                // Handle empty string case
                if (newValue.text.isEmpty) {
                  return const TextEditingValue(
                    text: '0',
                    selection: TextSelection.collapsed(offset: 1),
                  );
                }

                // Handle leading zeros
                if (num.tryParse(oldValue.text) == 0 &&
                    newValue.text.startsWith('0')) {
                  // Remove all leading zeros from the new text
                  final cleanedText =
                      newValue.text.substring(newValue.text.length - 1);
                  return TextEditingValue(
                    text: cleanedText,
                    selection:
                        TextSelection.collapsed(offset: cleanedText.length),
                  );
                }

                // Validate if it's a valid integer
                if (int.tryParse(newValue.text) == null) {
                  return oldValue;
                }

                return newValue;
              },
            ),
          ...widget.inputFormatters ?? [],
        ],
        keyboardType: widget.keyboardType ??
            switch (T) {
              String => TextInputType.text,
              int => TextInputType.number,
              double => const TextInputType.numberWithOptions(decimal: true),
              Type() => TextInputType.text,
            },
        onSubmitted: (value) {
          if (value == null) return;
          widget.onSubmitted?.call(
            switch (T) {
              String => value as T,
              int => int.tryParse(value) as T,
              double => double.tryParse(value) as T,
              _ => value as T
            },
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    if (widget.focusNode == null) {
      _focusNode.dispose();
    }
    super.dispose();
  }
}
