import 'package:duxbe_kds/shared/models/currency_model/currency_model.dart';
import 'package:duxbe_kds/shared/utils/assets.gen.dart';
import 'package:duxbe_kds/features/branch/domain/models/whatsapp_integration/whatsapp_integration_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'business_model.freezed.dart';
part 'business_model.g.dart';

enum PrintFormats { a4, roll80, roll57 }

enum BusinessType { retail, automotive, foodAndBeverage, others }

enum SubscriptionStatus { active, inactive, expired, cancelled }

extension BusinessTypeX on BusinessType {
  String get title => switch (this) {
    BusinessType.retail => 'Retail & Service Businesses',
    BusinessType.automotive => 'Automotive',
    BusinessType.foodAndBeverage => 'Food & Beverage',
    BusinessType.others => 'Others',
  };
  String get subtitle => switch (this) {
    BusinessType.retail =>
      'Physical or online stores, service providers, and consultancy',
    BusinessType.automotive =>
      'Car dealerships, repair shops, auto parts, and vehicle services',
    BusinessType.foodAndBeverage =>
      'Restaurant, cafes, catering, food delivery, and beverage companies ',
    BusinessType.others =>
      'Manufacturing, technology, healthcare, education, and other industries',
  };

  SvgGenImage get icon => switch (this) {
    BusinessType.retail => Assets.icons.retailIcon,
    BusinessType.automotive => Assets.icons.autoIcon,
    BusinessType.foodAndBeverage => Assets.icons.foodIcon,
    BusinessType.others => Assets.icons.otherIcon,
  };
}

@freezed
sealed class Business with _$Business {
  const factory Business({
    @JsonKey(name: 'business_id') required String businessId,
    @JsonKey(name: 'org_id') required String orgId,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'business_type') required BusinessType businessType,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'created_by') required String createdBy,
    @JsonKey(name: 'fiscal_id') required String fiscalId,
    @JsonKey(name: 'last_active_at') DateTime? lastActiveAt,
    @JsonKey(name: 'contact_email') String? contactEmail,
    @JsonKey(name: 'contact_phone') String? contactPhone,
    @JsonKey(name: 'contact_address') String? contactAddress,
    @JsonKey(name: 'logo') String? logo,
    @JsonKey(name: 'currency') Currency? currency,
    @JsonKey(name: 'images') List<String>? images,
    @JsonKey(name: 'store_name') String? storeName,
    @JsonKey(name: 'gst_in') String? gstIn,
    @JsonKey(name: 'state') String? state,
    @JsonKey(name: 'country') String? country,
    @JsonKey(name: 'time_zone') String? timeZone,
    @JsonKey(name: 'is_gst_registered') bool? isGstRegistered,
    @JsonKey(name: 'legal_business_name') String? legalBusinessName,
    @JsonKey(name: 'gst_registered_date') DateTime? gstRegisteredDate,
    @JsonKey(name: 'trade_name') String? tradeName,
    @JsonKey(name: 'print_on_sale') bool? printOnSale,
    @JsonKey(name: 'print_on_purchase') bool? printOnPurchase,
    @JsonKey(name: 'print_barcode_on_purchase') bool? printBarcodeOnPurchase,
    @JsonKey(name: 'print_kot_receive') bool? printKotReceive,
    @JsonKey(name: 'native_printer_preview') bool? nativePrinterPreview,
    @JsonKey(name: 'format') PrintFormats? format,
    @JsonKey(name: 'allow_walkin_customer') bool? allowWalkinCustomer,
    @JsonKey(name: 'allow_sales_when_outofstock')
    bool? allowSalesWhenOutOfStock,
    @JsonKey(name: 'whatsapp_integration', includeToJson: false)
    WhatsappIntegration? whatsappIntegration,
  }) = _Business;

  factory Business.fromJson(Map<String, dynamic> json) =>
      _$BusinessFromJson(json);
}
