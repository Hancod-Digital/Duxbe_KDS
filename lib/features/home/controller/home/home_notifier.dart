import 'dart:async';

import 'package:duxbe_kds/features/auth/auth.dart';
import 'package:duxbe_kds/features/home/domain/models/home_models.dart';
import 'package:duxbe_kds/features/home/domain/repositories/home_repositories.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'home_state.dart';

part 'home_notifier.g.dart';

@Riverpod(keepAlive: false)
class HomeNotifier extends _$HomeNotifier {
  static const Duration _minimumLoadingDuration = Duration(milliseconds: 300);

  final FormGroup form = FormGroup({
    'search_query': FormControl<String>(value: ''),
  });

  int _loadGeneration = 0;

  @override
  HomeState build() {
    ref.listen(selectedBusinessProvider, (previous, next) {
      loadForBusiness(businessId: next?.businessId);
    });

    ref.onDispose(form.dispose);

    unawaited(
      Future<void>.microtask(() {
        final selectedBusiness = ref.read(selectedBusinessProvider);
        loadForBusiness(businessId: selectedBusiness?.businessId);
      }),
    );

    return HomeState.initial();
  }

  void loadForBusiness({required String? businessId}) {
    if (state.selectedBusinessId == businessId &&
        (state.statuses.isNotEmpty || state.status == HomeStatus.loading)) {
      return;
    }

    if (businessId == null) {
      state = state.copyWith(
        status: HomeStatus.initial,
        selectedBusinessId: null,
        statuses: const [],
        error: '',
      );
      return;
    }

    state = state.copyWith(
      status: HomeStatus.loading,
      selectedBusinessId: businessId,
      statuses: const [],
      error: '',
    );

    unawaited(_refreshSaleStatuses(businessId: businessId));
  }

  void setSearchQuery(String query) {
    if (state.searchQuery == query) {
      return;
    }
    state = state.copyWith(searchQuery: query);
  }

  void moveOrder(String orderId, Status status) {
    unawaited(_persistSaleStatus(orderId: orderId, statusId: status.statusId));
  }

  Future<void> _refreshSaleStatuses({required String? businessId}) async {
    try {
      if (businessId == null) {
        return;
      }

      final loadGeneration = ++_loadGeneration;
      final startedAt = DateTime.now();
      final homeRepository = ref.read(homeRepoProvider);
      final saleStatuses = await homeRepository.getSaleStatuses();
      if (!ref.mounted ||
          state.selectedBusinessId != businessId ||
          loadGeneration != _loadGeneration) {
        return;
      }

      final elapsed = DateTime.now().difference(startedAt);
      if (elapsed < _minimumLoadingDuration) {
        await Future<void>.delayed(_minimumLoadingDuration - elapsed);
      }

      if (!ref.mounted ||
          state.selectedBusinessId != businessId ||
          loadGeneration != _loadGeneration) {
        return;
      }

      state = state.copyWith(
        statuses: saleStatuses,
        status: HomeStatus.success,
        error: '',
      );
    } catch (e) {
      if (!ref.mounted || state.selectedBusinessId != businessId) {
        return;
      }
      state = state.copyWith(status: HomeStatus.error, error: e.toString());
    }
  }

  Future<void> _persistSaleStatus({
    required String orderId,
    required String statusId,
  }) async {
    try {
      if (state.selectedBusinessId == null) {
        return;
      }
      await ref.read(homeRepoProvider).updateSaleStatus(orderId, statusId);
    } catch (_) {
      // Keep the local board optimistic if persistence fails.
    }
  }
}
