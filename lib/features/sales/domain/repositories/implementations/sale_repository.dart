import 'package:duxbe_kds/features/auth/auth.dart';
import 'package:duxbe_kds/features/home/domain/models/minimal_sale/minimal_sale_model.dart';
import 'package:duxbe_kds/features/sales/domain/models/sale_view_model.dart';
import 'package:duxbe_kds/features/sales/domain/repositories/interfaces/i_sale_repository.dart';
import 'package:duxbe_kds/shared/constants/db_constants.dart';
import 'package:duxbe_kds/shared/models/app_filter.dart';
import 'package:duxbe_kds/shared/models/paginated_response.dart';
import 'package:duxbe_kds/shared/shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final saleRepoProvider = Provider<ISaleRepository>((ref) {
  return SaleRepository(ref);
});

class SaleRepository implements ISaleRepository {
  SaleRepository(this.ref) : _supabaseClient = ref.watch(supabaseProvider);

  final Ref ref;
  final SupabaseClient _supabaseClient;

  @override
  Future<SaleView?> getSaleWithId({required String saleId}) async {
    try {
      final response = await _supabaseClient
          .from(DbConstants.saleView)
          .select()
          .eq('sale_id', saleId)
          .maybeSingle();
      if (response == null) return null;
      return MinimalSale.fromJson(response);
    } on PostgrestException catch (e) {
      throw AppException(
        e.message,
        code: e.code,
        details: e.details?.toString(),
      );
    }
  }

  @override
  Future<MinimalSale?> getSalesMinimalById({required String saleId}) async {
    try {
      final response = await _supabaseClient
          .from(DbConstants.minimalSaleView)
          .select()
          .eq('sale_id', saleId)
          .maybeSingle();
      if (response == null) return null;
      return MinimalSale.fromJson(response);
    } on PostgrestException catch (e) {
      throw AppException(
        e.message,
        code: e.code,
        details: e.details?.toString(),
      );
    }
  }

  @override
  Future<PaginatedResponse<MinimalSale>> getSalesMinimal({
    required int pageSize,
    required int pageNumber,
    AppFilter filters = const {},
    String query = '',
    String? status,
    bool? orderMode,
    DateTime? fromDate,
    DateTime? toDate,
  }) async {
    try {
      final businessId = ref.read(selectedBusinessProvider)?.businessId;
      if (businessId == null) return PaginatedResponse.empty();

      final offset = (pageNumber - 1) * pageSize;
      var queryBuilder = _supabaseClient
          .from(DbConstants.minimalSaleView)
          .select()
          .eq('business_id', businessId);

      if (query.trim().isNotEmpty) {
        queryBuilder = queryBuilder.or(
          'sale_invoice.ilike.%$query%,customer_name.ilike.%$query%,customer_phone.ilike.%$query%,table_name.ilike.%$query%,ordered_by.ilike.%$query%,platform.ilike.%$query%',
        );
      }

      if (status != null && status.trim().isNotEmpty) {
        queryBuilder = queryBuilder.eq('status', status);
      }
      if (orderMode != null) {
        queryBuilder = queryBuilder.eq('order_mode', orderMode);
      }
      if (fromDate != null) {
        queryBuilder = queryBuilder.gte(
          'sale_date',
          fromDate.toIso8601String(),
        );
      }
      if (toDate != null) {
        queryBuilder = queryBuilder.lte('sale_date', toDate.toIso8601String());
      }

      filters.forEach((field, conditions) {
        for (final condition in conditions) {
          final filterType = condition.keys.first.toLowerCase();
          final filterValue = condition.values.first.trim();
          if (filterValue.isEmpty) continue;

          void applyString(String column) {
            if (filterType == 'contains') {
              queryBuilder = queryBuilder.ilike(column, '%$filterValue%');
            } else if (filterType == 'equals') {
              queryBuilder = queryBuilder.eq(column, filterValue);
            } else if (filterType == 'startswith') {
              queryBuilder = queryBuilder.ilike(column, '$filterValue%');
            } else if (filterType == 'endswith') {
              queryBuilder = queryBuilder.ilike(column, '%$filterValue');
            }
          }

          void applyDate(String column) {
            try {
              final date = DateTime.parse(filterValue).toIso8601String();
              if (filterType == 'greaterthan' ||
                  filterType == 'greaterthanorequalto') {
                queryBuilder = filterType == 'greaterthan'
                    ? queryBuilder.gt(column, date)
                    : queryBuilder.gte(column, date);
              } else if (filterType == 'lessthan' ||
                  filterType == 'lessthanorequalto') {
                queryBuilder = filterType == 'lessthan'
                    ? queryBuilder.lt(column, date)
                    : queryBuilder.lte(column, date);
              } else if (filterType == 'equals') {
                queryBuilder = queryBuilder.eq(column, date);
              }
            } catch (_) {}
          }

          void applyNumber(String column) {
            final number = num.tryParse(filterValue);
            if (number == null) return;
            if (filterType == 'greaterthan' ||
                filterType == 'greaterthanorequalto') {
              queryBuilder = filterType == 'greaterthan'
                  ? queryBuilder.gt(column, number)
                  : queryBuilder.gte(column, number);
            } else if (filterType == 'lessthan' ||
                filterType == 'lessthanorequalto') {
              queryBuilder = filterType == 'lessthan'
                  ? queryBuilder.lt(column, number)
                  : queryBuilder.lte(column, number);
            } else if (filterType == 'equals') {
              queryBuilder = queryBuilder.eq(column, number);
            }
          }

          switch (field) {
            case 'sale_invoice':
            case 'invoice':
              applyString('sale_invoice');
              break;
            case 'customer':
            case 'customer_name':
              applyString('customer_name');
              break;
            case 'customer_phone':
              applyString('customer_phone');
              break;
            case 'table_name':
            case 'table':
              applyString('table_name');
              break;
            case 'ordered_by':
              applyString('ordered_by');
              break;
            case 'platform':
              applyString('platform');
              break;
            case 'sale_date':
            case 'date':
              applyDate('sale_date');
              break;
            case 'created_at':
              applyDate('created_at');
              break;
            case 'total_amount':
            case 'amount':
              applyNumber('total_amount');
              break;
            case 'due_amount':
              applyNumber('due_amount');
              break;
            case 'status':
              applyString('status');
              break;
            case 'transaction_status':
              applyString('transaction_status');
              break;
            case 'order_type':
              applyString('order_type');
              break;
            case 'payment_type':
              applyString('payment_type');
              break;
            default:
              break;
          }
        }
      });

      final response = await queryBuilder
          .range(offset, pageSize + offset - 1)
          .order('sale_date', ascending: false)
          .count(CountOption.exact);
      return PaginatedResponse(
        data: response.data.map(MinimalSale.fromJson).toList(),
        count: response.count,
      );
    } on PostgrestException catch (e) {
      throw AppException(
        e.message,
        code: e.code,
        details: e.details?.toString(),
      );
    }
  }
}
