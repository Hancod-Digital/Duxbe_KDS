import 'package:duxbe_kds/shared/utils/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_provider.g.dart';

@Riverpod(keepAlive: true)
AppRouter appRouter(Ref ref) => AppRouter(ref);
