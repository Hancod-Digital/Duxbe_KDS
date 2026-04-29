import 'package:duxbe_kds/shared/providers/shared_prefs_provider/shared_prefs_provider.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'locale_provider.g.dart';

@riverpod
class LocaleNotifier extends _$LocaleNotifier {
  @override
  Locale build() {
    listenSelf((previous, next) {
      ref
          .read(sharedPrefsProvider)
          .value
          ?.setString('locale', next.languageCode);
    });
    return Locale(
      ref.watch(sharedPrefsProvider).value?.getString('locale') ?? 'en',
    );
  }
}
