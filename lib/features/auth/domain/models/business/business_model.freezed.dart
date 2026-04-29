// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Business {

@JsonKey(name: 'business_id') String get businessId;@JsonKey(name: 'org_id') String get orgId;@JsonKey(name: 'name') String get name;@JsonKey(name: 'business_type') BusinessType get businessType;@JsonKey(name: 'created_at') DateTime get createdAt;@JsonKey(name: 'created_by') String get createdBy;@JsonKey(name: 'fiscal_id') String get fiscalId;@JsonKey(name: 'last_active_at') DateTime? get lastActiveAt;@JsonKey(name: 'contact_email') String? get contactEmail;@JsonKey(name: 'contact_phone') String? get contactPhone;@JsonKey(name: 'contact_address') String? get contactAddress;@JsonKey(name: 'logo') String? get logo;@JsonKey(name: 'currency') Currency? get currency;@JsonKey(name: 'images') List<String>? get images;@JsonKey(name: 'store_name') String? get storeName;@JsonKey(name: 'gst_in') String? get gstIn;@JsonKey(name: 'state') String? get state;@JsonKey(name: 'country') String? get country;@JsonKey(name: 'time_zone') String? get timeZone;@JsonKey(name: 'is_gst_registered') bool? get isGstRegistered;@JsonKey(name: 'legal_business_name') String? get legalBusinessName;@JsonKey(name: 'gst_registered_date') DateTime? get gstRegisteredDate;@JsonKey(name: 'trade_name') String? get tradeName;@JsonKey(name: 'print_on_sale') bool? get printOnSale;@JsonKey(name: 'print_on_purchase') bool? get printOnPurchase;@JsonKey(name: 'print_barcode_on_purchase') bool? get printBarcodeOnPurchase;@JsonKey(name: 'print_kot_receive') bool? get printKotReceive;@JsonKey(name: 'native_printer_preview') bool? get nativePrinterPreview;@JsonKey(name: 'format') PrintFormats? get format;@JsonKey(name: 'allow_walkin_customer') bool? get allowWalkinCustomer;@JsonKey(name: 'allow_sales_when_outofstock') bool? get allowSalesWhenOutOfStock;@JsonKey(name: 'whatsapp_integration', includeToJson: false) WhatsappIntegration? get whatsappIntegration;
/// Create a copy of Business
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BusinessCopyWith<Business> get copyWith => _$BusinessCopyWithImpl<Business>(this as Business, _$identity);

  /// Serializes this Business to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Business&&(identical(other.businessId, businessId) || other.businessId == businessId)&&(identical(other.orgId, orgId) || other.orgId == orgId)&&(identical(other.name, name) || other.name == name)&&(identical(other.businessType, businessType) || other.businessType == businessType)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.fiscalId, fiscalId) || other.fiscalId == fiscalId)&&(identical(other.lastActiveAt, lastActiveAt) || other.lastActiveAt == lastActiveAt)&&(identical(other.contactEmail, contactEmail) || other.contactEmail == contactEmail)&&(identical(other.contactPhone, contactPhone) || other.contactPhone == contactPhone)&&(identical(other.contactAddress, contactAddress) || other.contactAddress == contactAddress)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.currency, currency) || other.currency == currency)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.storeName, storeName) || other.storeName == storeName)&&(identical(other.gstIn, gstIn) || other.gstIn == gstIn)&&(identical(other.state, state) || other.state == state)&&(identical(other.country, country) || other.country == country)&&(identical(other.timeZone, timeZone) || other.timeZone == timeZone)&&(identical(other.isGstRegistered, isGstRegistered) || other.isGstRegistered == isGstRegistered)&&(identical(other.legalBusinessName, legalBusinessName) || other.legalBusinessName == legalBusinessName)&&(identical(other.gstRegisteredDate, gstRegisteredDate) || other.gstRegisteredDate == gstRegisteredDate)&&(identical(other.tradeName, tradeName) || other.tradeName == tradeName)&&(identical(other.printOnSale, printOnSale) || other.printOnSale == printOnSale)&&(identical(other.printOnPurchase, printOnPurchase) || other.printOnPurchase == printOnPurchase)&&(identical(other.printBarcodeOnPurchase, printBarcodeOnPurchase) || other.printBarcodeOnPurchase == printBarcodeOnPurchase)&&(identical(other.printKotReceive, printKotReceive) || other.printKotReceive == printKotReceive)&&(identical(other.nativePrinterPreview, nativePrinterPreview) || other.nativePrinterPreview == nativePrinterPreview)&&(identical(other.format, format) || other.format == format)&&(identical(other.allowWalkinCustomer, allowWalkinCustomer) || other.allowWalkinCustomer == allowWalkinCustomer)&&(identical(other.allowSalesWhenOutOfStock, allowSalesWhenOutOfStock) || other.allowSalesWhenOutOfStock == allowSalesWhenOutOfStock)&&(identical(other.whatsappIntegration, whatsappIntegration) || other.whatsappIntegration == whatsappIntegration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,businessId,orgId,name,businessType,createdAt,createdBy,fiscalId,lastActiveAt,contactEmail,contactPhone,contactAddress,logo,currency,const DeepCollectionEquality().hash(images),storeName,gstIn,state,country,timeZone,isGstRegistered,legalBusinessName,gstRegisteredDate,tradeName,printOnSale,printOnPurchase,printBarcodeOnPurchase,printKotReceive,nativePrinterPreview,format,allowWalkinCustomer,allowSalesWhenOutOfStock,whatsappIntegration]);

