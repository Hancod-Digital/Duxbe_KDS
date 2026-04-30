// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars

class Environment {
  static const SERVER_URL = String.fromEnvironment('SERVER_URL');
  static const ANON_KEY = String.fromEnvironment('ANON_KEY');
  static const VAPID_KEY = String.fromEnvironment('VAPID_KEY');
  static const UPGRADER_URL = String.fromEnvironment('UPGRADER_URL');
  static const RUNTIME_CONFIG_URL = String.fromEnvironment(
    'RUNTIME_CONFIG_URL',
  );
  static const RUNTIME_ALLOWED_HOSTS = String.fromEnvironment(
    'RUNTIME_ALLOWED_HOSTS',
  );
  static const RUNTIME_CONFIG_TIMEOUT_MS = String.fromEnvironment(
    'RUNTIME_CONFIG_TIMEOUT_MS',
  );
  static const ENV = String.fromEnvironment('ENV');
}

abstract class IEnvironment {
  const IEnvironment();
  String get SERVER_URL;
  String get ANON_KEY;
  String get VAPID_KEY;
  String get UPGRADER_URL;
  String get RUNTIME_CONFIG_URL;
  String get RUNTIME_ALLOWED_HOSTS;
  String get RUNTIME_CONFIG_TIMEOUT_MS;
  String get ENV;
  Duration get CONNECT_TIMEOUT;
  Duration get RECEIVE_TIMEOUT;
}

class ProductionEnv extends IEnvironment {
  const ProductionEnv();
  @override
  String get SERVER_URL => Environment.SERVER_URL;
  @override
  String get ANON_KEY => Environment.ANON_KEY;
  @override
  String get VAPID_KEY => Environment.VAPID_KEY;
  @override
  String get UPGRADER_URL => Environment.UPGRADER_URL;
  @override
  String get RUNTIME_CONFIG_URL => Environment.RUNTIME_CONFIG_URL;
  @override
  String get RUNTIME_ALLOWED_HOSTS => Environment.RUNTIME_ALLOWED_HOSTS;
  @override
  String get RUNTIME_CONFIG_TIMEOUT_MS => Environment.RUNTIME_CONFIG_TIMEOUT_MS;
  @override
  String get ENV => Environment.ENV;
  @override
  Duration get CONNECT_TIMEOUT => const Duration(seconds: 5000);
  @override
  Duration get RECEIVE_TIMEOUT => const Duration(seconds: 3000);
}

class StagingEnv extends IEnvironment {
  const StagingEnv();
  @override
  String get SERVER_URL => Environment.SERVER_URL;
  @override
  String get ANON_KEY => Environment.ANON_KEY;
  @override
  String get VAPID_KEY => Environment.VAPID_KEY;
  @override
  String get UPGRADER_URL => Environment.UPGRADER_URL;
  @override
  String get RUNTIME_CONFIG_URL => Environment.RUNTIME_CONFIG_URL;
  @override
  String get RUNTIME_ALLOWED_HOSTS => Environment.RUNTIME_ALLOWED_HOSTS;
  @override
  String get RUNTIME_CONFIG_TIMEOUT_MS => Environment.RUNTIME_CONFIG_TIMEOUT_MS;
  @override
  String get ENV => Environment.ENV;
  @override
  Duration get CONNECT_TIMEOUT => const Duration(seconds: 5000);
  @override
  Duration get RECEIVE_TIMEOUT => const Duration(seconds: 3000);
}

class DevelopmentEnv extends IEnvironment {
  const DevelopmentEnv();
  @override
  String get SERVER_URL => Environment.SERVER_URL;
  @override
  String get ANON_KEY => Environment.ANON_KEY;
  @override
  String get VAPID_KEY => Environment.VAPID_KEY;
  @override
  String get UPGRADER_URL => Environment.UPGRADER_URL;
  @override
  String get RUNTIME_CONFIG_URL => Environment.RUNTIME_CONFIG_URL;
  @override
  String get RUNTIME_ALLOWED_HOSTS => Environment.RUNTIME_ALLOWED_HOSTS;
  @override
  String get RUNTIME_CONFIG_TIMEOUT_MS => Environment.RUNTIME_CONFIG_TIMEOUT_MS;
  @override
  String get ENV => Environment.ENV;
  @override
  Duration get CONNECT_TIMEOUT => const Duration(seconds: 5000);
  @override
  Duration get RECEIVE_TIMEOUT => const Duration(seconds: 3000);
}

class LocalDevelopmentEnv extends IEnvironment {
  const LocalDevelopmentEnv();
  @override
  String get SERVER_URL => Environment.SERVER_URL;
  @override
  String get ANON_KEY => Environment.ANON_KEY;
  @override
  String get VAPID_KEY => Environment.VAPID_KEY;
  @override
  String get UPGRADER_URL => Environment.UPGRADER_URL;
  @override
  String get RUNTIME_CONFIG_URL => Environment.RUNTIME_CONFIG_URL;
  @override
  String get RUNTIME_ALLOWED_HOSTS => Environment.RUNTIME_ALLOWED_HOSTS;
  @override
  String get RUNTIME_CONFIG_TIMEOUT_MS => Environment.RUNTIME_CONFIG_TIMEOUT_MS;
  @override
  String get ENV => Environment.ENV;
  @override
  Duration get CONNECT_TIMEOUT => const Duration(seconds: 5000);
  @override
  Duration get RECEIVE_TIMEOUT => const Duration(seconds: 3000);
}
