import 'package:duxbe_kds/features/home/domain/models/kds_sale/kds_sale_model.dart';
import 'package:duxbe_kds/features/home/domain/models/status_model/status_model.dart';
import 'package:duxbe_kds/shared/models/app_filter.dart';
import 'package:duxbe_kds/shared/models/paginated_response.dart';

abstract class IHomeRepository {
  Future<List<Status>> getSaleStatuses();

  Future<PaginatedResponse<KdsSale>> getSalesMinimal({
    required int pageSize,
    required int pageNumber,
    AppFilter filters = const {},
    String query = '',
    String? statusId,
    String? statusName,
    DateTime? fromDate,
    DateTime? toDate,
  });

  Future<void> updateSaleStatus(String saleId, String statusId);
}
