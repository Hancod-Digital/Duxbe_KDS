import 'package:flutter/material.dart';
import 'package:hancod_theme/forms.dart';

class AppReactiveText extends StatelessWidget {
  const AppReactiveText({
    required this.formControlName,
    super.key,
    this.style,
    this.maxLines,
  });
  final String formControlName;
  final TextStyle? style;
  final int? maxLines;

  static const InputDecoration _kBorderlessDecoration = InputDecoration(
    fillColor: Colors.transparent,
    isCollapsed: true,
    border: InputBorder.none,
    enabledBorder: InputBorder.none,
    focusedBorder: InputBorder.none,
    errorBorder: InputBorder.none,
    disabledBorder: InputBorder.none,
    focusedErrorBorder: InputBorder.none,
    contentPadding: EdgeInsets.zero,
  );

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: ReactiveText<String>(
        maxLines: maxLines ?? 1,
        formControlName: formControlName,
        readOnly: true,
        style: style,
        decoration: _kBorderlessDecoration,
      ),
    );
  }
}
