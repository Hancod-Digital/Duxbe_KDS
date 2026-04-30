import 'package:duxbe_kds/features/home/controller/home/home_order_lane_notifier.dart';
import 'package:duxbe_kds/features/home/domain/models/home_models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void refreshHomeSalesBoard(WidgetRef ref, Iterable<Status> statuses) {
  for (final status in statuses) {
    ref.invalidate(homeOrderLaneCountProvider(status));
    ref.invalidate(homeOrderLaneProvider(status));
  }
}
