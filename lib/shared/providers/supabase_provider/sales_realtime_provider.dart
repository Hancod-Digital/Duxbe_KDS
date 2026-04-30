import 'dart:async';

import 'package:duxbe_kds/features/auth/auth.dart';
import 'package:duxbe_kds/shared/constants/db_constants.dart';
import 'package:duxbe_kds/shared/providers/supabase_provider/supabase_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

/// Emits whenever the current business gets a row-level change in `sales`.
///
/// The app listens to this stream and refreshes the paged sales queries so the
/// board updates on other devices without a manual refresh.
final salesRealtimeProvider =
    StreamProvider.autoDispose<PostgresChangePayload>((ref) {
  ref.keepAlive();

  final selectedBusiness = ref.watch(selectedBusinessProvider);
  final businessId = selectedBusiness?.businessId.trim();
  if (businessId == null || businessId.isEmpty) {
    return const Stream<PostgresChangePayload>.empty();
  }

  final supabase = ref.watch(supabaseProvider);
  final controller = StreamController<PostgresChangePayload>.broadcast();

  final channel = supabase
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
        callback: (payload) {
          if (!controller.isClosed) {
            controller.add(payload);
          }
        },
      )
      .subscribe();

  ref.onDispose(() {
    unawaited(supabase.removeChannel(channel));
    controller.close();
  });

  return controller.stream;
});
