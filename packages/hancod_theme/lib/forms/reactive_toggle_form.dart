part of '../forms.dart';

class ReactiveToggleForm extends ReactiveFormField<bool, bool> {
  ReactiveToggleForm({
    super.key,
    super.formControlName,
    super.formControl,
    super.validationMessages,
    super.showErrors,
    super.focusNode,
    String? hint,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.start,
    TextStyle? hintStyle,
    Color? activeColor,
    MainAxisSize mainAxisSize = MainAxisSize.min,
    bool readOnly = false,
    ValueChanged<bool?>? onChanged,
  }) : super(
          builder: (ReactiveFormFieldState<bool, bool> field) {
            final isDisabled = readOnly || field.control.disabled;
            final value = field.value ?? false;

            return GestureDetector(
              onTap: isDisabled
                  ? null
                  : () {
                      final newValue = !value;
                      field.didChange(newValue);
                      onChanged?.call(newValue);
                    },
              child: Row(
                spacing: 12,
                mainAxisSize: mainAxisSize,
                mainAxisAlignment: mainAxisAlignment,
                crossAxisAlignment: crossAxisAlignment,
                children: [
                  if (hint != null)
                    Text(hint, style: hintStyle ?? AppText.largeM),
                  SizedBox(
                    height: 30,
                    width: 42,
                    child: Transform.scale(
                      transformHitTests: false,
                      scale: .6,
                      child: CupertinoSwitch(
                        thumbColor: AppColors.white,
                        activeTrackColor: activeColor ?? AppColors.primaryColor,
                        inactiveTrackColor: AppColors.stormyBlue,
                        value: value,
                        onChanged: isDisabled
                            ? null
                            : (next) {
                                field.didChange(next);
                                onChanged?.call(next);
                              },
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );

  @override
  ReactiveFormFieldState<bool, bool> createState() =>
      ReactiveFormFieldState<bool, bool>();
}
