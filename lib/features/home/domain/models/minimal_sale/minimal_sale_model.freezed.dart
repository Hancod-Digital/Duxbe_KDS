// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'minimal_sale_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MinimalSale {

/// Corresponds to the `sale_id` column.
@JsonKey(name: 'sale_id') String get saleId;/// Corresponds to the `business_id` column.
@JsonKey(name: 'business_id') String get businessId;/// Corresponds to the `sale_invoice` column.
@JsonKey(name: 'sale_invoice') String get saleInvoice;/// Corresponds to the `sale_date` column.
@JsonKey(name: 'sale_date') DateTime get saleDate;/// Corresponds to the `total_amount` column.
@JsonKey(name: 'total_amount') double get totalAmount;/// Corresponds to the `due_amount` column.
@JsonKey(name: 'due_amount') double get dueAmount;/// Corresponds to the `order_type` column.
@JsonKey(name: 'order_type') String? get orderType;/// Corresponds to the `order_mode` column.
@JsonKey(name: 'order_mode') bool get orderMode;/// Corresponds to the `status` column.
 String? get status;/// Corresponds to the `created_at` column.
@JsonKey(name: 'created_at') DateTime get createdAt;/// Corresponds to the `transaction_status` column.
@JsonKey(name: 'transaction_status') TransactionStatus get transactionStatus;/// Corresponds to the `customer_id` column.
@JsonKey(name: 'customer_id') String? get customerId;/// Corresponds to the `customer_name` column.
@JsonKey(name: 'customer_name') String? get customerName;/// Corresponds to the `customer_phone` column.
@JsonKey(name: 'customer_phone') String? get customerPhone;/// Corresponds to the `table_name` column.
@JsonKey(name: 'table_name') String? get tableName;/// Corresponds to the `payment_type` column.
@JsonKey(name: 'payment_type') String? get paymentType;/// Corresponds to the `platform` column.
@JsonKey(name: 'platform') String? get platform;/// Corresponds to the `ordered_by` column.
@JsonKey(name: 'ordered_by') String? get orderedBy;
/// Create a copy of MinimalSale
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MinimalSaleCopyWith<MinimalSale> get copyWith => _$MinimalSaleCopyWithImpl<MinimalSale>(this as MinimalSale, _$identity);

  /// Serializes this MinimalSale to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MinimalSale&&(identical(other.saleId, saleId) || other.saleId == saleId)&&(identical(other.businessId, businessId) || other.businessId == businessId)&&(identical(other.saleInvoice, saleInvoice) || other.saleInvoice == saleInvoice)&&(identical(other.saleDate, saleDate) || other.saleDate == saleDate)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.dueAmount, dueAmount) || other.dueAmount == dueAmount)&&(identical(other.orderType, orderType) || other.orderType == orderType)&&(identical(other.orderMode, orderMode) || other.orderMode == orderMode)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.transactionStatus, transactionStatus) || other.transactionStatus == transactionStatus)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerPhone, customerPhone) || other.customerPhone == customerPhone)&&(identical(other.tableName, tableName) || other.tableName == tableName)&&(identical(other.paymentType, paymentType) || other.paymentType == paymentType)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.orderedBy, orderedBy) || other.orderedBy == orderedBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,saleId,businessId,saleInvoice,saleDate,totalAmount,dueAmount,orderType,orderMode,status,createdAt,transactionStatus,customerId,customerName,customerPhone,tableName,paymentType,platform,orderedBy);

@override
String toString() {
  return 'MinimalSale(saleId: $saleId, businessId: $businessId, saleInvoice: $saleInvoice, saleDate: $saleDate, totalAmount: $totalAmount, dueAmount: $dueAmount, orderType: $orderType, orderMode: $orderMode, status: $status, createdAt: $createdAt, transactionStatus: $transactionStatus, customerId: $customerId, customerName: $customerName, customerPhone: $customerPhone, tableName: $tableName, paymentType: $paymentType, platform: $platform, orderedBy: $orderedBy)';
}


}

