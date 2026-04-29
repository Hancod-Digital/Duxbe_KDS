import 'package:duxbe_kds/features/auth/auth.dart';
import 'package:duxbe_kds/features/home/presentation/home/widgets/business_switcher.dart';
import 'package:duxbe_kds/features/home/presentation/home/widgets/home_orders_board.dart';
import 'package:duxbe_kds/shared/shared.dart';
import 'package:duxbe_kds/shared/utils/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hancod_theme/hancod_theme.dart';

class HomeScreenWeb extends ConsumerStatefulWidget {
  const HomeScreenWeb({super.key});

  @override
  ConsumerState<HomeScreenWeb> createState() => _HomeScreenWebState();
}

class _HomeScreenWebState extends ConsumerState<HomeScreenWeb> {
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
          padding: const EdgeInsets.fromLTRB(28, 20, 28, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Assets.images.duxbeLogo.image(height: 42),
                        const SizedBox(width: 16),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                context.l10n.welcomeBack,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: AppText.heading5.copyWith(
                                  color: AppColors.title,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                displayName,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: AppText.mediumN.copyWith(
                                  color: AppColors.greyText,
                                ),
                              ),
                              const SizedBox(height: 2),
                              Text(
                                currentBusinessName,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: AppText.smallN.copyWith(
                                  color: AppColors.greyText,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    alignment: WrapAlignment.end,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      BusinessSwitcher(width: 300, isLightTheme: true),
                      AppButton(
                        width: 150,
                        style: ButtonStyles.primary,
                        color: AppColors.brandViolet,
                        label: Text(context.l10n.logout),
                        onPress: _handleLogout,
                        isLoading: ref
                            .watch(asyncActionProvider(actionName: 'sign_out'))
                            .isLoading,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Expanded(child: HomeOrdersBoard()),
            ],
          ),
        ),
      ),
    );
  }
}
