// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kds_sale_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_KdsSale _$KdsSaleFromJson(Map<String, dynamic> json) => _KdsSale(
  saleId: _stringFromJson(json['sale_id']),
  businessId: _stringFromJson(json['business_id']),
  saleInvoice: _stringFromJson(json['sale_invoice']),
  saleDate: _dateTimeFromJson(json['sale_date']),
  orderType: _nullableStringFromJson(json['order_type']),
  orderMode: json['order_mode'] == null
      ? false
      : _boolFromJson(json['order_mode']),
  status: _nullableStringFromJson(json['status']),
  createdAt: _dateTimeFromJson(json['created_at']),
  customerId: _nullableStringFromJson(json['customer_id']),
  customerName: _nullableStringFromJson(json['customer_name']),
  customerPhone: _nullableStringFromJson(json['customer_phone']),
  tableName: _nullableStringFromJson(json['table_name']),
  platform: _nullableStringFromJson(json['platform']),
  orderedBy: _nullableStringFromJson(json['ordered_by']),
  itemHistory: json['item_history'] == null
      ? const <KdsOrderHistoryEntry>[]
      : _itemHistoryFromJson(json['item_history']),
);

Map<String, dynamic> _$KdsSaleToJson(_KdsSale instance) => <String, dynamic>{
  'sale_id': instance.saleId,
  'business_id': instance.businessId,
  'sale_invoice': instance.saleInvoice,
  'sale_date': instance.saleDate.toIso8601String(),
  'order_type': instance.orderType,
  'order_mode': instance.orderMode,
  'status': instance.status,
  'created_at': instance.createdAt.toIso8601String(),
  'customer_id': instance.customerId,
  'customer_name': instance.customerName,
  'customer_phone': instance.customerPhone,
  'table_name': instance.tableName,
  'platform': instance.platform,
  'ordered_by': instance.orderedBy,
  'item_history': _itemHistoryToJson(instance.itemHistory),
};

_KdsOrderHistoryEntry _$KdsOrderHistoryEntryFromJson(
  Map<String, dynamic> json,
) => _KdsOrderHistoryEntry(
  orderTime: _nullableDateTimeFromJson(json['order_time']),
  items: json['items'] == null
      ? const <KdsOrderItem>[]
      : _kdsItemsFromJson(json['items']),
);

Map<String, dynamic> _$KdsOrderHistoryEntryToJson(
  _KdsOrderHistoryEntry instance,
) => <String, dynamic>{
  'order_time': instance.orderTime?.toIso8601String(),
  'items': _kdsItemsToJson(instance.items),
};

_KdsOrderItem _$KdsOrderItemFromJson(Map<String, dynamic> json) =>
    _KdsOrderItem(
      itemId: json['item_id'] == null ? '' : _stringFromJson(json['item_id']),
      quantity: json['quantity'] == null ? 0 : _intFromJson(json['quantity']),
      itemName: json['item_name'] == null
          ? 'Item'
          : _stringFromJson(json['item_name']),
      note: _nullableStringFromJson(json['note']),
      itemType: _nullableStringFromJson(json['item_type']),
      unitPrice: _nullableDoubleFromJson(json['unit_price']),
      categoryId: _nullableStringFromJson(json['category_id']),
      subservices: json['subservices'] as List<dynamic>? ?? const <dynamic>[],
      categoryName: _nullableStringFromJson(json['category_name']),
    );

Map<String, dynamic> _$KdsOrderItemToJson(_KdsOrderItem instance) =>
    <String, dynamic>{
      'item_id': instance.itemId,
      'quantity': instance.quantity,
      'item_name': instance.itemName,
      'note': instance.note,
      'item_type': instance.itemType,
      'unit_price': instance.unitPrice,
      'category_id': instance.categoryId,
      'subservices': instance.subservices,
      'category_name': instance.categoryName,
    };
