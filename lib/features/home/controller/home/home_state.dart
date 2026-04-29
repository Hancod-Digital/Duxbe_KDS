import 'package:duxbe_kds/features/home/domain/models/home_models.dart';

enum HomeStatus { initial, loading, success, error }

class HomeState {
  const HomeState({
    this.status = HomeStatus.initial,
    this.statuses = const [],
    this.selectedBusinessId,
    this.searchQuery = '',
    this.ordersRevision = 0,
    this.error = '',
  });

  factory HomeState.initial() => const HomeState();

  final HomeStatus status;
  final List<Status> statuses;
  final String? selectedBusinessId;
  final String searchQuery;
  final int ordersRevision;
  final String error;

  HomeState copyWith({
    HomeStatus? status,
    List<Status>? statuses,
    String? selectedBusinessId,
    String? searchQuery,
    int? ordersRevision,
    String? error,
  }) {
    return HomeState(
      status: status ?? this.status,
      statuses: statuses ?? this.statuses,
      selectedBusinessId: selectedBusinessId ?? this.selectedBusinessId,
      searchQuery: searchQuery ?? this.searchQuery,
      ordersRevision: ordersRevision ?? this.ordersRevision,
      error: error ?? this.error,
    );
  }
}
