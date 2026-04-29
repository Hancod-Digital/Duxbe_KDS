import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:path/path.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_sqflite/riverpod_sqflite.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';

part 'shared_prefs_provider.g.dart';

@Riverpod(keepAlive: true)
Future<SharedPreferences> sharedPrefs(Ref ref) =>
    SharedPreferences.getInstance();

/// Provides a shared instance of JsonSqFliteStorage for the app.
@Riverpod(keepAlive: true)
Future<JsonSqFliteStorage> storage(Ref ref) async {
  String dbPath;
  if (kIsWeb) {
    // Change default factory on the web
    databaseFactory = databaseFactoryFfiWeb;
    dbPath = 'app.db';
  } else if (Platform.isWindows) {
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;
    dbPath = inMemoryDatabasePath;
  } else {
    dbPath = join(await getDatabasesPath(), 'app.db');
  }

  return JsonSqFliteStorage.open(dbPath);
}
