import 'package:duxbe_kds/features/inventory/item_category/domain/models/item_category_models.dart';
import 'package:duxbe_kds/shared/models/paginated_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class IItemCategoryRepository {
  Future<ItemCategory?> getItemCategoryWithId({
    required String itemCategoryId,
  });

  Future<PaginatedResponse<ItemCategory>> getPaginatedItemCategories({
    required int pageSize,
    required int pageNumber,
    Map<String, List<Map<String, String>>> filters = const {},
  });
}

class _ItemCategoryRepository implements IItemCategoryRepository {
  const _ItemCategoryRepository();

  @override
  Future<ItemCategory?> getItemCategoryWithId({
    required String itemCategoryId,
  }) async {
    throw UnimplementedError('Item category repository is not configured.');
  }

  @override
  Future<PaginatedResponse<ItemCategory>> getPaginatedItemCategories({
    required int pageSize,
    required int pageNumber,
    Map<String, List<Map<String, String>>> filters = const {},
  }) async {
    throw UnimplementedError('Item category repository is not configured.');
  }
}

final itemCategoryRepoProvider = Provider<IItemCategoryRepository>((ref) {
  return const _ItemCategoryRepository();
});
