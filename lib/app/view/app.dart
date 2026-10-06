import 'package:duxbe_kds/env.dart';
import 'package:duxbe_kds/features/auth/auth.dart';
import 'package:duxbe_kds/shared/l10n/arb/app_localizations.dart';
import 'package:duxbe_kds/shared/providers/ip_config_provider/ip_config_provider.dart';
import 'package:duxbe_kds/shared/providers/locale_provider/locale_provider.dart';
import 'package:duxbe_kds/shared/providers/router_provider/router_provider.dart';
import 'package:duxbe_kds/shared/providers/shared_prefs_provider/shared_prefs_provider.dart';
import 'package:duxbe_kds/shared/providers/theme_provider/theme_provider.dart';
import 'package:duxbe_kds/shared/utils/rotation_overlay.dart';
import 'package:duxbe_kds/shared/widgets/no_internet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hancod_theme/hancod_theme.dart';
import 'package:toastification/toastification.dart';
import 'package:upgrader/upgrader.dart';

class App extends ConsumerWidget {
  App({required this.environment, super.key});
  final IEnvironment environment;
  // Add upgrader URL
  static const appcastURL = '';
  final upgrader = Upgrader(
    // storeController: UpgraderStoreController(
    //   onAndroid: () => UpgraderAppcastStore(appcastURL: appcastURL, osVersion: null),
    //   oniOS: () => UpgraderAppcastStore(appcastURL: appcastURL, osVersion: null),
    // ),
    debugLogging: true,
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);
    // This is to load initial country settings, sharedPrefs
    ref
      ..watch(ipConfigProvider)
      ..watch(sharedPrefsProvider);
    return ToastificationWrapper(
      child: MaterialApp.router(
        routerConfig: appRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ref.watch(themeProvider),
        title: switch (ref.watch(selectedBusinessProvider)?.name.trim()) {
          final name? when name.isNotEmpty => '$name · Duxbe KDS',
          _ => 'Duxbe KDS',
        },
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        locale: ref.watch(localeProvider),
        scrollBehavior: const CustomScrollBehavior(),
        builder: (context, child) {
          // You can wrap Internet connection alert here
          return RotationOverlay(
            navigatorKey: appRouter.router.routerDelegate.navigatorKey,
            child: NoInternetAlert(
              navigatorKey: appRouter.router.routerDelegate.navigatorKey,
              child: UpgradeAlert(
                navigatorKey: appRouter.router.routerDelegate.navigatorKey,
                child: child,
              ),
            ),
          );
        },
      ),
    );
  }
}