@override
String toString() {
  return 'Business(businessId: $businessId, orgId: $orgId, name: $name, businessType: $businessType, createdAt: $createdAt, createdBy: $createdBy, fiscalId: $fiscalId, lastActiveAt: $lastActiveAt, contactEmail: $contactEmail, contactPhone: $contactPhone, contactAddress: $contactAddress, logo: $logo, currency: $currency, images: $images, storeName: $storeName, gstIn: $gstIn, state: $state, country: $country, timeZone: $timeZone, isGstRegistered: $isGstRegistered, legalBusinessName: $legalBusinessName, gstRegisteredDate: $gstRegisteredDate, tradeName: $tradeName, printOnSale: $printOnSale, printOnPurchase: $printOnPurchase, printBarcodeOnPurchase: $printBarcodeOnPurchase, printKotReceive: $printKotReceive, nativePrinterPreview: $nativePrinterPreview, format: $format, allowWalkinCustomer: $allowWalkinCustomer, allowSalesWhenOutOfStock: $allowSalesWhenOutOfStock, whatsappIntegration: $whatsappIntegration)';
}


}

/// @nodoc
abstract mixin class $BusinessCopyWith<$Res>  {
  factory $BusinessCopyWith(Business value, $Res Function(Business) _then) = _$BusinessCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'business_id') String businessId,@JsonKey(name: 'org_id') String orgId,@JsonKey(name: 'name') String name,@JsonKey(name: 'business_type') BusinessType businessType,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'created_by') String createdBy,@JsonKey(name: 'fiscal_id') String fiscalId,@JsonKey(name: 'last_active_at') DateTime? lastActiveAt,@JsonKey(name: 'contact_email') String? contactEmail,@JsonKey(name: 'contact_phone') String? contactPhone,@JsonKey(name: 'contact_address') String? contactAddress,@JsonKey(name: 'logo') String? logo,@JsonKey(name: 'currency') Currency? currency,@JsonKey(name: 'images') List<String>? images,@JsonKey(name: 'store_name') String? storeName,@JsonKey(name: 'gst_in') String? gstIn,@JsonKey(name: 'state') String? state,@JsonKey(name: 'country') String? country,@JsonKey(name: 'time_zone') String? timeZone,@JsonKey(name: 'is_gst_registered') bool? isGstRegistered,@JsonKey(name: 'legal_business_name') String? legalBusinessName,@JsonKey(name: 'gst_registered_date') DateTime? gstRegisteredDate,@JsonKey(name: 'trade_name') String? tradeName,@JsonKey(name: 'print_on_sale') bool? printOnSale,@JsonKey(name: 'print_on_purchase') bool? printOnPurchase,@JsonKey(name: 'print_barcode_on_purchase') bool? printBarcodeOnPurchase,@JsonKey(name: 'print_kot_receive') bool? printKotReceive,@JsonKey(name: 'native_printer_preview') bool? nativePrinterPreview,@JsonKey(name: 'format') PrintFormats? format,@JsonKey(name: 'allow_walkin_customer') bool? allowWalkinCustomer,@JsonKey(name: 'allow_sales_when_outofstock') bool? allowSalesWhenOutOfStock,@JsonKey(name: 'whatsapp_integration', includeToJson: false) WhatsappIntegration? whatsappIntegration
});


