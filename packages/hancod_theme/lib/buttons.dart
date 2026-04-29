import 'dart:async';
import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hancod_theme/hancod_theme.dart';

enum ButtonStyles { primary, secondary, cancel }

class AppButton extends StatefulWidget {
  const AppButton({
    required this.onPress,
    required this.label,
    super.key,
    this.isLoading = false,
    this.width = double.infinity,
    this.height,
    this.style = ButtonStyles.primary,
    this.padding,
    this.color,
    this.borderRadius = const BorderRadius.all(Radius.circular(10)),
  });

  factory AppButton.icon({
    required Widget icon,
    required VoidCallback? onPress,
    Widget? label,
    Key? key,
    bool isLoading,
    double width,
    ButtonStyles style,
    Color? color,
    EdgeInsetsGeometry padding,
    bool? iconLeading,
  }) = _AppButtonWithIcon;

  factory AppButton.number({
    required String label,
    required int number,
    required VoidCallback? onPress,
    Key? key,
    bool isLoading = false,
    double width = 170,
    ButtonStyles style = ButtonStyles.secondary,
    Color? color,
    EdgeInsetsGeometry padding = const EdgeInsets.symmetric(
      horizontal: 12,
      vertical: 14,
    ),
    BorderRadiusGeometry borderRadius = const BorderRadius.all(
      Radius.circular(999),
    ),
  }) {
    return _AppButtonWithNumber(
      key: key,
      onPress: onPress,
      label: label,
      number: number,
      isLoading: isLoading,
      width: width,
      style: style,
      color: color,
      padding: padding,
      borderRadius: borderRadius,
    );
  }

  final VoidCallback? onPress;
  final Widget label;
  final bool isLoading;
  final double width;
  final double? height;
  final ButtonStyles style;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final BorderRadiusGeometry borderRadius;

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  bool _isClickable = true;
  Timer? _timer;

  final largePadding = const EdgeInsets.symmetric(vertical: 20, horizontal: 24);
  final smallPadding = const EdgeInsets.all(12);

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isSmall = MediaQuery.sizeOf(context).width < 500;
    return Material(
      borderRadius: widget.borderRadius,
      child: Ink(
        child: TextButton(
          style: ButtonStyle(
            padding: WidgetStateProperty.resolveWith(
              (states) =>
                  widget.padding ?? (isSmall ? smallPadding : largePadding),
            ),
            shape: WidgetStateProperty.resolveWith(
              (states) => switch (widget.style) {
                ButtonStyles.primary => RoundedRectangleBorder(
                    borderRadius: widget.borderRadius,
                  ),
                ButtonStyles.secondary => RoundedRectangleBorder(
                    borderRadius: widget.borderRadius,
                    side: BorderSide(
                      color: widget.color ?? AppColors.brandViolet,
                    ),
                  ),
                ButtonStyles.cancel => RoundedRectangleBorder(
                    borderRadius: widget.borderRadius,
                    side: const BorderSide(color: Color(0xffF0F6FD)),
                  ),
              },
            ),
            foregroundColor: WidgetStateProperty.resolveWith(
              (states) => switch (widget.style) {
                ButtonStyles.primary => AppColors.white,
                ButtonStyles.secondary => widget.color ?? AppColors.brandViolet,
                ButtonStyles.cancel => widget.color ?? AppColors.brandViolet,
              },
            ),
            backgroundColor: WidgetStateProperty.resolveWith(
              (states) => switch (widget.style) {
                ButtonStyles.primary => widget.color ?? AppColors.brandViolet,
                ButtonStyles.secondary => AppColors.white,
                ButtonStyles.cancel => AppColors.white,
              },
            ),
            overlayColor: WidgetStateProperty.resolveWith(
              (states) => switch (widget.style) {
                ButtonStyles.primary => AppColors.brandViolet.withOpacity(.05),
                ButtonStyles.secondary =>
                  (widget.color ?? AppColors.brandViolet).withOpacity(.05),
                ButtonStyles.cancel =>
                  (widget.color ?? AppColors.brandViolet).withOpacity(.05),
              },
            ),
            elevation: WidgetStateProperty.all(6),
            shadowColor: WidgetStateProperty.resolveWith(
              (states) => switch (widget.style) {
                ButtonStyles.primary ||
                ButtonStyles.secondary ||
                ButtonStyles.cancel =>
                  AppColors.brandViolet.withOpacity(.05),
              },
            ),
            fixedSize: WidgetStateProperty.resolveWith(
              (states) => Size(widget.width, widget.height ?? double.infinity),
            ),
            alignment: Alignment.center,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            animationDuration: const Duration(milliseconds: 500),
            splashFactory: InkRipple.splashFactory,
            enableFeedback: true,
          ),
          onPressed: (widget.isLoading || !_isClickable)
              ? null
              : () async {
                  if (!_isClickable) return;
                  setState(() {
                    _isClickable = false;
                  });
                  try {
                    widget.onPress?.call();
                  } finally {
                    // Set a timer to re-enable the button after a delay
                    _timer = Timer(const Duration(milliseconds: 100), () {
                      if (mounted) {
                        setState(() {
                          _isClickable = true;
                        });
                      }
                    });
                  }
                },
          child: widget.isLoading
              ? const SizedBox(
                  height: 16,
                  width: 16,
                  child: CircularProgressIndicator(
                    color: AppColors.white,
                  ),
                )
              : widget.label,
        ),
      ),
    );
  }
}

