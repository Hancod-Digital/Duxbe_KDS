import 'package:duxbe_kds/shared/utils/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hancod_theme/hancod_theme.dart';
import 'package:reactive_forms/reactive_forms.dart';

class CommonSearchFilter extends StatelessWidget {
  const CommonSearchFilter({
    required this.formControlName,
    required this.onChanged,
    required this.onFilterTap,
    this.padding = const EdgeInsets.fromLTRB(16, 12, 16, 10),
    this.hintText = 'Search',
    super.key,
  });

  final String formControlName;
  final void Function(FormControl<String>)? onChanged;
  final VoidCallback onFilterTap;
  final EdgeInsetsGeometry padding;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 48,
              child: ReactiveText<String>(
                onChanged: onChanged,
                formControlName: formControlName,
                style: AppText.mediumN.copyWith(color: AppColors.greyText),
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: AppText.mediumN.copyWith(
                    color: AppColors.greyText.withValues(alpha: .5),
                  ),
                  border: InputBorder.none,
                  isDense: true,
                  prefixIcon: Icon(
                    Icons.search,
                    color: AppColors.greyText.withValues(alpha: 0.45),
                    size: 24,
                  ),
                  prefixIconConstraints: const BoxConstraints(
                    minWidth: 56,
                    minHeight: 48,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          // InkWell(
          //   onTap: onFilterTap,
          //   child: SizedBox(
          //     height: 24,
          //     width: 24,
          //     child: SvgPicture.asset(Assets.icons.filter.path),
          //   ),
          // ),
        ],
      ),
    );
  }
}
