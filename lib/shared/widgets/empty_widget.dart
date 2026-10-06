import 'package:flutter/material.dart';
import 'package:hancod_theme/hancod_theme.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({required this.text, this.onTap, super.key});
  final void Function()? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Assets.images.noFiles.svg(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.add_circle_sharp,
                color: AppColors.greyText,
                size: 24,
              ),
              const SizedBox(width: 4),
              Text(
                text,
                style: AppText.largeM.copyWith(color: AppColors.greyText),
              ),
            ],
          ),
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}
