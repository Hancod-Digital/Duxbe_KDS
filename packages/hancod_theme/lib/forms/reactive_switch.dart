part of '../forms.dart';

class ReactiveCupertinoSwitch extends ReactiveFormField<bool, bool> {
  /// Constructs an instance of [ReactiveCupertinoSwitch].
  ///
  /// The argument [formControlName] must not be null.
  ReactiveCupertinoSwitch({
    required String formControlName,
    super.key,
    String? label,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.start,
    TextStyle? hintStyle,
    MainAxisSize mainAxisSize = MainAxisSize.min,
    Color? activeColor,
  }) : super(
          formControlName: formControlName,
          builder: (ReactiveFormFieldState<bool, bool> field) {
            // RatingBar inner widget
            return Row(
              spacing: 12,
              mainAxisSize: mainAxisSize,
              mainAxisAlignment: mainAxisAlignment,
              crossAxisAlignment: crossAxisAlignment,
              children: [
                if (label != null)
                  Text(label, style: hintStyle ?? AppText.largeM),
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
                      value: field.value ?? false,
                      onChanged: (value) {
                        field.didChange(value);
                      },
                    ),
                  ),
                ),
              ],
            );
          },
        );

  @override
  ReactiveFormFieldState<bool, bool> createState() =>
      ReactiveFormFieldState<bool, bool>();
}
