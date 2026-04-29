// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_category_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ItemCategory _$ItemCategoryFromJson(Map<String, dynamic> json) =>
    _ItemCategory(
      itemCategoryId: json['item_category_id'] as String?,
      name: json['name'] as String,
      businessId: json['business_id'] as String?,
    );

Map<String, dynamic> _$ItemCategoryToJson(_ItemCategory instance) =>
    <String, dynamic>{
      'item_category_id': instance.itemCategoryId,
      'name': instance.name,
      'business_id': instance.businessId,
    };
