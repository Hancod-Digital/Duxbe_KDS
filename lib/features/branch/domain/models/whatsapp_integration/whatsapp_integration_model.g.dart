// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'whatsapp_integration_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WhatsappIntegration _$WhatsappIntegrationFromJson(
  Map<String, dynamic> json,
) => _WhatsappIntegration(
  businessId: json['business_id'] as String,
  whatsappNumberId: json['whatsapp_number_id'] as String?,
  whatsappToken: json['whatsapp_token'] as String?,
  customerSaleInvoice: json['customer_sale_invoice'] as bool? ?? false,
  customerPaymentReceipt: json['customer_payment_receipt'] as bool? ?? false,
  adminOrderAssignedAlert: json['admin_order_assigned_alert'] as bool? ?? false,
  adminStockAlert: json['admin_stock_alert'] as bool? ?? false,
  paymentOverdueAlert: json['payment_overdue_alert'] as String? ?? 'None',
);

Map<String, dynamic> _$WhatsappIntegrationToJson(
  _WhatsappIntegration instance,
) => <String, dynamic>{
  'business_id': instance.businessId,
  'whatsapp_number_id': instance.whatsappNumberId,
  'whatsapp_token': instance.whatsappToken,
  'customer_sale_invoice': instance.customerSaleInvoice,
  'customer_payment_receipt': instance.customerPaymentReceipt,
  'admin_order_assigned_alert': instance.adminOrderAssignedAlert,
  'admin_stock_alert': instance.adminStockAlert,
  'payment_overdue_alert': instance.paymentOverdueAlert,
};