class _AppButtonWithIcon extends AppButton {
  _AppButtonWithIcon({
    required super.onPress,
    required Widget icon,
    Widget? label,
    super.key,
    super.style,
    super.isLoading,
    super.width,
    super.padding,
    super.color,
    bool? iconLeading,
  }) : super(
          label: _AppButtonWithIconChild(
            icon: icon,
            label: label,
            iconLeading: iconLeading ?? true,
          ),
        );
}

class _AppButtonWithNumber extends AppButton {
  _AppButtonWithNumber({
    required super.onPress,
    required String label,
    required int number,
    super.key,
    super.style,
    super.isLoading,
    super.width,
    super.padding,
    super.color,
    super.borderRadius,
  }) : super(
          label: _AppButtonWithNumberChild(label: label, number: number),
        );
}

class _AppButtonWithNumberChild extends StatelessWidget {
  const _AppButtonWithNumberChild({required this.label, required this.number});

  final String label;
  final int number;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text(
            label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppText.mediumM.copyWith(color: AppColors.primaryColor),
          ),
        ),
        const SizedBox(width: 8),
        Container(
          width: 28,
          height: 28,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: AppColors.black,
            shape: BoxShape.circle,
          ),
          child: Text(
            '$number',
            style: AppText.xSmallSB.copyWith(color: AppColors.white),
          ),
        ),
      ],
    );
  }
}

class _AppButtonWithIconChild extends StatelessWidget {
  const _AppButtonWithIconChild({
    required this.icon,
    this.label,
    this.iconLeading = true,
  });

  final Widget? label;
  final Widget icon;
  final bool iconLeading;
  @override
  Widget build(BuildContext context) {
    final scale = MediaQuery.textScalerOf(context).scale(14);
    final gap = scale <= 1 ? 8 : lerpDouble(8, 4, math.min(scale - 1, 1))!;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        if (iconLeading) ...[
          icon,
          if (label != null) SizedBox(width: gap.toDouble()),
        ],
        if (label != null) Flexible(child: label!),
        if (!iconLeading) ...[
          if (label != null) SizedBox(width: gap.toDouble()),
          icon,
        ],
      ],
    );
  }
}

class AppIconButton extends StatefulWidget {
  const AppIconButton({
    required this.onPress,
    required this.label,
    super.key,
    this.isLoading = false,
    this.width = double.infinity,
    this.height,
    this.style = ButtonStyles.primary,
    this.padding = const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
    this.color,
  });

  final VoidCallback? onPress;
  final Widget label;
  final bool isLoading;
  final double width;
  final double? height;
  final ButtonStyles style;
  final EdgeInsetsGeometry padding;
  final Color? color;

  @override
  State<AppIconButton> createState() => _AppIconButtonState();
}

class _AppIconButtonState extends State<AppIconButton> {
  bool _isClickable = true;
  Timer? _timer;

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: switch (widget.style) {
        ButtonStyles.primary => RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ButtonStyles.secondary => RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(
              color: widget.color ?? AppColors.brandViolet,
            ),
          ),
        ButtonStyles.cancel => RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(color: Color(0xffF0F6FD)),
          ),
      },
      child: Ink(
        height: widget.height ?? 50,
        width: widget.height ?? 50,
        child: IconButton.outlined(
          style: IconButton.styleFrom(
            padding: widget.padding,
            shape: switch (widget.style) {
              ButtonStyles.primary => RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ButtonStyles.secondary => RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                    color: widget.color ?? AppColors.brandViolet,
                  ),
                ),
              ButtonStyles.cancel => RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(color: Color(0xffF0F6FD)),
                ),
            },
            foregroundColor: switch (widget.style) {
              ButtonStyles.primary => AppColors.white,
              ButtonStyles.secondary => widget.color ?? AppColors.brandViolet,
              ButtonStyles.cancel => widget.color ?? AppColors.brandViolet,
            },
            backgroundColor: switch (widget.style) {
              ButtonStyles.primary => widget.color ?? AppColors.brandViolet,
              ButtonStyles.secondary => AppColors.white,
              ButtonStyles.cancel => AppColors.white,
            },
            overlayColor: switch (widget.style) {
              ButtonStyles.primary => AppColors.brandViolet.withOpacity(.05),
              ButtonStyles.secondary =>
                (widget.color ?? AppColors.brandViolet).withOpacity(.05),
              ButtonStyles.cancel =>
                (widget.color ?? AppColors.brandViolet).withOpacity(.05),
            },
            elevation: 6,
            shadowColor: switch (widget.style) {
              ButtonStyles.primary ||
              ButtonStyles.secondary ||
              ButtonStyles.cancel =>
                AppColors.brandViolet.withOpacity(.05),
            },
          ),
          onPressed: (widget.isLoading || !_isClickable)
              ? null
              : () async {
                  if (!_isClickable) return;
                  setState(() {
                    _isClickable = false;
                  });
                  try {
                    widget.onPress?.call();
                  } finally {
                    // Set a timer to re-enable the button after a delay
                    _timer = Timer(const Duration(milliseconds: 500), () {
                      if (mounted) {
                        setState(() {
                          _isClickable = true;
                        });
                      }
                    });
                  }
                },
          icon: widget.isLoading
              ? const SizedBox(
                  height: 16,
                  width: 16,
                  child: CircularProgressIndicator(
                    color: AppColors.white,
                  ),
                )
              : widget.label,
        ),
      ),
    );
  }
}
