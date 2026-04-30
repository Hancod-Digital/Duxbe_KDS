import 'package:flutter/material.dart';
import 'package:hancod_theme/hancod_theme.dart';
import 'package:shimmer/shimmer.dart';

class AppShimmer extends StatelessWidget {
  const AppShimmer({
    required this.child,
    super.key,
    this.baseColor,
    this.highlightColor,
  });

  final Widget child;
  final Color? baseColor;
  final Color? highlightColor;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: baseColor ?? AppColors.greyBorder.withValues(alpha: .82),
      highlightColor: highlightColor ?? AppColors.white.withValues(alpha: .98),
      child: child,
    );
  }
}

class ShimmerBlock extends StatelessWidget {
  const ShimmerBlock({
    required this.width,
    required this.height,
    super.key,
    this.radius = 12,
  });

  final double? width;
  final double height;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: AppColors.greyBorder.withValues(alpha: .92),
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }
}

class SalesBoardShimmer extends StatelessWidget {
  const SalesBoardShimmer({required this.isMobile, super.key});

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return AppShimmer(
      baseColor: AppColors.greyBorder.withValues(alpha: .90),
      highlightColor: AppColors.white.withValues(alpha: .98),
      child: isMobile
          ? const _PhoneListSkeleton()
          : const _DesktopBoardSkeleton(),
    );
  }
}

class LaneContentShimmer extends StatelessWidget {
  const LaneContentShimmer({
    required this.isMobile,
    super.key,
    this.itemCount,
  });

  final bool isMobile;
  final int? itemCount;

  @override
  Widget build(BuildContext context) {
    final count = itemCount ?? (isMobile ? 4 : 3);
    final item = isMobile ? const _MobileLaneCardSkeleton() : const _WebLaneCardSkeleton();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: List.generate(
        count,
        (index) => Padding(
          padding: EdgeInsets.only(bottom: index == count - 1 ? 0 : 12),
          child: item,
        ),
      ),
    );
  }
}

class _DesktopBoardSkeleton extends StatelessWidget {
  const _DesktopBoardSkeleton();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color(0xffEBEBEB)),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 22, 24, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _DesktopHeaderSkeleton(),
              const SizedBox(height: 18),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ShimmerBlock(
                                  width: 260,
                                  height: 28,
                                  radius: 12,
                                ),
                                SizedBox(height: 10),
                                ShimmerBlock(
                                  width: 340,
                                  height: 14,
                                  radius: 10,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 20),
                          Wrap(
                            spacing: 12,
                            runSpacing: 12,
                            children: List.generate(
                              3,
                              (index) => const _SummaryPillSkeleton(),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 18),
                      Row(
                        children: [
                          const Expanded(
                            child: ShimmerBlock(
                              width: double.infinity,
                              height: 48,
                              radius: 18,
                            ),
                          ),
                          const SizedBox(width: 12),
                          const ShimmerBlock(width: 48, height: 48, radius: 16),
                        ],
                      ),
                      const SizedBox(height: 18),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: const [
                            Expanded(child: _LaneSkeleton()),
                            SizedBox(width: 12),
                            Expanded(child: _LaneSkeleton()),
                            SizedBox(width: 12),
                            Expanded(child: _LaneSkeleton()),
                            SizedBox(width: 12),
                            Expanded(child: _LaneSkeleton()),
                            SizedBox(width: 12),
                            Expanded(child: _LaneSkeleton()),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DesktopHeaderSkeleton extends StatelessWidget {
  const _DesktopHeaderSkeleton();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Row(
        children: [
          const _HeaderBrandSkeleton(),
          const Spacer(),
          const _HeaderBusinessSkeleton(),
          const SizedBox(width: 14),
          const _HeaderActionSkeleton(width: 132),
        ],
      ),
    );
  }
}

class _HeaderBrandSkeleton extends StatelessWidget {
  const _HeaderBrandSkeleton();

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        ShimmerBlock(width: 54, height: 54, radius: 16),
        SizedBox(width: 14),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShimmerBlock(width: 180, height: 24, radius: 10),
            SizedBox(height: 8),
            ShimmerBlock(width: 150, height: 12, radius: 10),
            SizedBox(height: 6),
            ShimmerBlock(width: 120, height: 10, radius: 10),
          ],
        ),
      ],
    );
  }
}

class _HeaderBusinessSkeleton extends StatelessWidget {
  const _HeaderBusinessSkeleton();

  @override
  Widget build(BuildContext context) {
    return const ShimmerBlock(width: 280, height: 46, radius: 18);
  }
}

class _HeaderActionSkeleton extends StatelessWidget {
  const _HeaderActionSkeleton({required this.width});

  final double width;

  @override
  Widget build(BuildContext context) {
    return ShimmerBlock(width: width, height: 46, radius: 16);
  }
}

class _SummaryPillSkeleton extends StatelessWidget {
  const _SummaryPillSkeleton();

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minWidth: 124),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.brandViolet.withValues(alpha: .08),
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ShimmerBlock(width: 92, height: 10, radius: 999),
          SizedBox(height: 6),
          ShimmerBlock(width: 48, height: 18, radius: 10),
        ],
      ),
    );
  }
}