$CurrencyCopyWith<$Res>? get currency;$WhatsappIntegrationCopyWith<$Res>? get whatsappIntegration;

}
/// @nodoc
class _$BusinessCopyWithImpl<$Res>
    implements $BusinessCopyWith<$Res> {
  _$BusinessCopyWithImpl(this._self, this._then);

  final Business _self;
  final $Res Function(Business) _then;

/// Create a copy of Business
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? businessId = null,Object? orgId = null,Object? name = null,Object? businessType = null,Object? createdAt = null,Object? createdBy = null,Object? fiscalId = null,Object? lastActiveAt = freezed,Object? contactEmail = freezed,Object? contactPhone = freezed,Object? contactAddress = freezed,Object? logo = freezed,Object? currency = freezed,Object? images = freezed,Object? storeName = freezed,Object? gstIn = freezed,Object? state = freezed,Object? country = freezed,Object? timeZone = freezed,Object? isGstRegistered = freezed,Object? legalBusinessName = freezed,Object? gstRegisteredDate = freezed,Object? tradeName = freezed,Object? printOnSale = freezed,Object? printOnPurchase = freezed,Object? printBarcodeOnPurchase = freezed,Object? printKotReceive = freezed,Object? nativePrinterPreview = freezed,Object? format = freezed,Object? allowWalkinCustomer = freezed,Object? allowSalesWhenOutOfStock = freezed,Object? whatsappIntegration = freezed,}) {
  return _then(_self.copyWith(
businessId: null == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as String,orgId: null == orgId ? _self.orgId : orgId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,businessType: null == businessType ? _self.businessType : businessType // ignore: cast_nullable_to_non_nullable
as BusinessType,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,fiscalId: null == fiscalId ? _self.fiscalId : fiscalId // ignore: cast_nullable_to_non_nullable
as String,lastActiveAt: freezed == lastActiveAt ? _self.lastActiveAt : lastActiveAt // ignore: cast_nullable_to_non_nullable
as DateTime?,contactEmail: freezed == contactEmail ? _self.contactEmail : contactEmail // ignore: cast_nullable_to_non_nullable
as String?,contactPhone: freezed == contactPhone ? _self.contactPhone : contactPhone // ignore: cast_nullable_to_non_nullable
as String?,contactAddress: freezed == contactAddress ? _self.contactAddress : contactAddress // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as Currency?,images: freezed == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<String>?,storeName: freezed == storeName ? _self.storeName : storeName // ignore: cast_nullable_to_non_nullable
as String?,gstIn: freezed == gstIn ? _self.gstIn : gstIn // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,timeZone: freezed == timeZone ? _self.timeZone : timeZone // ignore: cast_nullable_to_non_nullable
as String?,isGstRegistered: freezed == isGstRegistered ? _self.isGstRegistered : isGstRegistered // ignore: cast_nullable_to_non_nullable
as bool?,legalBusinessName: freezed == legalBusinessName ? _self.legalBusinessName : legalBusinessName // ignore: cast_nullable_to_non_nullable
as String?,gstRegisteredDate: freezed == gstRegisteredDate ? _self.gstRegisteredDate : gstRegisteredDate // ignore: cast_nullable_to_non_nullable
as DateTime?,tradeName: freezed == tradeName ? _self.tradeName : tradeName // ignore: cast_nullable_to_non_nullable
as String?,printOnSale: freezed == printOnSale ? _self.printOnSale : printOnSale // ignore: cast_nullable_to_non_nullable
as bool?,printOnPurchase: freezed == printOnPurchase ? _self.printOnPurchase : printOnPurchase // ignore: cast_nullable_to_non_nullable
as bool?,printBarcodeOnPurchase: freezed == printBarcodeOnPurchase ? _self.printBarcodeOnPurchase : printBarcodeOnPurchase // ignore: cast_nullable_to_non_nullable
as bool?,printKotReceive: freezed == printKotReceive ? _self.printKotReceive : printKotReceive // ignore: cast_nullable_to_non_nullable
as bool?,nativePrinterPreview: freezed == nativePrinterPreview ? _self.nativePrinterPreview : nativePrinterPreview // ignore: cast_nullable_to_non_nullable
as bool?,format: freezed == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as PrintFormats?,allowWalkinCustomer: freezed == allowWalkinCustomer ? _self.allowWalkinCustomer : allowWalkinCustomer // ignore: cast_nullable_to_non_nullable
as bool?,allowSalesWhenOutOfStock: freezed == allowSalesWhenOutOfStock ? _self.allowSalesWhenOutOfStock : allowSalesWhenOutOfStock // ignore: cast_nullable_to_non_nullable
as bool?,whatsappIntegration: freezed == whatsappIntegration ? _self.whatsappIntegration : whatsappIntegration // ignore: cast_nullable_to_non_nullable
as WhatsappIntegration?,
  ));
}
/// Create a copy of Business
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurrencyCopyWith<$Res>? get currency {
    if (_self.currency == null) {
    return null;
  }

  return $CurrencyCopyWith<$Res>(_self.currency!, (value) {
    return _then(_self.copyWith(currency: value));
  });
}/// Create a copy of Business
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WhatsappIntegrationCopyWith<$Res>? get whatsappIntegration {
    if (_self.whatsappIntegration == null) {
    return null;
  }

  return $WhatsappIntegrationCopyWith<$Res>(_self.whatsappIntegration!, (value) {
    return _then(_self.copyWith(whatsappIntegration: value));
  });
}
}


