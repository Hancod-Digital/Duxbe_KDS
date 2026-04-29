import 'package:duxbe_kds/features/home/domain/models/minimal_sale/minimal_sale_model.dart';
import 'package:duxbe_kds/features/sales/domain/models/sale_view_model.dart';
import 'package:duxbe_kds/shared/models/app_filter.dart';
import 'package:duxbe_kds/shared/models/paginated_response.dart';

abstract class ISaleRepository {
  Future<SaleView?> getSaleWithId({required String saleId});

  Future<MinimalSale?> getSalesMinimalById({required String saleId});

  Future<PaginatedResponse<MinimalSale>> getSalesMinimal({
    required int pageSize,
    required int pageNumber,
    AppFilter filters = const {},
    String query = '',
    String? status,
    bool? orderMode,
    DateTime? fromDate,
    DateTime? toDate,
  });
}
