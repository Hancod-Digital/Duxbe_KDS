// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars

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
  String get SERVER_URL => '';
  @override
  String get ANON_KEY => '';
  @override
  String get VAPID_KEY => '';
  @override
  String get UPGRADER_URL => '';
  @override
  String get RUNTIME_CONFIG_URL => '';
  @override
  String get RUNTIME_ALLOWED_HOSTS => '';
  @override
  String get RUNTIME_CONFIG_TIMEOUT_MS => '';
  @override
  String get ENV => 'prod';
  @override
  Duration get CONNECT_TIMEOUT => const Duration(seconds: 5000);
  @override
  Duration get RECEIVE_TIMEOUT => const Duration(seconds: 3000);
}

class StagingEnv extends IEnvironment {
  const StagingEnv();
  @override
  String get SERVER_URL => '';
  @override
  String get ANON_KEY => '';
  @override
  String get VAPID_KEY => '';
  @override
  String get UPGRADER_URL => '';
  @override
  String get RUNTIME_CONFIG_URL => '';
  @override
  String get RUNTIME_ALLOWED_HOSTS => '';
  @override
  String get RUNTIME_CONFIG_TIMEOUT_MS => '';
  @override
  String get ENV => 'staging';
  @override
  Duration get CONNECT_TIMEOUT => const Duration(seconds: 5000);
  @override
  Duration get RECEIVE_TIMEOUT => const Duration(seconds: 3000);
}

class DevelopmentEnv extends IEnvironment {
  const DevelopmentEnv();
  @override
  String get SERVER_URL => const String.fromEnvironment(
    'SERVER_URL',
    defaultValue: 'https://awfbsiftpwpiczdxlmig.supabase.co',
  );
  @override
  String get ANON_KEY => const String.fromEnvironment(
    'ANON_KEY',
    defaultValue:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.'
        'eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImF3ZmJzaWZ0cHdwaWN6ZHhsbWlnIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTY5Njg2NzYsImV4cCI6MjAxMjU0NDY3Nn0.'
        'RDOvnQ2Ld7e5bIGRSk_q2mIx3YIHNQrWg5iZdKnjLRE',
  );
  @override
  String get VAPID_KEY => const String.fromEnvironment(
    'VAPID_KEY',
    defaultValue:
        'BHfYu6nR7zbiOKwXcSsRIE2_1LMxJtSUEMvJ1QiJegBRSpSwfB2M0DjsLw73frotEpBrYvUlejcOe-7W5W6BbFo',
  );
  @override
  String get UPGRADER_URL => const String.fromEnvironment(
    'UPGRADER_URL',
    defaultValue: 'https://business.duxbe.com/duxbe_business.upgrader.xml',
  );
  @override
  String get RUNTIME_CONFIG_URL =>
      const String.fromEnvironment('RUNTIME_CONFIG_URL', defaultValue: '');
  @override
  String get RUNTIME_ALLOWED_HOSTS => const String.fromEnvironment(
    'RUNTIME_ALLOWED_HOSTS',
    defaultValue:
        'awfbsiftpwpiczdxlmig.supabase.co,acagaylcxrkpjrdldcie.supabase.co,'
        'tgrtjlqehgpzdjrlrxxl.supabase.co,api.duxbe.app',
  );
  @override
  String get RUNTIME_CONFIG_TIMEOUT_MS => const String.fromEnvironment(
    'RUNTIME_CONFIG_TIMEOUT_MS',
    defaultValue: '3500',
  );
  @override
  String get ENV => const String.fromEnvironment('ENV', defaultValue: 'dev');
  @override
  Duration get CONNECT_TIMEOUT => const Duration(seconds: 5000);
  @override
  Duration get RECEIVE_TIMEOUT => const Duration(seconds: 3000);
}