/// Adds pattern-matching-related methods to [Business].
extension BusinessPatterns on Business {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Business value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Business() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Business value)  $default,){
final _that = this;
switch (_that) {
case _Business():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Business value)?  $default,){
final _that = this;
switch (_that) {
case _Business() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'business_id')  String businessId, @JsonKey(name: 'org_id')  String orgId, @JsonKey(name: 'name')  String name, @JsonKey(name: 'business_type')  BusinessType businessType, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'created_by')  String createdBy, @JsonKey(name: 'fiscal_id')  String fiscalId, @JsonKey(name: 'last_active_at')  DateTime? lastActiveAt, @JsonKey(name: 'contact_email')  String? contactEmail, @JsonKey(name: 'contact_phone')  String? contactPhone, @JsonKey(name: 'contact_address')  String? contactAddress, @JsonKey(name: 'logo')  String? logo, @JsonKey(name: 'currency')  Currency? currency, @JsonKey(name: 'images')  List<String>? images, @JsonKey(name: 'store_name')  String? storeName, @JsonKey(name: 'gst_in')  String? gstIn, @JsonKey(name: 'state')  String? state, @JsonKey(name: 'country')  String? country, @JsonKey(name: 'time_zone')  String? timeZone, @JsonKey(name: 'is_gst_registered')  bool? isGstRegistered, @JsonKey(name: 'legal_business_name')  String? legalBusinessName, @JsonKey(name: 'gst_registered_date')  DateTime? gstRegisteredDate, @JsonKey(name: 'trade_name')  String? tradeName, @JsonKey(name: 'print_on_sale')  bool? printOnSale, @JsonKey(name: 'print_on_purchase')  bool? printOnPurchase, @JsonKey(name: 'print_barcode_on_purchase')  bool? printBarcodeOnPurchase, @JsonKey(name: 'print_kot_receive')  bool? printKotReceive, @JsonKey(name: 'native_printer_preview')  bool? nativePrinterPreview, @JsonKey(name: 'format')  PrintFormats? format, @JsonKey(name: 'allow_walkin_customer')  bool? allowWalkinCustomer, @JsonKey(name: 'allow_sales_when_outofstock')  bool? allowSalesWhenOutOfStock, @JsonKey(name: 'whatsapp_integration', includeToJson: false)  WhatsappIntegration? whatsappIntegration)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Business() when $default != null:
return $default(_that.businessId,_that.orgId,_that.name,_that.businessType,_that.createdAt,_that.createdBy,_that.fiscalId,_that.lastActiveAt,_that.contactEmail,_that.contactPhone,_that.contactAddress,_that.logo,_that.currency,_that.images,_that.storeName,_that.gstIn,_that.state,_that.country,_that.timeZone,_that.isGstRegistered,_that.legalBusinessName,_that.gstRegisteredDate,_that.tradeName,_that.printOnSale,_that.printOnPurchase,_that.printBarcodeOnPurchase,_that.printKotReceive,_that.nativePrinterPreview,_that.format,_that.allowWalkinCustomer,_that.allowSalesWhenOutOfStock,_that.whatsappIntegration);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'business_id')  String businessId, @JsonKey(name: 'org_id')  String orgId, @JsonKey(name: 'name')  String name, @JsonKey(name: 'business_type')  BusinessType businessType, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'created_by')  String createdBy, @JsonKey(name: 'fiscal_id')  String fiscalId, @JsonKey(name: 'last_active_at')  DateTime? lastActiveAt, @JsonKey(name: 'contact_email')  String? contactEmail, @JsonKey(name: 'contact_phone')  String? contactPhone, @JsonKey(name: 'contact_address')  String? contactAddress, @JsonKey(name: 'logo')  String? logo, @JsonKey(name: 'currency')  Currency? currency, @JsonKey(name: 'images')  List<String>? images, @JsonKey(name: 'store_name')  String? storeName, @JsonKey(name: 'gst_in')  String? gstIn, @JsonKey(name: 'state')  String? state, @JsonKey(name: 'country')  String? country, @JsonKey(name: 'time_zone')  String? timeZone, @JsonKey(name: 'is_gst_registered')  bool? isGstRegistered, @JsonKey(name: 'legal_business_name')  String? legalBusinessName, @JsonKey(name: 'gst_registered_date')  DateTime? gstRegisteredDate, @JsonKey(name: 'trade_name')  String? tradeName, @JsonKey(name: 'print_on_sale')  bool? printOnSale, @JsonKey(name: 'print_on_purchase')  bool? printOnPurchase, @JsonKey(name: 'print_barcode_on_purchase')  bool? printBarcodeOnPurchase, @JsonKey(name: 'print_kot_receive')  bool? printKotReceive, @JsonKey(name: 'native_printer_preview')  bool? nativePrinterPreview, @JsonKey(name: 'format')  PrintFormats? format, @JsonKey(name: 'allow_walkin_customer')  bool? allowWalkinCustomer, @JsonKey(name: 'allow_sales_when_outofstock')  bool? allowSalesWhenOutOfStock, @JsonKey(name: 'whatsapp_integration', includeToJson: false)  WhatsappIntegration? whatsappIntegration)  $default,) {final _that = this;
switch (_that) {
case _Business():
return $default(_that.businessId,_that.orgId,_that.name,_that.businessType,_that.createdAt,_that.createdBy,_that.fiscalId,_that.lastActiveAt,_that.contactEmail,_that.contactPhone,_that.contactAddress,_that.logo,_that.currency,_that.images,_that.storeName,_that.gstIn,_that.state,_that.country,_that.timeZone,_that.isGstRegistered,_that.legalBusinessName,_that.gstRegisteredDate,_that.tradeName,_that.printOnSale,_that.printOnPurchase,_that.printBarcodeOnPurchase,_that.printKotReceive,_that.nativePrinterPreview,_that.format,_that.allowWalkinCustomer,_that.allowSalesWhenOutOfStock,_that.whatsappIntegration);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'business_id')  String businessId, @JsonKey(name: 'org_id')  String orgId, @JsonKey(name: 'name')  String name, @JsonKey(name: 'business_type')  BusinessType businessType, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'created_by')  String createdBy, @JsonKey(name: 'fiscal_id')  String fiscalId, @JsonKey(name: 'last_active_at')  DateTime? lastActiveAt, @JsonKey(name: 'contact_email')  String? contactEmail, @JsonKey(name: 'contact_phone')  String? contactPhone, @JsonKey(name: 'contact_address')  String? contactAddress, @JsonKey(name: 'logo')  String? logo, @JsonKey(name: 'currency')  Currency? currency, @JsonKey(name: 'images')  List<String>? images, @JsonKey(name: 'store_name')  String? storeName, @JsonKey(name: 'gst_in')  String? gstIn, @JsonKey(name: 'state')  String? state, @JsonKey(name: 'country')  String? country, @JsonKey(name: 'time_zone')  String? timeZone, @JsonKey(name: 'is_gst_registered')  bool? isGstRegistered, @JsonKey(name: 'legal_business_name')  String? legalBusinessName, @JsonKey(name: 'gst_registered_date')  DateTime? gstRegisteredDate, @JsonKey(name: 'trade_name')  String? tradeName, @JsonKey(name: 'print_on_sale')  bool? printOnSale, @JsonKey(name: 'print_on_purchase')  bool? printOnPurchase, @JsonKey(name: 'print_barcode_on_purchase')  bool? printBarcodeOnPurchase, @JsonKey(name: 'print_kot_receive')  bool? printKotReceive, @JsonKey(name: 'native_printer_preview')  bool? nativePrinterPreview, @JsonKey(name: 'format')  PrintFormats? format, @JsonKey(name: 'allow_walkin_customer')  bool? allowWalkinCustomer, @JsonKey(name: 'allow_sales_when_outofstock')  bool? allowSalesWhenOutOfStock, @JsonKey(name: 'whatsapp_integration', includeToJson: false)  WhatsappIntegration? whatsappIntegration)?  $default,) {final _that = this;
switch (_that) {
case _Business() when $default != null:
return $default(_that.businessId,_that.orgId,_that.name,_that.businessType,_that.createdAt,_that.createdBy,_that.fiscalId,_that.lastActiveAt,_that.contactEmail,_that.contactPhone,_that.contactAddress,_that.logo,_that.currency,_that.images,_that.storeName,_that.gstIn,_that.state,_that.country,_that.timeZone,_that.isGstRegistered,_that.legalBusinessName,_that.gstRegisteredDate,_that.tradeName,_that.printOnSale,_that.printOnPurchase,_that.printBarcodeOnPurchase,_that.printKotReceive,_that.nativePrinterPreview,_that.format,_that.allowWalkinCustomer,_that.allowSalesWhenOutOfStock,_that.whatsappIntegration);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Business implements Business {
  const _Business({@JsonKey(name: 'business_id') required this.businessId, @JsonKey(name: 'org_id') required this.orgId, @JsonKey(name: 'name') required this.name, @JsonKey(name: 'business_type') required this.businessType, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'created_by') required this.createdBy, @JsonKey(name: 'fiscal_id') required this.fiscalId, @JsonKey(name: 'last_active_at') this.lastActiveAt, @JsonKey(name: 'contact_email') this.contactEmail, @JsonKey(name: 'contact_phone') this.contactPhone, @JsonKey(name: 'contact_address') this.contactAddress, @JsonKey(name: 'logo') this.logo, @JsonKey(name: 'currency') this.currency, @JsonKey(name: 'images') final  List<String>? images, @JsonKey(name: 'store_name') this.storeName, @JsonKey(name: 'gst_in') this.gstIn, @JsonKey(name: 'state') this.state, @JsonKey(name: 'country') this.country, @JsonKey(name: 'time_zone') this.timeZone, @JsonKey(name: 'is_gst_registered') this.isGstRegistered, @JsonKey(name: 'legal_business_name') this.legalBusinessName, @JsonKey(name: 'gst_registered_date') this.gstRegisteredDate, @JsonKey(name: 'trade_name') this.tradeName, @JsonKey(name: 'print_on_sale') this.printOnSale, @JsonKey(name: 'print_on_purchase') this.printOnPurchase, @JsonKey(name: 'print_barcode_on_purchase') this.printBarcodeOnPurchase, @JsonKey(name: 'print_kot_receive') this.printKotReceive, @JsonKey(name: 'native_printer_preview') this.nativePrinterPreview, @JsonKey(name: 'format') this.format, @JsonKey(name: 'allow_walkin_customer') this.allowWalkinCustomer, @JsonKey(name: 'allow_sales_when_outofstock') this.allowSalesWhenOutOfStock, @JsonKey(name: 'whatsapp_integration', includeToJson: false) this.whatsappIntegration}): _images = images;
  factory _Business.fromJson(Map<String, dynamic> json) => _$BusinessFromJson(json);

@override@JsonKey(name: 'business_id') final  String businessId;
@override@JsonKey(name: 'org_id') final  String orgId;
@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'business_type') final  BusinessType businessType;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@JsonKey(name: 'created_by') final  String createdBy;
@override@JsonKey(name: 'fiscal_id') final  String fiscalId;
@override@JsonKey(name: 'last_active_at') final  DateTime? lastActiveAt;
@override@JsonKey(name: 'contact_email') final  String? contactEmail;
@override@JsonKey(name: 'contact_phone') final  String? contactPhone;
@override@JsonKey(name: 'contact_address') final  String? contactAddress;
@override@JsonKey(name: 'logo') final  String? logo;
@override@JsonKey(name: 'currency') final  Currency? currency;
 final  List<String>? _images;
@override@JsonKey(name: 'images') List<String>? get images {
  final value = _images;
  if (value == null) return null;
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'store_name') final  String? storeName;
@override@JsonKey(name: 'gst_in') final  String? gstIn;
@override@JsonKey(name: 'state') final  String? state;
@override@JsonKey(name: 'country') final  String? country;
@override@JsonKey(name: 'time_zone') final  String? timeZone;
@override@JsonKey(name: 'is_gst_registered') final  bool? isGstRegistered;
@override@JsonKey(name: 'legal_business_name') final  String? legalBusinessName;
@override@JsonKey(name: 'gst_registered_date') final  DateTime? gstRegisteredDate;
@override@JsonKey(name: 'trade_name') final  String? tradeName;
@override@JsonKey(name: 'print_on_sale') final  bool? printOnSale;
@override@JsonKey(name: 'print_on_purchase') final  bool? printOnPurchase;
@override@JsonKey(name: 'print_barcode_on_purchase') final  bool? printBarcodeOnPurchase;
@override@JsonKey(name: 'print_kot_receive') final  bool? printKotReceive;
@override@JsonKey(name: 'native_printer_preview') final  bool? nativePrinterPreview;
@override@JsonKey(name: 'format') final  PrintFormats? format;
@override@JsonKey(name: 'allow_walkin_customer') final  bool? allowWalkinCustomer;
@override@JsonKey(name: 'allow_sales_when_outofstock') final  bool? allowSalesWhenOutOfStock;
@override@JsonKey(name: 'whatsapp_integration', includeToJson: false) final  WhatsappIntegration? whatsappIntegration;

/// Create a copy of Business
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BusinessCopyWith<_Business> get copyWith => __$BusinessCopyWithImpl<_Business>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BusinessToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Business&&(identical(other.businessId, businessId) || other.businessId == businessId)&&(identical(other.orgId, orgId) || other.orgId == orgId)&&(identical(other.name, name) || other.name == name)&&(identical(other.businessType, businessType) || other.businessType == businessType)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.fiscalId, fiscalId) || other.fiscalId == fiscalId)&&(identical(other.lastActiveAt, lastActiveAt) || other.lastActiveAt == lastActiveAt)&&(identical(other.contactEmail, contactEmail) || other.contactEmail == contactEmail)&&(identical(other.contactPhone, contactPhone) || other.contactPhone == contactPhone)&&(identical(other.contactAddress, contactAddress) || other.contactAddress == contactAddress)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.currency, currency) || other.currency == currency)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.storeName, storeName) || other.storeName == storeName)&&(identical(other.gstIn, gstIn) || other.gstIn == gstIn)&&(identical(other.state, state) || other.state == state)&&(identical(other.country, country) || other.country == country)&&(identical(other.timeZone, timeZone) || other.timeZone == timeZone)&&(identical(other.isGstRegistered, isGstRegistered) || other.isGstRegistered == isGstRegistered)&&(identical(other.legalBusinessName, legalBusinessName) || other.legalBusinessName == legalBusinessName)&&(identical(other.gstRegisteredDate, gstRegisteredDate) || other.gstRegisteredDate == gstRegisteredDate)&&(identical(other.tradeName, tradeName) || other.tradeName == tradeName)&&(identical(other.printOnSale, printOnSale) || other.printOnSale == printOnSale)&&(identical(other.printOnPurchase, printOnPurchase) || other.printOnPurchase == printOnPurchase)&&(identical(other.printBarcodeOnPurchase, printBarcodeOnPurchase) || other.printBarcodeOnPurchase == printBarcodeOnPurchase)&&(identical(other.printKotReceive, printKotReceive) || other.printKotReceive == printKotReceive)&&(identical(other.nativePrinterPreview, nativePrinterPreview) || other.nativePrinterPreview == nativePrinterPreview)&&(identical(other.format, format) || other.format == format)&&(identical(other.allowWalkinCustomer, allowWalkinCustomer) || other.allowWalkinCustomer == allowWalkinCustomer)&&(identical(other.allowSalesWhenOutOfStock, allowSalesWhenOutOfStock) || other.allowSalesWhenOutOfStock == allowSalesWhenOutOfStock)&&(identical(other.whatsappIntegration, whatsappIntegration) || other.whatsappIntegration == whatsappIntegration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,businessId,orgId,name,businessType,createdAt,createdBy,fiscalId,lastActiveAt,contactEmail,contactPhone,contactAddress,logo,currency,const DeepCollectionEquality().hash(_images),storeName,gstIn,state,country,timeZone,isGstRegistered,legalBusinessName,gstRegisteredDate,tradeName,printOnSale,printOnPurchase,printBarcodeOnPurchase,printKotReceive,nativePrinterPreview,format,allowWalkinCustomer,allowSalesWhenOutOfStock,whatsappIntegration]);

