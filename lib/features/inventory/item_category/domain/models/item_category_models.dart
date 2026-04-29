import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_category_models.freezed.dart';
part 'item_category_models.g.dart';

@freezed
sealed class ItemCategory with _$ItemCategory {
  const factory ItemCategory({
    @JsonKey(name: 'item_category_id') String? itemCategoryId,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'business_id') String? businessId,
  }) = _ItemCategory;

  factory ItemCategory.fromJson(Map<String, dynamic> json) =>
      _$ItemCategoryFromJson(json);
}
