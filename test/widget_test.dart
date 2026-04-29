import 'package:duxbe_kds/app/view/app.dart';
import 'package:duxbe_kds/env.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('App widget can be created', () {
    expect(App(environment: const DevelopmentEnv()), isA<App>());
  });
}