@override
String toString() {
  return 'Business(businessId: $businessId, orgId: $orgId, name: $name, businessType: $businessType, createdAt: $createdAt, createdBy: $createdBy, fiscalId: $fiscalId, lastActiveAt: $lastActiveAt, contactEmail: $contactEmail, contactPhone: $contactPhone, contactAddress: $contactAddress, logo: $logo, currency: $currency, images: $images, storeName: $storeName, gstIn: $gstIn, state: $state, country: $country, timeZone: $timeZone, isGstRegistered: $isGstRegistered, legalBusinessName: $legalBusinessName, gstRegisteredDate: $gstRegisteredDate, tradeName: $tradeName, printOnSale: $printOnSale, printOnPurchase: $printOnPurchase, printBarcodeOnPurchase: $printBarcodeOnPurchase, printKotReceive: $printKotReceive, nativePrinterPreview: $nativePrinterPreview, format: $format, allowWalkinCustomer: $allowWalkinCustomer, allowSalesWhenOutOfStock: $allowSalesWhenOutOfStock, whatsappIntegration: $whatsappIntegration)';
}


}

/// @nodoc
abstract mixin class _$BusinessCopyWith<$Res> implements $BusinessCopyWith<$Res> {
  factory _$BusinessCopyWith(_Business value, $Res Function(_Business) _then) = __$BusinessCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'business_id') String businessId,@JsonKey(name: 'org_id') String orgId,@JsonKey(name: 'name') String name,@JsonKey(name: 'business_type') BusinessType businessType,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'created_by') String createdBy,@JsonKey(name: 'fiscal_id') String fiscalId,@JsonKey(name: 'last_active_at') DateTime? lastActiveAt,@JsonKey(name: 'contact_email') String? contactEmail,@JsonKey(name: 'contact_phone') String? contactPhone,@JsonKey(name: 'contact_address') String? contactAddress,@JsonKey(name: 'logo') String? logo,@JsonKey(name: 'currency') Currency? currency,@JsonKey(name: 'images') List<String>? images,@JsonKey(name: 'store_name') String? storeName,@JsonKey(name: 'gst_in') String? gstIn,@JsonKey(name: 'state') String? state,@JsonKey(name: 'country') String? country,@JsonKey(name: 'time_zone') String? timeZone,@JsonKey(name: 'is_gst_registered') bool? isGstRegistered,@JsonKey(name: 'legal_business_name') String? legalBusinessName,@JsonKey(name: 'gst_registered_date') DateTime? gstRegisteredDate,@JsonKey(name: 'trade_name') String? tradeName,@JsonKey(name: 'print_on_sale') bool? printOnSale,@JsonKey(name: 'print_on_purchase') bool? printOnPurchase,@JsonKey(name: 'print_barcode_on_purchase') bool? printBarcodeOnPurchase,@JsonKey(name: 'print_kot_receive') bool? printKotReceive,@JsonKey(name: 'native_printer_preview') bool? nativePrinterPreview,@JsonKey(name: 'format') PrintFormats? format,@JsonKey(name: 'allow_walkin_customer') bool? allowWalkinCustomer,@JsonKey(name: 'allow_sales_when_outofstock') bool? allowSalesWhenOutOfStock,@JsonKey(name: 'whatsapp_integration', includeToJson: false) WhatsappIntegration? whatsappIntegration
});


