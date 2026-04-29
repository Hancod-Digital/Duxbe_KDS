// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Business _$BusinessFromJson(Map<String, dynamic> json) => _Business(
  businessId: json['business_id'] as String,
  orgId: json['org_id'] as String,
  name: json['name'] as String,
  businessType: $enumDecode(_$BusinessTypeEnumMap, json['business_type']),
  createdAt: DateTime.parse(json['created_at'] as String),
  createdBy: json['created_by'] as String,
  fiscalId: json['fiscal_id'] as String,
  lastActiveAt: json['last_active_at'] == null
      ? null
      : DateTime.parse(json['last_active_at'] as String),
  contactEmail: json['contact_email'] as String?,
  contactPhone: json['contact_phone'] as String?,
  contactAddress: json['contact_address'] as String?,
  logo: json['logo'] as String?,
  currency: json['currency'] == null
      ? null
      : Currency.fromJson(json['currency'] as Map<String, dynamic>),
  images: (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
  storeName: json['store_name'] as String?,
  gstIn: json['gst_in'] as String?,
  state: json['state'] as String?,
  country: json['country'] as String?,
  timeZone: json['time_zone'] as String?,
  isGstRegistered: json['is_gst_registered'] as bool?,
  legalBusinessName: json['legal_business_name'] as String?,
  gstRegisteredDate: json['gst_registered_date'] == null
      ? null
      : DateTime.parse(json['gst_registered_date'] as String),
  tradeName: json['trade_name'] as String?,
  printOnSale: json['print_on_sale'] as bool?,
  printOnPurchase: json['print_on_purchase'] as bool?,
  printBarcodeOnPurchase: json['print_barcode_on_purchase'] as bool?,
  printKotReceive: json['print_kot_receive'] as bool?,
  nativePrinterPreview: json['native_printer_preview'] as bool?,
  format: $enumDecodeNullable(_$PrintFormatsEnumMap, json['format']),
  allowWalkinCustomer: json['allow_walkin_customer'] as bool?,
  allowSalesWhenOutOfStock: json['allow_sales_when_outofstock'] as bool?,
  whatsappIntegration: json['whatsapp_integration'] == null
      ? null
      : WhatsappIntegration.fromJson(
          json['whatsapp_integration'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$BusinessToJson(_Business instance) => <String, dynamic>{
  'business_id': instance.businessId,
  'org_id': instance.orgId,
  'name': instance.name,
  'business_type': _$BusinessTypeEnumMap[instance.businessType]!,
  'created_at': instance.createdAt.toIso8601String(),
  'created_by': instance.createdBy,
  'fiscal_id': instance.fiscalId,
  'last_active_at': instance.lastActiveAt?.toIso8601String(),
  'contact_email': instance.contactEmail,
  'contact_phone': instance.contactPhone,
  'contact_address': instance.contactAddress,
  'logo': instance.logo,
  'currency': instance.currency,
  'images': instance.images,
  'store_name': instance.storeName,
  'gst_in': instance.gstIn,
  'state': instance.state,
  'country': instance.country,
  'time_zone': instance.timeZone,
  'is_gst_registered': instance.isGstRegistered,
  'legal_business_name': instance.legalBusinessName,
  'gst_registered_date': instance.gstRegisteredDate?.toIso8601String(),
  'trade_name': instance.tradeName,
  'print_on_sale': instance.printOnSale,
  'print_on_purchase': instance.printOnPurchase,
  'print_barcode_on_purchase': instance.printBarcodeOnPurchase,
  'print_kot_receive': instance.printKotReceive,
  'native_printer_preview': instance.nativePrinterPreview,
  'format': _$PrintFormatsEnumMap[instance.format],
  'allow_walkin_customer': instance.allowWalkinCustomer,
  'allow_sales_when_outofstock': instance.allowSalesWhenOutOfStock,
};

const _$BusinessTypeEnumMap = {
  BusinessType.retail: 'retail',
  BusinessType.automotive: 'automotive',
  BusinessType.foodAndBeverage: 'foodAndBeverage',
  BusinessType.others: 'others',
};

const _$PrintFormatsEnumMap = {
  PrintFormats.a4: 'a4',
  PrintFormats.roll80: 'roll80',
  PrintFormats.roll57: 'roll57',
};
