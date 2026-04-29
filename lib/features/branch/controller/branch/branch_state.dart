part of 'branch_notifier.dart';

enum BranchStatus { initial, loading, success, error }

@freezed
sealed class BranchState with _$BranchState {
  const factory BranchState({
    @Default(BranchStatus.initial) BranchStatus status,
    @Default([]) List<Business> businesses,
    @Default('') String error,
    TrinaGridStateManager? stateManager,
    @Default('') String query,
    @Default(50) int pageSize,
    @Default(1) int pageNumber,
    @Default(0) int count,
    PagingController<int, Business>? pagingController,
  }) = _BranchState;

  factory BranchState.initial() => const BranchState();
}