class _PhoneListSkeleton extends StatelessWidget {
  const _PhoneListSkeleton();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(36),
        border: Border.all(
          color: AppColors.white.withValues(alpha: .72),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: .12),
            blurRadius: 28,
            offset: const Offset(0, 16),
          ),
        ],
      ),
      padding: const EdgeInsets.fromLTRB(14, 16, 14, 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 74,
              height: 6,
              decoration: BoxDecoration(
                color: AppColors.greyBorder.withValues(alpha: .68),
                borderRadius: BorderRadius.circular(999),
              ),
            ),
          ),
          const SizedBox(height: 16),
          const ShimmerBlock(width: 132, height: 14, radius: 10),
          const SizedBox(height: 8),
          const ShimmerBlock(width: 186, height: 10, radius: 10),
          const SizedBox(height: 18),
          const ShimmerBlock(width: double.infinity, height: 46, radius: 18),
          const SizedBox(height: 16),
          Column(
            children: List.generate(
              6,
              (index) => Padding(
                padding: EdgeInsets.only(bottom: index == 5 ? 0 : 10),
                child: const _OrderRowSkeleton(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _LaneSkeleton extends StatelessWidget {
  const _LaneSkeleton();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.greyBorder.withValues(alpha: .12),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 5,
            color: AppColors.greyBorder.withValues(alpha: .35),
          ),
          const Padding(
            padding: EdgeInsets.all(12),
            child: Row(
              children: [
                Expanded(
                  child: ShimmerBlock(width: 120, height: 18, radius: 10),
                ),
                SizedBox(width: 10),
                ShimmerBlock(width: 30, height: 22, radius: 999),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: ListView.separated(
                itemCount: 4,
                separatorBuilder: (_, __) => const SizedBox(height: 12),
                itemBuilder: (context, index) {
                  return const _OrderCardSkeleton();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _OrderCardSkeleton extends StatelessWidget {
  const _OrderCardSkeleton();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.greyBorder.withValues(alpha: .10),
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: .04),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              ShimmerBlock(width: 40, height: 40, radius: 12),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ShimmerBlock(width: 120, height: 16, radius: 10),
                    SizedBox(height: 8),
                    ShimmerBlock(width: 80, height: 12, radius: 10),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const ShimmerBlock(width: double.infinity, height: 14, radius: 10),
          const SizedBox(height: 8),
          const ShimmerBlock(width: 180, height: 14, radius: 10),
          const SizedBox(height: 12),
          Wrap(
            spacing: 6,
            runSpacing: 6,
            children: List.generate(
              3,
              (index) => const ShimmerBlock(width: 72, height: 24, radius: 999),
            ),
          ),
        ],
      ),
    );
  }
}

class _OrderRowSkeleton extends StatelessWidget {
  const _OrderRowSkeleton();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.greyBorder.withValues(alpha: .10),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppColors.greyBorder.withValues(alpha: .28)),
      ),
      child: Row(
        children: [
          const ShimmerBlock(width: 44, height: 44, radius: 14),
          const SizedBox(width: 12),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ShimmerBlock(width: 180, height: 12, radius: 10),
                SizedBox(height: 8),
                ShimmerBlock(width: 120, height: 10, radius: 10),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const ShimmerBlock(width: 54, height: 22, radius: 999),
              const SizedBox(height: 8),
              ShimmerBlock(width: 42, height: 10, radius: 999),
            ],
          ),
        ],
      ),
    );
  }
}

class _WebLaneCardSkeleton extends StatelessWidget {
  const _WebLaneCardSkeleton();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: .06),
            blurRadius: 14,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              ShimmerBlock(width: 38, height: 38, radius: 12),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ShimmerBlock(width: 110, height: 14, radius: 10),
                    SizedBox(height: 6),
                    ShimmerBlock(width: 140, height: 10, radius: 10),
                  ],
                ),
              ),
              SizedBox(width: 10),
              ShimmerBlock(width: 60, height: 24, radius: 999),
            ],
          ),
          const SizedBox(height: 12),
          const ShimmerBlock(width: double.infinity, height: 12, radius: 10),
          const SizedBox(height: 8),
          const ShimmerBlock(width: 170, height: 12, radius: 10),
          const SizedBox(height: 12),
          Wrap(
            spacing: 6,
            runSpacing: 6,
            children: List.generate(
              3,
              (index) => const ShimmerBlock(width: 72, height: 22, radius: 999),
            ),
          ),
        ],
      ),
    );
  }
}

class _MobileLaneCardSkeleton extends StatelessWidget {
  const _MobileLaneCardSkeleton();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: .05),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              ShimmerBlock(width: 40, height: 40, radius: 12),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ShimmerBlock(width: 120, height: 16, radius: 10),
                    SizedBox(height: 8),
                    ShimmerBlock(width: 80, height: 12, radius: 10),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const ShimmerBlock(width: double.infinity, height: 14, radius: 10),
          const SizedBox(height: 8),
          const ShimmerBlock(width: 180, height: 14, radius: 10),
          const SizedBox(height: 12),
          Wrap(
            spacing: 6,
            runSpacing: 6,
            children: List.generate(
              3,
              (index) => const ShimmerBlock(width: 72, height: 24, radius: 999),
            ),
          ),
        ],
      ),
    );
  }
}
