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
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff0B1220), Color(0xff152238)],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Assets.icons.duxbeWhiteLogo.svg(height: 36),
                    const SizedBox(width: 10),
                    Assets.icons.duxbeWhiteText.svg(height: 20),
                  ],
                ),
                const SizedBox(height: 28),
                Align(
                  alignment: Alignment.centerRight,
                  child: BusinessSwitcher(width: 260),
                ),
                const SizedBox(height: 12),
                Align(
                  alignment: Alignment.centerRight,
                  child: AppButton(
                    width: 120,
                    style: ButtonStyles.primary,
                    color: AppColors.brandViolet,
                    label: Text(context.l10n.logout),
                    onPress: _handleLogout,
                    isLoading: ref
                        .watch(asyncActionProvider(actionName: 'sign_out'))
                        .isLoading,
                  ),
                ),
                const SizedBox(height: 24),
                Container(
                  padding: const EdgeInsets.all(22),
                  decoration: BoxDecoration(
                    color: AppColors.white.withValues(alpha: .08),
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(
                      color: AppColors.white.withValues(alpha: .12),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        context.l10n.welcomeBack,
                        style: AppText.b32.copyWith(color: AppColors.white),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        context.l10n.dashboard,
                        style: AppText.mediumN.copyWith(
                          color: AppColors.white.withValues(alpha: .78),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Signed in as',
                        style: AppText.mediumN.copyWith(
                          color: AppColors.white.withValues(alpha: .68),
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        displayName,
                        style: AppText.sb20.copyWith(color: AppColors.white),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'You are working in $currentBusinessName.',
                        style: AppText.largeN.copyWith(
                          color: AppColors.white.withValues(alpha: .76),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 18),
                const SizedBox(
                  height: 760,
                  child: HomeOrdersBoard(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
