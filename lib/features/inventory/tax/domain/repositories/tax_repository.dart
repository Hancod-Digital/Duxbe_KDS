import 'package:duxbe_kds/features/inventory/tax/domain/models/tax_model.dart';
import 'package:duxbe_kds/shared/models/paginated_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class ITaxRepository {
  Future<PaginatedResponse<Tax>> getTaxes({
    required int pageNumber,
    required int pageSize,
    required String businessId,
  });

  Future<Tax> upsertTax(Tax tax);

  Future<void> deleteTax(String taxId);
}

class _TaxRepository implements ITaxRepository {
  const _TaxRepository();

  @override
  Future<void> deleteTax(String taxId) async {
    throw UnimplementedError('Tax repository is not configured.');
  }

  @override
  Future<PaginatedResponse<Tax>> getTaxes({
    required int pageNumber,
    required int pageSize,
    required String businessId,
  }) async {
    throw UnimplementedError('Tax repository is not configured.');
  }

  @override
  Future<Tax> upsertTax(Tax tax) async {
    throw UnimplementedError('Tax repository is not configured.');
  }
}

final taxRepoProvider = Provider<ITaxRepository>((ref) {
  return const _TaxRepository();
});
