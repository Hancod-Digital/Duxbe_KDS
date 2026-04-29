import 'package:duxbe_kds/features/auth/auth.dart';
import 'package:duxbe_kds/features/home/presentation/home/widgets/business_switcher.dart';
import 'package:duxbe_kds/features/home/presentation/home/widgets/home_orders_board.dart';
import 'package:duxbe_kds/shared/shared.dart';
import 'package:duxbe_kds/shared/utils/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hancod_theme/hancod_theme.dart';

class HomeScreenMobile extends ConsumerStatefulWidget {
  const HomeScreenMobile({super.key});

  @override
  ConsumerState<HomeScreenMobile> createState() => _HomeScreenMobileState();
}

class _HomeScreenMobileState extends ConsumerState<HomeScreenMobile> {
  Future<void> _handleLogout() async {
    await ref
        .read(asyncActionProvider(actionName: 'sign_out').notifier)
        .execute(
          () async {
            await ref.read(authProvider.notifier).signOut();
            if (mounted) {
              context.goNamed(AppRouter.login);
            }
          },
          error: (error, stackTrace) {
            Alert.error(error.toString());
          },
        );
  }

  @override
  Widget build(BuildContext context) {
    final currentUser = ref.watch(supabaseProvider).auth.currentUser;
    final selectedBusiness = ref.watch(selectedBusinessProvider);
    final displayName =
        currentUser?.email ?? currentUser?.phone ?? context.l10n.welcomeToDuxbe;
    final currentBusinessName =
        selectedBusiness?.business?.name ??
        selectedBusiness?.name ??
        context.l10n.noBusinessesAvailable;

    return Scaffold(
      backgroundColor: AppColors.greyBorder,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(14, 12, 14, 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: .06),
                      blurRadius: 18,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Assets.images.duxbeLogo.image(height: 26),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            currentBusinessName,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: AppText.smallN.copyWith(
                              color: AppColors.greyText,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            displayName,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: AppText.smallN.copyWith(
                              color: AppColors.greyText,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),

                    AppButton(
                      width: 92,
                      height: 40,
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      style: ButtonStyles.secondary,
                      color: AppColors.brandViolet,
                      borderRadius: BorderRadius.circular(14),
                      label: Text(
                        context.l10n.logout,
                        style: AppText.mediumSB.copyWith(
                          color: AppColors.brandViolet,
                        ),
                      ),
                      onPress: _handleLogout,
                      isLoading: ref
                          .watch(asyncActionProvider(actionName: 'sign_out'))
                          .isLoading,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              BusinessSwitcher(width: 200, isLightTheme: true),
              const SizedBox(height: 12),
              const Expanded(child: HomeOrdersBoard()),
            ],
          ),
        ),
      ),
    );
  }
}