/// @nodoc
abstract mixin class $MinimalSaleCopyWith<$Res>  {
  factory $MinimalSaleCopyWith(MinimalSale value, $Res Function(MinimalSale) _then) = _$MinimalSaleCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'sale_id') String saleId,@JsonKey(name: 'business_id') String businessId,@JsonKey(name: 'sale_invoice') String saleInvoice,@JsonKey(name: 'sale_date') DateTime saleDate,@JsonKey(name: 'total_amount') double totalAmount,@JsonKey(name: 'due_amount') double dueAmount,@JsonKey(name: 'order_type') String? orderType,@JsonKey(name: 'order_mode') bool orderMode, String? status,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'transaction_status') TransactionStatus transactionStatus,@JsonKey(name: 'customer_id') String? customerId,@JsonKey(name: 'customer_name') String? customerName,@JsonKey(name: 'customer_phone') String? customerPhone,@JsonKey(name: 'table_name') String? tableName,@JsonKey(name: 'payment_type') String? paymentType,@JsonKey(name: 'platform') String? platform,@JsonKey(name: 'ordered_by') String? orderedBy
});




}
/// @nodoc
class _$MinimalSaleCopyWithImpl<$Res>
    implements $MinimalSaleCopyWith<$Res> {
  _$MinimalSaleCopyWithImpl(this._self, this._then);

  final MinimalSale _self;
  final $Res Function(MinimalSale) _then;

/// Create a copy of MinimalSale
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? saleId = null,Object? businessId = null,Object? saleInvoice = null,Object? saleDate = null,Object? totalAmount = null,Object? dueAmount = null,Object? orderType = freezed,Object? orderMode = null,Object? status = freezed,Object? createdAt = null,Object? transactionStatus = null,Object? customerId = freezed,Object? customerName = freezed,Object? customerPhone = freezed,Object? tableName = freezed,Object? paymentType = freezed,Object? platform = freezed,Object? orderedBy = freezed,}) {
  return _then(_self.copyWith(
saleId: null == saleId ? _self.saleId : saleId // ignore: cast_nullable_to_non_nullable
as String,businessId: null == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as String,saleInvoice: null == saleInvoice ? _self.saleInvoice : saleInvoice // ignore: cast_nullable_to_non_nullable
as String,saleDate: null == saleDate ? _self.saleDate : saleDate // ignore: cast_nullable_to_non_nullable
as DateTime,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,dueAmount: null == dueAmount ? _self.dueAmount : dueAmount // ignore: cast_nullable_to_non_nullable
as double,orderType: freezed == orderType ? _self.orderType : orderType // ignore: cast_nullable_to_non_nullable
as String?,orderMode: null == orderMode ? _self.orderMode : orderMode // ignore: cast_nullable_to_non_nullable
as bool,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,transactionStatus: null == transactionStatus ? _self.transactionStatus : transactionStatus // ignore: cast_nullable_to_non_nullable
as TransactionStatus,customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String?,customerName: freezed == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String?,customerPhone: freezed == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String?,tableName: freezed == tableName ? _self.tableName : tableName // ignore: cast_nullable_to_non_nullable
as String?,paymentType: freezed == paymentType ? _self.paymentType : paymentType // ignore: cast_nullable_to_non_nullable
as String?,platform: freezed == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as String?,orderedBy: freezed == orderedBy ? _self.orderedBy : orderedBy // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MinimalSale].
extension MinimalSalePatterns on MinimalSale {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MinimalSale value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MinimalSale() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MinimalSale value)  $default,){
final _that = this;
switch (_that) {
case _MinimalSale():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MinimalSale value)?  $default,){
final _that = this;
switch (_that) {
case _MinimalSale() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'sale_id')  String saleId, @JsonKey(name: 'business_id')  String businessId, @JsonKey(name: 'sale_invoice')  String saleInvoice, @JsonKey(name: 'sale_date')  DateTime saleDate, @JsonKey(name: 'total_amount')  double totalAmount, @JsonKey(name: 'due_amount')  double dueAmount, @JsonKey(name: 'order_type')  String? orderType, @JsonKey(name: 'order_mode')  bool orderMode,  String? status, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'transaction_status')  TransactionStatus transactionStatus, @JsonKey(name: 'customer_id')  String? customerId, @JsonKey(name: 'customer_name')  String? customerName, @JsonKey(name: 'customer_phone')  String? customerPhone, @JsonKey(name: 'table_name')  String? tableName, @JsonKey(name: 'payment_type')  String? paymentType, @JsonKey(name: 'platform')  String? platform, @JsonKey(name: 'ordered_by')  String? orderedBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MinimalSale() when $default != null:
return $default(_that.saleId,_that.businessId,_that.saleInvoice,_that.saleDate,_that.totalAmount,_that.dueAmount,_that.orderType,_that.orderMode,_that.status,_that.createdAt,_that.transactionStatus,_that.customerId,_that.customerName,_that.customerPhone,_that.tableName,_that.paymentType,_that.platform,_that.orderedBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'sale_id')  String saleId, @JsonKey(name: 'business_id')  String businessId, @JsonKey(name: 'sale_invoice')  String saleInvoice, @JsonKey(name: 'sale_date')  DateTime saleDate, @JsonKey(name: 'total_amount')  double totalAmount, @JsonKey(name: 'due_amount')  double dueAmount, @JsonKey(name: 'order_type')  String? orderType, @JsonKey(name: 'order_mode')  bool orderMode,  String? status, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'transaction_status')  TransactionStatus transactionStatus, @JsonKey(name: 'customer_id')  String? customerId, @JsonKey(name: 'customer_name')  String? customerName, @JsonKey(name: 'customer_phone')  String? customerPhone, @JsonKey(name: 'table_name')  String? tableName, @JsonKey(name: 'payment_type')  String? paymentType, @JsonKey(name: 'platform')  String? platform, @JsonKey(name: 'ordered_by')  String? orderedBy)  $default,) {final _that = this;
switch (_that) {
case _MinimalSale():
return $default(_that.saleId,_that.businessId,_that.saleInvoice,_that.saleDate,_that.totalAmount,_that.dueAmount,_that.orderType,_that.orderMode,_that.status,_that.createdAt,_that.transactionStatus,_that.customerId,_that.customerName,_that.customerPhone,_that.tableName,_that.paymentType,_that.platform,_that.orderedBy);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'sale_id')  String saleId, @JsonKey(name: 'business_id')  String businessId, @JsonKey(name: 'sale_invoice')  String saleInvoice, @JsonKey(name: 'sale_date')  DateTime saleDate, @JsonKey(name: 'total_amount')  double totalAmount, @JsonKey(name: 'due_amount')  double dueAmount, @JsonKey(name: 'order_type')  String? orderType, @JsonKey(name: 'order_mode')  bool orderMode,  String? status, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'transaction_status')  TransactionStatus transactionStatus, @JsonKey(name: 'customer_id')  String? customerId, @JsonKey(name: 'customer_name')  String? customerName, @JsonKey(name: 'customer_phone')  String? customerPhone, @JsonKey(name: 'table_name')  String? tableName, @JsonKey(name: 'payment_type')  String? paymentType, @JsonKey(name: 'platform')  String? platform, @JsonKey(name: 'ordered_by')  String? orderedBy)?  $default,) {final _that = this;
switch (_that) {
case _MinimalSale() when $default != null:
return $default(_that.saleId,_that.businessId,_that.saleInvoice,_that.saleDate,_that.totalAmount,_that.dueAmount,_that.orderType,_that.orderMode,_that.status,_that.createdAt,_that.transactionStatus,_that.customerId,_that.customerName,_that.customerPhone,_that.tableName,_that.paymentType,_that.platform,_that.orderedBy);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _MinimalSale implements MinimalSale {
  const _MinimalSale({@JsonKey(name: 'sale_id') required this.saleId, @JsonKey(name: 'business_id') required this.businessId, @JsonKey(name: 'sale_invoice') required this.saleInvoice, @JsonKey(name: 'sale_date') required this.saleDate, @JsonKey(name: 'total_amount') required this.totalAmount, @JsonKey(name: 'due_amount') required this.dueAmount, @JsonKey(name: 'order_type') required this.orderType, @JsonKey(name: 'order_mode') required this.orderMode, required this.status, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'transaction_status') required this.transactionStatus, @JsonKey(name: 'customer_id') this.customerId, @JsonKey(name: 'customer_name') this.customerName, @JsonKey(name: 'customer_phone') this.customerPhone, @JsonKey(name: 'table_name') this.tableName, @JsonKey(name: 'payment_type') this.paymentType, @JsonKey(name: 'platform') this.platform, @JsonKey(name: 'ordered_by') this.orderedBy});
  factory _MinimalSale.fromJson(Map<String, dynamic> json) => _$MinimalSaleFromJson(json);

/// Corresponds to the `sale_id` column.
@override@JsonKey(name: 'sale_id') final  String saleId;
/// Corresponds to the `business_id` column.
@override@JsonKey(name: 'business_id') final  String businessId;
/// Corresponds to the `sale_invoice` column.
@override@JsonKey(name: 'sale_invoice') final  String saleInvoice;
/// Corresponds to the `sale_date` column.
@override@JsonKey(name: 'sale_date') final  DateTime saleDate;
/// Corresponds to the `total_amount` column.
@override@JsonKey(name: 'total_amount') final  double totalAmount;
/// Corresponds to the `due_amount` column.
@override@JsonKey(name: 'due_amount') final  double dueAmount;
/// Corresponds to the `order_type` column.
@override@JsonKey(name: 'order_type') final  String? orderType;
/// Corresponds to the `order_mode` column.
@override@JsonKey(name: 'order_mode') final  bool orderMode;
/// Corresponds to the `status` column.
@override final  String? status;
/// Corresponds to the `created_at` column.
@override@JsonKey(name: 'created_at') final  DateTime createdAt;
/// Corresponds to the `transaction_status` column.
@override@JsonKey(name: 'transaction_status') final  TransactionStatus transactionStatus;
/// Corresponds to the `customer_id` column.
@override@JsonKey(name: 'customer_id') final  String? customerId;
/// Corresponds to the `customer_name` column.
@override@JsonKey(name: 'customer_name') final  String? customerName;
/// Corresponds to the `customer_phone` column.
@override@JsonKey(name: 'customer_phone') final  String? customerPhone;
/// Corresponds to the `table_name` column.
@override@JsonKey(name: 'table_name') final  String? tableName;
/// Corresponds to the `payment_type` column.
@override@JsonKey(name: 'payment_type') final  String? paymentType;
/// Corresponds to the `platform` column.
@override@JsonKey(name: 'platform') final  String? platform;
/// Corresponds to the `ordered_by` column.
@override@JsonKey(name: 'ordered_by') final  String? orderedBy;

/// Create a copy of MinimalSale
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MinimalSaleCopyWith<_MinimalSale> get copyWith => __$MinimalSaleCopyWithImpl<_MinimalSale>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MinimalSaleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MinimalSale&&(identical(other.saleId, saleId) || other.saleId == saleId)&&(identical(other.businessId, businessId) || other.businessId == businessId)&&(identical(other.saleInvoice, saleInvoice) || other.saleInvoice == saleInvoice)&&(identical(other.saleDate, saleDate) || other.saleDate == saleDate)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.dueAmount, dueAmount) || other.dueAmount == dueAmount)&&(identical(other.orderType, orderType) || other.orderType == orderType)&&(identical(other.orderMode, orderMode) || other.orderMode == orderMode)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.transactionStatus, transactionStatus) || other.transactionStatus == transactionStatus)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerPhone, customerPhone) || other.customerPhone == customerPhone)&&(identical(other.tableName, tableName) || other.tableName == tableName)&&(identical(other.paymentType, paymentType) || other.paymentType == paymentType)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.orderedBy, orderedBy) || other.orderedBy == orderedBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,saleId,businessId,saleInvoice,saleDate,totalAmount,dueAmount,orderType,orderMode,status,createdAt,transactionStatus,customerId,customerName,customerPhone,tableName,paymentType,platform,orderedBy);

