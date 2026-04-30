import 'package:duxbe_kds/features/home/controller/home/home_notifier.dart';
import 'package:duxbe_kds/features/home/domain/models/home_models.dart';
import 'package:duxbe_kds/features/home/domain/repositories/home_repositories.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_order_lane_notifier.g.dart';

final homeOrderLaneCountProvider = FutureProvider.autoDispose
    .family<int, Status>((ref, status) async {
      final homeState = ref.watch(homeProvider);
      final homeRepository = ref.watch(homeRepoProvider);

      if (homeState.selectedBusinessId == null) {
        return 0;
      }

      final response = await homeRepository.getSalesMinimal(
        pageSize: 1,
        pageNumber: 1,
        statusId: status.statusId,
        statusName: status.name,
        query: homeState.searchQuery,
      );

      return response.count;
    });

class HomeOrderLaneState {
  const HomeOrderLaneState({
    required this.pagingController,
    this.totalCount = 0,
  });

  final PagingController<int, KdsSale> pagingController;
  final int totalCount;

  HomeOrderLaneState copyWith({
    PagingController<int, KdsSale>? pagingController,
    int? totalCount,
  }) {
    return HomeOrderLaneState(
      pagingController: pagingController ?? this.pagingController,
      totalCount: totalCount ?? this.totalCount,
    );
  }
}

@Riverpod(keepAlive: false)
class HomeOrderLaneNotifier extends _$HomeOrderLaneNotifier {
  static const int _pageSize = 20;

  @override
  HomeOrderLaneState build(Status status) {
    final homeState = ref.watch(homeProvider);
    final homeRepository = ref.watch(homeRepoProvider);
    final pagingController = PagingController<int, KdsSale>(
      getNextPageKey: (pagingState) {
        if (pagingState.pages == null) {
          return pagingState.nextIntPageKey;
        }
        final lastPageSize = pagingState.pages!.last.length;
        return lastPageSize < _pageSize ? null : pagingState.nextIntPageKey;
      },
      fetchPage: (pageKey) async {
        final response = await homeRepository.getSalesMinimal(
          pageSize: _pageSize,
          pageNumber: pageKey,
          statusId: status.statusId,
          statusName: status.name,
          query: homeState.searchQuery,
        );

        if (!ref.mounted) {
          return response.data;
        }

        state = state.copyWith(totalCount: response.count);
        return response.data;
      },
    );
    ref.onDispose(pagingController.dispose);

    return HomeOrderLaneState(pagingController: pagingController);
  }
}