@override $CurrencyCopyWith<$Res>? get currency;@override $WhatsappIntegrationCopyWith<$Res>? get whatsappIntegration;

}
/// @nodoc
class __$BusinessCopyWithImpl<$Res>
    implements _$BusinessCopyWith<$Res> {
  __$BusinessCopyWithImpl(this._self, this._then);

  final _Business _self;
  final $Res Function(_Business) _then;

/// Create a copy of Business
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? businessId = null,Object? orgId = null,Object? name = null,Object? businessType = null,Object? createdAt = null,Object? createdBy = null,Object? fiscalId = null,Object? lastActiveAt = freezed,Object? contactEmail = freezed,Object? contactPhone = freezed,Object? contactAddress = freezed,Object? logo = freezed,Object? currency = freezed,Object? images = freezed,Object? storeName = freezed,Object? gstIn = freezed,Object? state = freezed,Object? country = freezed,Object? timeZone = freezed,Object? isGstRegistered = freezed,Object? legalBusinessName = freezed,Object? gstRegisteredDate = freezed,Object? tradeName = freezed,Object? printOnSale = freezed,Object? printOnPurchase = freezed,Object? printBarcodeOnPurchase = freezed,Object? printKotReceive = freezed,Object? nativePrinterPreview = freezed,Object? format = freezed,Object? allowWalkinCustomer = freezed,Object? allowSalesWhenOutOfStock = freezed,Object? whatsappIntegration = freezed,}) {
  return _then(_Business(
businessId: null == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as String,orgId: null == orgId ? _self.orgId : orgId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,businessType: null == businessType ? _self.businessType : businessType // ignore: cast_nullable_to_non_nullable
as BusinessType,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,fiscalId: null == fiscalId ? _self.fiscalId : fiscalId // ignore: cast_nullable_to_non_nullable
as String,lastActiveAt: freezed == lastActiveAt ? _self.lastActiveAt : lastActiveAt // ignore: cast_nullable_to_non_nullable
as DateTime?,contactEmail: freezed == contactEmail ? _self.contactEmail : contactEmail // ignore: cast_nullable_to_non_nullable
as String?,contactPhone: freezed == contactPhone ? _self.contactPhone : contactPhone // ignore: cast_nullable_to_non_nullable
as String?,contactAddress: freezed == contactAddress ? _self.contactAddress : contactAddress // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as Currency?,images: freezed == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<String>?,storeName: freezed == storeName ? _self.storeName : storeName // ignore: cast_nullable_to_non_nullable
as String?,gstIn: freezed == gstIn ? _self.gstIn : gstIn // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,timeZone: freezed == timeZone ? _self.timeZone : timeZone // ignore: cast_nullable_to_non_nullable
as String?,isGstRegistered: freezed == isGstRegistered ? _self.isGstRegistered : isGstRegistered // ignore: cast_nullable_to_non_nullable
as bool?,legalBusinessName: freezed == legalBusinessName ? _self.legalBusinessName : legalBusinessName // ignore: cast_nullable_to_non_nullable
as String?,gstRegisteredDate: freezed == gstRegisteredDate ? _self.gstRegisteredDate : gstRegisteredDate // ignore: cast_nullable_to_non_nullable
as DateTime?,tradeName: freezed == tradeName ? _self.tradeName : tradeName // ignore: cast_nullable_to_non_nullable
as String?,printOnSale: freezed == printOnSale ? _self.printOnSale : printOnSale // ignore: cast_nullable_to_non_nullable
as bool?,printOnPurchase: freezed == printOnPurchase ? _self.printOnPurchase : printOnPurchase // ignore: cast_nullable_to_non_nullable
as bool?,printBarcodeOnPurchase: freezed == printBarcodeOnPurchase ? _self.printBarcodeOnPurchase : printBarcodeOnPurchase // ignore: cast_nullable_to_non_nullable
as bool?,printKotReceive: freezed == printKotReceive ? _self.printKotReceive : printKotReceive // ignore: cast_nullable_to_non_nullable
as bool?,nativePrinterPreview: freezed == nativePrinterPreview ? _self.nativePrinterPreview : nativePrinterPreview // ignore: cast_nullable_to_non_nullable
as bool?,format: freezed == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as PrintFormats?,allowWalkinCustomer: freezed == allowWalkinCustomer ? _self.allowWalkinCustomer : allowWalkinCustomer // ignore: cast_nullable_to_non_nullable
as bool?,allowSalesWhenOutOfStock: freezed == allowSalesWhenOutOfStock ? _self.allowSalesWhenOutOfStock : allowSalesWhenOutOfStock // ignore: cast_nullable_to_non_nullable
as bool?,whatsappIntegration: freezed == whatsappIntegration ? _self.whatsappIntegration : whatsappIntegration // ignore: cast_nullable_to_non_nullable
as WhatsappIntegration?,
  ));
}

/// Create a copy of Business
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurrencyCopyWith<$Res>? get currency {
    if (_self.currency == null) {
    return null;
  }

  return $CurrencyCopyWith<$Res>(_self.currency!, (value) {
    return _then(_self.copyWith(currency: value));
  });
}/// Create a copy of Business
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WhatsappIntegrationCopyWith<$Res>? get whatsappIntegration {
    if (_self.whatsappIntegration == null) {
    return null;
  }

  return $WhatsappIntegrationCopyWith<$Res>(_self.whatsappIntegration!, (value) {
    return _then(_self.copyWith(whatsappIntegration: value));
  });
}
}

// dart format on