@override
String toString() {
  return 'MinimalSale(saleId: $saleId, businessId: $businessId, saleInvoice: $saleInvoice, saleDate: $saleDate, totalAmount: $totalAmount, dueAmount: $dueAmount, orderType: $orderType, orderMode: $orderMode, status: $status, createdAt: $createdAt, transactionStatus: $transactionStatus, customerId: $customerId, customerName: $customerName, customerPhone: $customerPhone, tableName: $tableName, paymentType: $paymentType, platform: $platform, orderedBy: $orderedBy)';
}


}

/// @nodoc
abstract mixin class _$MinimalSaleCopyWith<$Res> implements $MinimalSaleCopyWith<$Res> {
  factory _$MinimalSaleCopyWith(_MinimalSale value, $Res Function(_MinimalSale) _then) = __$MinimalSaleCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'sale_id') String saleId,@JsonKey(name: 'business_id') String businessId,@JsonKey(name: 'sale_invoice') String saleInvoice,@JsonKey(name: 'sale_date') DateTime saleDate,@JsonKey(name: 'total_amount') double totalAmount,@JsonKey(name: 'due_amount') double dueAmount,@JsonKey(name: 'order_type') String? orderType,@JsonKey(name: 'order_mode') bool orderMode, String? status,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'transaction_status') TransactionStatus transactionStatus,@JsonKey(name: 'customer_id') String? customerId,@JsonKey(name: 'customer_name') String? customerName,@JsonKey(name: 'customer_phone') String? customerPhone,@JsonKey(name: 'table_name') String? tableName,@JsonKey(name: 'payment_type') String? paymentType,@JsonKey(name: 'platform') String? platform,@JsonKey(name: 'ordered_by') String? orderedBy
});




}
/// @nodoc
class __$MinimalSaleCopyWithImpl<$Res>
    implements _$MinimalSaleCopyWith<$Res> {
  __$MinimalSaleCopyWithImpl(this._self, this._then);

  final _MinimalSale _self;
  final $Res Function(_MinimalSale) _then;

/// Create a copy of MinimalSale
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? saleId = null,Object? businessId = null,Object? saleInvoice = null,Object? saleDate = null,Object? totalAmount = null,Object? dueAmount = null,Object? orderType = freezed,Object? orderMode = null,Object? status = freezed,Object? createdAt = null,Object? transactionStatus = null,Object? customerId = freezed,Object? customerName = freezed,Object? customerPhone = freezed,Object? tableName = freezed,Object? paymentType = freezed,Object? platform = freezed,Object? orderedBy = freezed,}) {
  return _then(_MinimalSale(
saleId: null == saleId ? _self.saleId : saleId // ignore: cast_nullable_to_non_nullable
as String,businessId: null == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as String,saleInvoice: null == saleInvoice ? _self.saleInvoice : saleInvoice // ignore: cast_nullable_to_non_nullable
as String,saleDate: null == saleDate ? _self.saleDate : saleDate // ignore: cast_nullable_to_non_nullable
as DateTime,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,dueAmount: null == dueAmount ? _self.dueAmount : dueAmount // ignore: cast_nullable_to_non_nullable
as double,orderType: freezed == orderType ? _self.orderType : orderType // ignore: cast_nullable_to_non_nullable
as String?,orderMode: null == orderMode ? _self.orderMode : orderMode // ignore: cast_nullable_to_non_nullable
as bool,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,transactionStatus: null == transactionStatus ? _self.transactionStatus : transactionStatus // ignore: cast_nullable_to_non_nullable
as TransactionStatus,customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String?,customerName: freezed == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String?,customerPhone: freezed == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String?,tableName: freezed == tableName ? _self.tableName : tableName // ignore: cast_nullable_to_non_nullable
as String?,paymentType: freezed == paymentType ? _self.paymentType : paymentType // ignore: cast_nullable_to_non_nullable
as String?,platform: freezed == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as String?,orderedBy: freezed == orderedBy ? _self.orderedBy : orderedBy // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
