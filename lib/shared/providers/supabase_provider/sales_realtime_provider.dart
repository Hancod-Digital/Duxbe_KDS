import 'dart:async';

import 'package:duxbe_kds/env.dart';
import 'package:duxbe_kds/features/auth/auth.dart';
import 'package:duxbe_kds/shared/constants/db_constants.dart';
import 'package:duxbe_kds/shared/providers/supabase_provider/supabase_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

/// How often the board reloads when realtime is unavailable.
const salesPollInterval = Duration(seconds: 15);

/// Emits whenever the current business's `sales` rows may have changed.
///
/// Uses Supabase realtime when `REALTIME_ENABLED` is on. If realtime is off
/// (prod tenant rejects the websocket) or the channel errors/times out, it
/// falls back to polling every [salesPollInterval], so the board still
/// updates on its own.
final salesRealtimeProvider = StreamProvider.autoDispose<DateTime>((ref) {
  ref.keepAlive();

  final businessId = ref.watch(selectedBusinessProvider)?.businessId.trim();
  if (businessId == null || businessId.isEmpty) {
    return const Stream<DateTime>.empty();
  }

  final controller = StreamController<DateTime>.broadcast();
  void emit() {
    if (!controller.isClosed) controller.add(DateTime.now());
  }

  var disposed = false;
  Timer? pollTimer;
  void startPolling() {
    if (disposed) return;
    pollTimer ??= Timer.periodic(salesPollInterval, (_) => emit());
  }

  RealtimeChannel? channel;
  final supabase = ref.watch(supabaseProvider);

  if (Environment.REALTIME_ENABLED) {
    channel = supabase
        .channel('sales-realtime-$businessId')
        .onPostgresChanges(
          event: PostgresChangeEvent.all,
          schema: 'public',
          table: DbConstants.sales,
          filter: PostgresChangeFilter(
            type: PostgresChangeFilterType.eq,
            column: 'business_id',
            value: businessId,
          ),
          callback: (_) => emit(),
        )
        .subscribe((status, error) {
          switch (status) {
            case RealtimeSubscribeStatus.subscribed:
              pollTimer?.cancel();
              pollTimer = null;
              // Catch anything missed while (re)connecting.
              emit();
            case RealtimeSubscribeStatus.channelError:
            case RealtimeSubscribeStatus.timedOut:
            case RealtimeSubscribeStatus.closed:
              debugPrint('KDS realtime $status ($error); polling instead');
              startPolling();
          }
        });
  } else {
    startPolling();
  }

  ref.onDispose(() {
    disposed = true;
    pollTimer?.cancel();
    if (channel != null) unawaited(supabase.removeChannel(channel));
    controller.close();
  });

  return controller.stream;
});
