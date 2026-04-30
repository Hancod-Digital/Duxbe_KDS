import 'package:duxbe_kds/app/view/app.dart';
import 'package:duxbe_kds/bootstrap.dart';
import 'package:duxbe_kds/env.dart';
// import 'package:app/firebase_options_prod.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:scaled_app/scaled_app.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:timezone/data/latest.dart' as tz;

Future<void> main() async {
  tz.initializeTimeZones();

  // for scaling purposes, if required use the below code
  ScaledWidgetsFlutterBinding.ensureInitialized(
    scaleFactor: (deviceSize) => 1.0,
  );

  // In case ScaledWidgetsFlutterBinding is not used
  // WidgetsFlutterBinding.ensureInitialized();

  // For analytics
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

  // Used to remove trailing # in urls
  setUrlStrategy(const PathUrlStrategy());

  // Envrionment
  const env = ProductionEnv();

  // Supabase config
  await Supabase.initialize(
    url: env.SERVER_URL,
    anonKey: env.ANON_KEY,
    debug: false,
  );

  await bootstrap(() => App(environment: env));
}
