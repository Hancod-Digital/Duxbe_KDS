// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'minimal_sale_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MinimalSale _$MinimalSaleFromJson(Map<String, dynamic> json) => _MinimalSale(
  saleId: json['sale_id'] as String,
  businessId: json['business_id'] as String,
  saleInvoice: json['sale_invoice'] as String,
  saleDate: DateTime.parse(json['sale_date'] as String),
  totalAmount: (json['total_amount'] as num).toDouble(),
  dueAmount: (json['due_amount'] as num).toDouble(),
  orderType: json['order_type'] as String?,
  orderMode: json['order_mode'] as bool,
  status: json['status'] as String?,
  createdAt: DateTime.parse(json['created_at'] as String),
  transactionStatus: json['transaction_status'] as String,
  customerId: json['customer_id'] as String?,
  customerName: json['customer_name'] as String?,
  customerPhone: json['customer_phone'] as String?,
  tableName: json['table_name'] as String?,
  paymentType: json['payment_type'] as String?,
  platform: json['platform'] as String?,
  orderedBy: json['ordered_by'] as String?,
);

Map<String, dynamic> _$MinimalSaleToJson(_MinimalSale instance) =>
    <String, dynamic>{
      'sale_id': instance.saleId,
      'business_id': instance.businessId,
      'sale_invoice': instance.saleInvoice,
      'sale_date': instance.saleDate.toIso8601String(),
      'total_amount': instance.totalAmount,
      'due_amount': instance.dueAmount,
      'order_type': instance.orderType,
      'order_mode': instance.orderMode,
      'status': instance.status,
      'created_at': instance.createdAt.toIso8601String(),
      'transaction_status': instance.transactionStatus,
      'customer_id': instance.customerId,
      'customer_name': instance.customerName,
      'customer_phone': instance.customerPhone,
      'table_name': instance.tableName,
      'payment_type': instance.paymentType,
      'platform': instance.platform,
      'ordered_by': instance.orderedBy,
    };
