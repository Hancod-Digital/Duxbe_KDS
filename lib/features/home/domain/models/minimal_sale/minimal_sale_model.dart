// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'minimal_sale_model.freezed.dart';
part 'minimal_sale_model.g.dart';

typedef TransactionStatus = String;

@freezed
sealed class MinimalSale with _$MinimalSale {
  @JsonSerializable(explicitToJson: true)
  const factory MinimalSale({
    /// Corresponds to the `sale_id` column.
    @JsonKey(name: 'sale_id') required String saleId,

    /// Corresponds to the `business_id` column.
    @JsonKey(name: 'business_id') required String businessId,

    /// Corresponds to the `sale_invoice` column.
    @JsonKey(name: 'sale_invoice') required String saleInvoice,

    /// Corresponds to the `sale_date` column.
    @JsonKey(name: 'sale_date') required DateTime saleDate,

    /// Corresponds to the `total_amount` column.
    @JsonKey(name: 'total_amount') required double totalAmount,

    /// Corresponds to the `due_amount` column.
    @JsonKey(name: 'due_amount') required double dueAmount,

    /// Corresponds to the `order_type` column.
    @JsonKey(name: 'order_type') required String? orderType,

    /// Corresponds to the `order_mode` column.
    @JsonKey(name: 'order_mode') required bool orderMode,

    /// Corresponds to the `status` column.
    required String? status,

    /// Corresponds to the `created_at` column.
    @JsonKey(name: 'created_at') required DateTime createdAt,

    /// Corresponds to the `transaction_status` column.
    @JsonKey(name: 'transaction_status')
    required TransactionStatus transactionStatus,

    /// Corresponds to the `customer_id` column.
    @JsonKey(name: 'customer_id') String? customerId,

    /// Corresponds to the `customer_name` column.
    @JsonKey(name: 'customer_name') String? customerName,

    /// Corresponds to the `customer_phone` column.
    @JsonKey(name: 'customer_phone') String? customerPhone,

    /// Corresponds to the `table_name` column.
    @JsonKey(name: 'table_name') String? tableName,

    /// Corresponds to the `payment_type` column.
    @JsonKey(name: 'payment_type') String? paymentType,

    /// Corresponds to the `platform` column.
    @JsonKey(name: 'platform') String? platform,

    /// Corresponds to the `ordered_by` column.
    @JsonKey(name: 'ordered_by') String? orderedBy,
  }) = _MinimalSale;

  factory MinimalSale.fromJson(Map<String, dynamic> json) =>
      _$MinimalSaleFromJson(json);
}
