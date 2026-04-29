import 'package:duxbe_kds/features/auth/auth.dart';
import 'package:duxbe_kds/features/home/domain/models/minimal_sale/minimal_sale_model.dart';
import 'package:duxbe_kds/features/sales/domain/models/sale_view_model.dart';
import 'package:duxbe_kds/features/sales/domain/repositories/sale_repositories.dart';
import 'package:duxbe_kds/shared/models/paginated_response.dart';
import 'package:duxbe_kds/shared/shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hancod_theme/alert.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

final saleProvider = FutureProvider.family<SaleView?, String?>((ref, saleId) {
  if (saleId == null) return Future.value(null);
  return ref.watch(saleRepoProvider).getSaleWithId(saleId: saleId);
});

final saleMinimalProvider = FutureProvider.family<MinimalSale?, String?>((
  ref,
  saleId,
) {
  if (saleId == null) return Future.value(null);
  return ref.watch(saleRepoProvider).getSalesMinimalById(saleId: saleId);
});

final saleListMobileProvider =
    NotifierProvider<SaleListMobileNotifier, SaleListMobileState>(
      SaleListMobileNotifier.new,
    );

enum SaleListMobileStatus { initial, loading, success, error }

class SaleListMobileState {
  const SaleListMobileState({
    required this.pagingController,
    this.status = SaleListMobileStatus.initial,
    this.query = '',
    this.pageSize = 50,
    this.pageNumber = 1,
    this.startDate,
    this.endDate,
    this.error = '',
  });

  final PagingController<int, MinimalSale> pagingController;
  final SaleListMobileStatus status;
  final String query;
  final int pageSize;
  final int pageNumber;
  final DateTime? startDate;
  final DateTime? endDate;
  final String error;

  SaleListMobileState copyWith({
    PagingController<int, MinimalSale>? pagingController,
    SaleListMobileStatus? status,
    String? query,
    int? pageSize,
    int? pageNumber,
    DateTime? startDate,
    DateTime? endDate,
    String? error,
  }) {
    return SaleListMobileState(
      pagingController: pagingController ?? this.pagingController,
      status: status ?? this.status,
      query: query ?? this.query,
      pageSize: pageSize ?? this.pageSize,
      pageNumber: pageNumber ?? this.pageNumber,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      error: error ?? this.error,
    );
  }
}

class SaleListMobileNotifier extends Notifier<SaleListMobileState> {
  late ISaleRepository _saleRepository;

  @override
  SaleListMobileState build() {
    _saleRepository = ref.watch(saleRepoProvider);

    final pagingController = PagingController<int, MinimalSale>(
      getNextPageKey: (pagingState) {
        if (pagingState.pages == null) return pagingState.nextIntPageKey;
        final lastPageSize = pagingState.pages!.last.length;
        return lastPageSize < state.pageSize
            ? null
            : pagingState.nextIntPageKey;
      },
      fetchPage: _fetchSalesPage,
    );

    ref
      ..listen(selectedBusinessProvider, (_, __) {
        if (!ref.mounted) return;
        setFilter(pageNumber: 1);
      })
      ..listen(salesRealtimeProvider, (_, next) {
        if (!ref.mounted || !next.hasValue) return;
        state.pagingController.refresh();
      })
      ..onDispose(pagingController.dispose);

    return SaleListMobileState(pagingController: pagingController);
  }

  void setFilter({
    String? query,
    int? pageSize,
    int? pageNumber,
    DateTime? startDate,
    DateTime? endDate,
  }) {
    state = state.copyWith(
      query: query ?? state.query,
      pageSize: pageSize ?? state.pageSize,
      pageNumber: pageNumber ?? state.pageNumber,
      startDate: startDate ?? state.startDate,
      endDate: endDate ?? state.endDate,
    );
    state.pagingController.refresh();
  }

  Future<PaginatedResponse<MinimalSale>> getSales({
    String? query,
    int? pageSize,
    int? pageNumber,
    DateTime? fromDate,
    DateTime? toDate,
  }) async {
    try {
      return await _saleRepository.getSalesMinimal(
        query: query ?? state.query,
        pageSize: pageSize ?? state.pageSize,
        pageNumber: pageNumber ?? state.pageNumber,
        fromDate: fromDate ?? state.startDate,
        toDate: toDate ?? state.endDate,
        orderMode: false,
      );
    } catch (e) {
      Alert.showSnackBar(e.toString(), type: SnackBarType.error);
      rethrow;
    }
  }

  Future<List<MinimalSale>> _fetchSalesPage(int pageKey) async {
    final sales = await getSales(pageNumber: pageKey);
    return sales.data;
  }
}
