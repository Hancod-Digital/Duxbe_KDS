import 'dart:async';
import 'dart:developer';

import 'package:duxbe_kds/app/view/app.dart';
import 'package:duxbe_kds/shared/providers/env_provider/env_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

base class MyObserver extends ProviderObserver {
  @override
  void didAddProvider(ProviderObserverContext context, Object? value) {
    log('Provider ${context.provider} was initialized with $value');
  }

  @override
  void didDisposeProvider(ProviderObserverContext context) {
    log('Provider ${context.provider} was disposed');
  }

  @override
  void didUpdateProvider(
    ProviderObserverContext context,
    Object? previousValue,
    Object? newValue,
  ) {
    log(
      'Provider ${context.provider} updated from $previousValue to $newValue',
    );
  }

  @override
  void providerDidFail(
    ProviderObserverContext context,
    Object error,
    StackTrace stackTrace,
  ) {
    log('Provider ${context.provider} threw $error', stackTrace: stackTrace);
  }
}

Future<void> bootstrap(FutureOr<App> Function() builder) async {
  WidgetsFlutterBinding.ensureInitialized();

  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
    // Enable on setting up of firebase project
    // FirebaseCrashlytics.instance.recordFlutterError(details);
  };

  PlatformDispatcher.instance.onError = (exception, stackTrace) {
    log(exception.toString(), stackTrace: stackTrace);
    // Enable on setting up of firebase project
    // FirebaseCrashlytics.instance.recordError(exception, stackTrace);
    return true;
  };

  await runZonedGuarded(
    () async {
      final app = await builder();
      // Add cross-flavor configuration here
      runApp(
        ProviderScope(
          observers: [MyObserver()],
          overrides: [envProvider.overrideWithValue(app.environment)],
          child: app,
        ),
      );
    },
    (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      // Enable on setting up of firebase project
      // FirebaseCrashlytics.instance.recordError(error, stackTrace);
    },
  );
}
