// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kds_sale_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$KdsSale {

@JsonKey(name: 'sale_id', fromJson: _stringFromJson) String get saleId;@JsonKey(name: 'business_id', fromJson: _stringFromJson) String get businessId;@JsonKey(name: 'sale_invoice', fromJson: _stringFromJson) String get saleInvoice;@JsonKey(name: 'sale_date', fromJson: _dateTimeFromJson) DateTime get saleDate;@JsonKey(name: 'order_type', fromJson: _nullableStringFromJson) String? get orderType;@JsonKey(name: 'order_mode', fromJson: _boolFromJson) bool get orderMode;@JsonKey(name: 'status', fromJson: _nullableStringFromJson) String? get status;@JsonKey(name: 'created_at', fromJson: _dateTimeFromJson) DateTime get createdAt;@JsonKey(name: 'customer_id', fromJson: _nullableStringFromJson) String? get customerId;@JsonKey(name: 'customer_name', fromJson: _nullableStringFromJson) String? get customerName;@JsonKey(name: 'customer_phone', fromJson: _nullableStringFromJson) String? get customerPhone;@JsonKey(name: 'table_name', fromJson: _nullableStringFromJson) String? get tableName;@JsonKey(name: 'platform', fromJson: _nullableStringFromJson) String? get platform;@JsonKey(name: 'ordered_by', fromJson: _nullableStringFromJson) String? get orderedBy;@JsonKey(name: 'item_history', fromJson: _itemHistoryFromJson, toJson: _itemHistoryToJson) List<KdsOrderHistoryEntry> get itemHistory;@JsonKey(name: 'sale_items_list', fromJson: _kdsItemsFromJson, toJson: _kdsItemsToJson) List<KdsOrderItem> get saleItemsList;
/// Create a copy of KdsSale
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KdsSaleCopyWith<KdsSale> get copyWith => _$KdsSaleCopyWithImpl<KdsSale>(this as KdsSale, _$identity);

  /// Serializes this KdsSale to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KdsSale&&(identical(other.saleId, saleId) || other.saleId == saleId)&&(identical(other.businessId, businessId) || other.businessId == businessId)&&(identical(other.saleInvoice, saleInvoice) || other.saleInvoice == saleInvoice)&&(identical(other.saleDate, saleDate) || other.saleDate == saleDate)&&(identical(other.orderType, orderType) || other.orderType == orderType)&&(identical(other.orderMode, orderMode) || other.orderMode == orderMode)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerPhone, customerPhone) || other.customerPhone == customerPhone)&&(identical(other.tableName, tableName) || other.tableName == tableName)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.orderedBy, orderedBy) || other.orderedBy == orderedBy)&&const DeepCollectionEquality().equals(other.itemHistory, itemHistory)&&const DeepCollectionEquality().equals(other.saleItemsList, saleItemsList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,saleId,businessId,saleInvoice,saleDate,orderType,orderMode,status,createdAt,customerId,customerName,customerPhone,tableName,platform,orderedBy,const DeepCollectionEquality().hash(itemHistory),const DeepCollectionEquality().hash(saleItemsList));

@override
String toString() {
  return 'KdsSale(saleId: $saleId, businessId: $businessId, saleInvoice: $saleInvoice, saleDate: $saleDate, orderType: $orderType, orderMode: $orderMode, status: $status, createdAt: $createdAt, customerId: $customerId, customerName: $customerName, customerPhone: $customerPhone, tableName: $tableName, platform: $platform, orderedBy: $orderedBy, itemHistory: $itemHistory, saleItemsList: $saleItemsList)';
}


}

/// @nodoc
abstract mixin class $KdsSaleCopyWith<$Res>  {
  factory $KdsSaleCopyWith(KdsSale value, $Res Function(KdsSale) _then) = _$KdsSaleCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'sale_id', fromJson: _stringFromJson) String saleId,@JsonKey(name: 'business_id', fromJson: _stringFromJson) String businessId,@JsonKey(name: 'sale_invoice', fromJson: _stringFromJson) String saleInvoice,@JsonKey(name: 'sale_date', fromJson: _dateTimeFromJson) DateTime saleDate,@JsonKey(name: 'order_type', fromJson: _nullableStringFromJson) String? orderType,@JsonKey(name: 'order_mode', fromJson: _boolFromJson) bool orderMode,@JsonKey(name: 'status', fromJson: _nullableStringFromJson) String? status,@JsonKey(name: 'created_at', fromJson: _dateTimeFromJson) DateTime createdAt,@JsonKey(name: 'customer_id', fromJson: _nullableStringFromJson) String? customerId,@JsonKey(name: 'customer_name', fromJson: _nullableStringFromJson) String? customerName,@JsonKey(name: 'customer_phone', fromJson: _nullableStringFromJson) String? customerPhone,@JsonKey(name: 'table_name', fromJson: _nullableStringFromJson) String? tableName,@JsonKey(name: 'platform', fromJson: _nullableStringFromJson) String? platform,@JsonKey(name: 'ordered_by', fromJson: _nullableStringFromJson) String? orderedBy,@JsonKey(name: 'item_history', fromJson: _itemHistoryFromJson, toJson: _itemHistoryToJson) List<KdsOrderHistoryEntry> itemHistory,@JsonKey(name: 'sale_items_list', fromJson: _kdsItemsFromJson, toJson: _kdsItemsToJson) List<KdsOrderItem> saleItemsList
});




}
/// @nodoc
class _$KdsSaleCopyWithImpl<$Res>
    implements $KdsSaleCopyWith<$Res> {
  _$KdsSaleCopyWithImpl(this._self, this._then);

  final KdsSale _self;
  final $Res Function(KdsSale) _then;

/// Create a copy of KdsSale
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? saleId = null,Object? businessId = null,Object? saleInvoice = null,Object? saleDate = null,Object? orderType = freezed,Object? orderMode = null,Object? status = freezed,Object? createdAt = null,Object? customerId = freezed,Object? customerName = freezed,Object? customerPhone = freezed,Object? tableName = freezed,Object? platform = freezed,Object? orderedBy = freezed,Object? itemHistory = null,Object? saleItemsList = null,}) {
  return _then(_self.copyWith(
saleId: null == saleId ? _self.saleId : saleId // ignore: cast_nullable_to_non_nullable
as String,businessId: null == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as String,saleInvoice: null == saleInvoice ? _self.saleInvoice : saleInvoice // ignore: cast_nullable_to_non_nullable
as String,saleDate: null == saleDate ? _self.saleDate : saleDate // ignore: cast_nullable_to_non_nullable
as DateTime,orderType: freezed == orderType ? _self.orderType : orderType // ignore: cast_nullable_to_non_nullable
as String?,orderMode: null == orderMode ? _self.orderMode : orderMode // ignore: cast_nullable_to_non_nullable
as bool,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String?,customerName: freezed == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String?,customerPhone: freezed == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String?,tableName: freezed == tableName ? _self.tableName : tableName // ignore: cast_nullable_to_non_nullable
as String?,platform: freezed == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as String?,orderedBy: freezed == orderedBy ? _self.orderedBy : orderedBy // ignore: cast_nullable_to_non_nullable
as String?,itemHistory: null == itemHistory ? _self.itemHistory : itemHistory // ignore: cast_nullable_to_non_nullable
as List<KdsOrderHistoryEntry>,saleItemsList: null == saleItemsList ? _self.saleItemsList : saleItemsList // ignore: cast_nullable_to_non_nullable
as List<KdsOrderItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [KdsSale].
extension KdsSalePatterns on KdsSale {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KdsSale value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KdsSale() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KdsSale value)  $default,){
final _that = this;
switch (_that) {
case _KdsSale():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KdsSale value)?  $default,){
final _that = this;
switch (_that) {
case _KdsSale() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'sale_id', fromJson: _stringFromJson)  String saleId, @JsonKey(name: 'business_id', fromJson: _stringFromJson)  String businessId, @JsonKey(name: 'sale_invoice', fromJson: _stringFromJson)  String saleInvoice, @JsonKey(name: 'sale_date', fromJson: _dateTimeFromJson)  DateTime saleDate, @JsonKey(name: 'order_type', fromJson: _nullableStringFromJson)  String? orderType, @JsonKey(name: 'order_mode', fromJson: _boolFromJson)  bool orderMode, @JsonKey(name: 'status', fromJson: _nullableStringFromJson)  String? status, @JsonKey(name: 'created_at', fromJson: _dateTimeFromJson)  DateTime createdAt, @JsonKey(name: 'customer_id', fromJson: _nullableStringFromJson)  String? customerId, @JsonKey(name: 'customer_name', fromJson: _nullableStringFromJson)  String? customerName, @JsonKey(name: 'customer_phone', fromJson: _nullableStringFromJson)  String? customerPhone, @JsonKey(name: 'table_name', fromJson: _nullableStringFromJson)  String? tableName, @JsonKey(name: 'platform', fromJson: _nullableStringFromJson)  String? platform, @JsonKey(name: 'ordered_by', fromJson: _nullableStringFromJson)  String? orderedBy, @JsonKey(name: 'item_history', fromJson: _itemHistoryFromJson, toJson: _itemHistoryToJson)  List<KdsOrderHistoryEntry> itemHistory, @JsonKey(name: 'sale_items_list', fromJson: _kdsItemsFromJson, toJson: _kdsItemsToJson)  List<KdsOrderItem> saleItemsList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KdsSale() when $default != null:
return $default(_that.saleId,_that.businessId,_that.saleInvoice,_that.saleDate,_that.orderType,_that.orderMode,_that.status,_that.createdAt,_that.customerId,_that.customerName,_that.customerPhone,_that.tableName,_that.platform,_that.orderedBy,_that.itemHistory,_that.saleItemsList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'sale_id', fromJson: _stringFromJson)  String saleId, @JsonKey(name: 'business_id', fromJson: _stringFromJson)  String businessId, @JsonKey(name: 'sale_invoice', fromJson: _stringFromJson)  String saleInvoice, @JsonKey(name: 'sale_date', fromJson: _dateTimeFromJson)  DateTime saleDate, @JsonKey(name: 'order_type', fromJson: _nullableStringFromJson)  String? orderType, @JsonKey(name: 'order_mode', fromJson: _boolFromJson)  bool orderMode, @JsonKey(name: 'status', fromJson: _nullableStringFromJson)  String? status, @JsonKey(name: 'created_at', fromJson: _dateTimeFromJson)  DateTime createdAt, @JsonKey(name: 'customer_id', fromJson: _nullableStringFromJson)  String? customerId, @JsonKey(name: 'customer_name', fromJson: _nullableStringFromJson)  String? customerName, @JsonKey(name: 'customer_phone', fromJson: _nullableStringFromJson)  String? customerPhone, @JsonKey(name: 'table_name', fromJson: _nullableStringFromJson)  String? tableName, @JsonKey(name: 'platform', fromJson: _nullableStringFromJson)  String? platform, @JsonKey(name: 'ordered_by', fromJson: _nullableStringFromJson)  String? orderedBy, @JsonKey(name: 'item_history', fromJson: _itemHistoryFromJson, toJson: _itemHistoryToJson)  List<KdsOrderHistoryEntry> itemHistory, @JsonKey(name: 'sale_items_list', fromJson: _kdsItemsFromJson, toJson: _kdsItemsToJson)  List<KdsOrderItem> saleItemsList)  $default,) {final _that = this;
switch (_that) {
case _KdsSale():
return $default(_that.saleId,_that.businessId,_that.saleInvoice,_that.saleDate,_that.orderType,_that.orderMode,_that.status,_that.createdAt,_that.customerId,_that.customerName,_that.customerPhone,_that.tableName,_that.platform,_that.orderedBy,_that.itemHistory,_that.saleItemsList);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'sale_id', fromJson: _stringFromJson)  String saleId, @JsonKey(name: 'business_id', fromJson: _stringFromJson)  String businessId, @JsonKey(name: 'sale_invoice', fromJson: _stringFromJson)  String saleInvoice, @JsonKey(name: 'sale_date', fromJson: _dateTimeFromJson)  DateTime saleDate, @JsonKey(name: 'order_type', fromJson: _nullableStringFromJson)  String? orderType, @JsonKey(name: 'order_mode', fromJson: _boolFromJson)  bool orderMode, @JsonKey(name: 'status', fromJson: _nullableStringFromJson)  String? status, @JsonKey(name: 'created_at', fromJson: _dateTimeFromJson)  DateTime createdAt, @JsonKey(name: 'customer_id', fromJson: _nullableStringFromJson)  String? customerId, @JsonKey(name: 'customer_name', fromJson: _nullableStringFromJson)  String? customerName, @JsonKey(name: 'customer_phone', fromJson: _nullableStringFromJson)  String? customerPhone, @JsonKey(name: 'table_name', fromJson: _nullableStringFromJson)  String? tableName, @JsonKey(name: 'platform', fromJson: _nullableStringFromJson)  String? platform, @JsonKey(name: 'ordered_by', fromJson: _nullableStringFromJson)  String? orderedBy, @JsonKey(name: 'item_history', fromJson: _itemHistoryFromJson, toJson: _itemHistoryToJson)  List<KdsOrderHistoryEntry> itemHistory, @JsonKey(name: 'sale_items_list', fromJson: _kdsItemsFromJson, toJson: _kdsItemsToJson)  List<KdsOrderItem> saleItemsList)?  $default,) {final _that = this;
switch (_that) {
case _KdsSale() when $default != null:
return $default(_that.saleId,_that.businessId,_that.saleInvoice,_that.saleDate,_that.orderType,_that.orderMode,_that.status,_that.createdAt,_that.customerId,_that.customerName,_that.customerPhone,_that.tableName,_that.platform,_that.orderedBy,_that.itemHistory,_that.saleItemsList);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KdsSale implements KdsSale {
  const _KdsSale({@JsonKey(name: 'sale_id', fromJson: _stringFromJson) required this.saleId, @JsonKey(name: 'business_id', fromJson: _stringFromJson) required this.businessId, @JsonKey(name: 'sale_invoice', fromJson: _stringFromJson) required this.saleInvoice, @JsonKey(name: 'sale_date', fromJson: _dateTimeFromJson) required this.saleDate, @JsonKey(name: 'order_type', fromJson: _nullableStringFromJson) this.orderType, @JsonKey(name: 'order_mode', fromJson: _boolFromJson) this.orderMode = false, @JsonKey(name: 'status', fromJson: _nullableStringFromJson) this.status, @JsonKey(name: 'created_at', fromJson: _dateTimeFromJson) required this.createdAt, @JsonKey(name: 'customer_id', fromJson: _nullableStringFromJson) this.customerId, @JsonKey(name: 'customer_name', fromJson: _nullableStringFromJson) this.customerName, @JsonKey(name: 'customer_phone', fromJson: _nullableStringFromJson) this.customerPhone, @JsonKey(name: 'table_name', fromJson: _nullableStringFromJson) this.tableName, @JsonKey(name: 'platform', fromJson: _nullableStringFromJson) this.platform, @JsonKey(name: 'ordered_by', fromJson: _nullableStringFromJson) this.orderedBy, @JsonKey(name: 'item_history', fromJson: _itemHistoryFromJson, toJson: _itemHistoryToJson) final  List<KdsOrderHistoryEntry> itemHistory = const <KdsOrderHistoryEntry>[], @JsonKey(name: 'sale_items_list', fromJson: _kdsItemsFromJson, toJson: _kdsItemsToJson) final  List<KdsOrderItem> saleItemsList = const <KdsOrderItem>[]}): _itemHistory = itemHistory,_saleItemsList = saleItemsList;
  factory _KdsSale.fromJson(Map<String, dynamic> json) => _$KdsSaleFromJson(json);

@override@JsonKey(name: 'sale_id', fromJson: _stringFromJson) final  String saleId;
@override@JsonKey(name: 'business_id', fromJson: _stringFromJson) final  String businessId;
@override@JsonKey(name: 'sale_invoice', fromJson: _stringFromJson) final  String saleInvoice;
@override@JsonKey(name: 'sale_date', fromJson: _dateTimeFromJson) final  DateTime saleDate;
@override@JsonKey(name: 'order_type', fromJson: _nullableStringFromJson) final  String? orderType;
@override@JsonKey(name: 'order_mode', fromJson: _boolFromJson) final  bool orderMode;
@override@JsonKey(name: 'status', fromJson: _nullableStringFromJson) final  String? status;
@override@JsonKey(name: 'created_at', fromJson: _dateTimeFromJson) final  DateTime createdAt;
@override@JsonKey(name: 'customer_id', fromJson: _nullableStringFromJson) final  String? customerId;
@override@JsonKey(name: 'customer_name', fromJson: _nullableStringFromJson) final  String? customerName;
@override@JsonKey(name: 'customer_phone', fromJson: _nullableStringFromJson) final  String? customerPhone;
@override@JsonKey(name: 'table_name', fromJson: _nullableStringFromJson) final  String? tableName;
@override@JsonKey(name: 'platform', fromJson: _nullableStringFromJson) final  String? platform;
@override@JsonKey(name: 'ordered_by', fromJson: _nullableStringFromJson) final  String? orderedBy;
 final  List<KdsOrderHistoryEntry> _itemHistory;
@override@JsonKey(name: 'item_history', fromJson: _itemHistoryFromJson, toJson: _itemHistoryToJson) List<KdsOrderHistoryEntry> get itemHistory {
  if (_itemHistory is EqualUnmodifiableListView) return _itemHistory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_itemHistory);
}

 final  List<KdsOrderItem> _saleItemsList;
@override@JsonKey(name: 'sale_items_list', fromJson: _kdsItemsFromJson, toJson: _kdsItemsToJson) List<KdsOrderItem> get saleItemsList {
  if (_saleItemsList is EqualUnmodifiableListView) return _saleItemsList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_saleItemsList);
}


/// Create a copy of KdsSale
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KdsSaleCopyWith<_KdsSale> get copyWith => __$KdsSaleCopyWithImpl<_KdsSale>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KdsSaleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KdsSale&&(identical(other.saleId, saleId) || other.saleId == saleId)&&(identical(other.businessId, businessId) || other.businessId == businessId)&&(identical(other.saleInvoice, saleInvoice) || other.saleInvoice == saleInvoice)&&(identical(other.saleDate, saleDate) || other.saleDate == saleDate)&&(identical(other.orderType, orderType) || other.orderType == orderType)&&(identical(other.orderMode, orderMode) || other.orderMode == orderMode)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerPhone, customerPhone) || other.customerPhone == customerPhone)&&(identical(other.tableName, tableName) || other.tableName == tableName)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.orderedBy, orderedBy) || other.orderedBy == orderedBy)&&const DeepCollectionEquality().equals(other._itemHistory, _itemHistory)&&const DeepCollectionEquality().equals(other._saleItemsList, _saleItemsList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,saleId,businessId,saleInvoice,saleDate,orderType,orderMode,status,createdAt,customerId,customerName,customerPhone,tableName,platform,orderedBy,const DeepCollectionEquality().hash(_itemHistory),const DeepCollectionEquality().hash(_saleItemsList));

@override
String toString() {
  return 'KdsSale(saleId: $saleId, businessId: $businessId, saleInvoice: $saleInvoice, saleDate: $saleDate, orderType: $orderType, orderMode: $orderMode, status: $status, createdAt: $createdAt, customerId: $customerId, customerName: $customerName, customerPhone: $customerPhone, tableName: $tableName, platform: $platform, orderedBy: $orderedBy, itemHistory: $itemHistory, saleItemsList: $saleItemsList)';
}


}

/// @nodoc
abstract mixin class _$KdsSaleCopyWith<$Res> implements $KdsSaleCopyWith<$Res> {
  factory _$KdsSaleCopyWith(_KdsSale value, $Res Function(_KdsSale) _then) = __$KdsSaleCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'sale_id', fromJson: _stringFromJson) String saleId,@JsonKey(name: 'business_id', fromJson: _stringFromJson) String businessId,@JsonKey(name: 'sale_invoice', fromJson: _stringFromJson) String saleInvoice,@JsonKey(name: 'sale_date', fromJson: _dateTimeFromJson) DateTime saleDate,@JsonKey(name: 'order_type', fromJson: _nullableStringFromJson) String? orderType,@JsonKey(name: 'order_mode', fromJson: _boolFromJson) bool orderMode,@JsonKey(name: 'status', fromJson: _nullableStringFromJson) String? status,@JsonKey(name: 'created_at', fromJson: _dateTimeFromJson) DateTime createdAt,@JsonKey(name: 'customer_id', fromJson: _nullableStringFromJson) String? customerId,@JsonKey(name: 'customer_name', fromJson: _nullableStringFromJson) String? customerName,@JsonKey(name: 'customer_phone', fromJson: _nullableStringFromJson) String? customerPhone,@JsonKey(name: 'table_name', fromJson: _nullableStringFromJson) String? tableName,@JsonKey(name: 'platform', fromJson: _nullableStringFromJson) String? platform,@JsonKey(name: 'ordered_by', fromJson: _nullableStringFromJson) String? orderedBy,@JsonKey(name: 'item_history', fromJson: _itemHistoryFromJson, toJson: _itemHistoryToJson) List<KdsOrderHistoryEntry> itemHistory,@JsonKey(name: 'sale_items_list', fromJson: _kdsItemsFromJson, toJson: _kdsItemsToJson) List<KdsOrderItem> saleItemsList
});




}
/// @nodoc
class __$KdsSaleCopyWithImpl<$Res>
    implements _$KdsSaleCopyWith<$Res> {
  __$KdsSaleCopyWithImpl(this._self, this._then);

  final _KdsSale _self;
  final $Res Function(_KdsSale) _then;

/// Create a copy of KdsSale
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? saleId = null,Object? businessId = null,Object? saleInvoice = null,Object? saleDate = null,Object? orderType = freezed,Object? orderMode = null,Object? status = freezed,Object? createdAt = null,Object? customerId = freezed,Object? customerName = freezed,Object? customerPhone = freezed,Object? tableName = freezed,Object? platform = freezed,Object? orderedBy = freezed,Object? itemHistory = null,Object? saleItemsList = null,}) {
  return _then(_KdsSale(
saleId: null == saleId ? _self.saleId : saleId // ignore: cast_nullable_to_non_nullable
as String,businessId: null == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as String,saleInvoice: null == saleInvoice ? _self.saleInvoice : saleInvoice // ignore: cast_nullable_to_non_nullable
as String,saleDate: null == saleDate ? _self.saleDate : saleDate // ignore: cast_nullable_to_non_nullable
as DateTime,orderType: freezed == orderType ? _self.orderType : orderType // ignore: cast_nullable_to_non_nullable
as String?,orderMode: null == orderMode ? _self.orderMode : orderMode // ignore: cast_nullable_to_non_nullable
as bool,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String?,customerName: freezed == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String?,customerPhone: freezed == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String?,tableName: freezed == tableName ? _self.tableName : tableName // ignore: cast_nullable_to_non_nullable
as String?,platform: freezed == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as String?,orderedBy: freezed == orderedBy ? _self.orderedBy : orderedBy // ignore: cast_nullable_to_non_nullable
as String?,itemHistory: null == itemHistory ? _self._itemHistory : itemHistory // ignore: cast_nullable_to_non_nullable
as List<KdsOrderHistoryEntry>,saleItemsList: null == saleItemsList ? _self._saleItemsList : saleItemsList // ignore: cast_nullable_to_non_nullable
as List<KdsOrderItem>,
  ));
}


}


/// @nodoc
mixin _$KdsOrderHistoryEntry {

@JsonKey(name: 'order_time', fromJson: _nullableDateTimeFromJson) DateTime? get orderTime;@JsonKey(name: 'items', fromJson: _kdsItemsFromJson, toJson: _kdsItemsToJson) List<KdsOrderItem> get items;
/// Create a copy of KdsOrderHistoryEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KdsOrderHistoryEntryCopyWith<KdsOrderHistoryEntry> get copyWith => _$KdsOrderHistoryEntryCopyWithImpl<KdsOrderHistoryEntry>(this as KdsOrderHistoryEntry, _$identity);

  /// Serializes this KdsOrderHistoryEntry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KdsOrderHistoryEntry&&(identical(other.orderTime, orderTime) || other.orderTime == orderTime)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderTime,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'KdsOrderHistoryEntry(orderTime: $orderTime, items: $items)';
}


}

/// @nodoc
abstract mixin class $KdsOrderHistoryEntryCopyWith<$Res>  {
  factory $KdsOrderHistoryEntryCopyWith(KdsOrderHistoryEntry value, $Res Function(KdsOrderHistoryEntry) _then) = _$KdsOrderHistoryEntryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'order_time', fromJson: _nullableDateTimeFromJson) DateTime? orderTime,@JsonKey(name: 'items', fromJson: _kdsItemsFromJson, toJson: _kdsItemsToJson) List<KdsOrderItem> items
});




}
/// @nodoc
class _$KdsOrderHistoryEntryCopyWithImpl<$Res>
    implements $KdsOrderHistoryEntryCopyWith<$Res> {
  _$KdsOrderHistoryEntryCopyWithImpl(this._self, this._then);

  final KdsOrderHistoryEntry _self;
  final $Res Function(KdsOrderHistoryEntry) _then;

/// Create a copy of KdsOrderHistoryEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderTime = freezed,Object? items = null,}) {
  return _then(_self.copyWith(
orderTime: freezed == orderTime ? _self.orderTime : orderTime // ignore: cast_nullable_to_non_nullable
as DateTime?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<KdsOrderItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [KdsOrderHistoryEntry].
extension KdsOrderHistoryEntryPatterns on KdsOrderHistoryEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KdsOrderHistoryEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KdsOrderHistoryEntry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KdsOrderHistoryEntry value)  $default,){
final _that = this;
switch (_that) {
case _KdsOrderHistoryEntry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KdsOrderHistoryEntry value)?  $default,){
final _that = this;
switch (_that) {
case _KdsOrderHistoryEntry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'order_time', fromJson: _nullableDateTimeFromJson)  DateTime? orderTime, @JsonKey(name: 'items', fromJson: _kdsItemsFromJson, toJson: _kdsItemsToJson)  List<KdsOrderItem> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KdsOrderHistoryEntry() when $default != null:
return $default(_that.orderTime,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'order_time', fromJson: _nullableDateTimeFromJson)  DateTime? orderTime, @JsonKey(name: 'items', fromJson: _kdsItemsFromJson, toJson: _kdsItemsToJson)  List<KdsOrderItem> items)  $default,) {final _that = this;
switch (_that) {
case _KdsOrderHistoryEntry():
return $default(_that.orderTime,_that.items);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'order_time', fromJson: _nullableDateTimeFromJson)  DateTime? orderTime, @JsonKey(name: 'items', fromJson: _kdsItemsFromJson, toJson: _kdsItemsToJson)  List<KdsOrderItem> items)?  $default,) {final _that = this;
switch (_that) {
case _KdsOrderHistoryEntry() when $default != null:
return $default(_that.orderTime,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KdsOrderHistoryEntry implements KdsOrderHistoryEntry {
  const _KdsOrderHistoryEntry({@JsonKey(name: 'order_time', fromJson: _nullableDateTimeFromJson) this.orderTime, @JsonKey(name: 'items', fromJson: _kdsItemsFromJson, toJson: _kdsItemsToJson) final  List<KdsOrderItem> items = const <KdsOrderItem>[]}): _items = items;
  factory _KdsOrderHistoryEntry.fromJson(Map<String, dynamic> json) => _$KdsOrderHistoryEntryFromJson(json);

@override@JsonKey(name: 'order_time', fromJson: _nullableDateTimeFromJson) final  DateTime? orderTime;
 final  List<KdsOrderItem> _items;
@override@JsonKey(name: 'items', fromJson: _kdsItemsFromJson, toJson: _kdsItemsToJson) List<KdsOrderItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of KdsOrderHistoryEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KdsOrderHistoryEntryCopyWith<_KdsOrderHistoryEntry> get copyWith => __$KdsOrderHistoryEntryCopyWithImpl<_KdsOrderHistoryEntry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KdsOrderHistoryEntryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KdsOrderHistoryEntry&&(identical(other.orderTime, orderTime) || other.orderTime == orderTime)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderTime,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'KdsOrderHistoryEntry(orderTime: $orderTime, items: $items)';
}


}

/// @nodoc
abstract mixin class _$KdsOrderHistoryEntryCopyWith<$Res> implements $KdsOrderHistoryEntryCopyWith<$Res> {
  factory _$KdsOrderHistoryEntryCopyWith(_KdsOrderHistoryEntry value, $Res Function(_KdsOrderHistoryEntry) _then) = __$KdsOrderHistoryEntryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'order_time', fromJson: _nullableDateTimeFromJson) DateTime? orderTime,@JsonKey(name: 'items', fromJson: _kdsItemsFromJson, toJson: _kdsItemsToJson) List<KdsOrderItem> items
});




}
/// @nodoc
class __$KdsOrderHistoryEntryCopyWithImpl<$Res>
    implements _$KdsOrderHistoryEntryCopyWith<$Res> {
  __$KdsOrderHistoryEntryCopyWithImpl(this._self, this._then);

  final _KdsOrderHistoryEntry _self;
  final $Res Function(_KdsOrderHistoryEntry) _then;

/// Create a copy of KdsOrderHistoryEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderTime = freezed,Object? items = null,}) {
  return _then(_KdsOrderHistoryEntry(
orderTime: freezed == orderTime ? _self.orderTime : orderTime // ignore: cast_nullable_to_non_nullable
as DateTime?,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<KdsOrderItem>,
  ));
}


}


/// @nodoc
mixin _$KdsOrderItem {

@JsonKey(name: 'item_id', fromJson: _stringFromJson) String get itemId;@JsonKey(name: 'quantity', fromJson: _intFromJson) int get quantity;@JsonKey(name: 'item_name', fromJson: _stringFromJson) String get itemName;@JsonKey(name: 'note', fromJson: _nullableStringFromJson) String? get note;@JsonKey(name: 'item_type', fromJson: _nullableStringFromJson) String? get itemType;@JsonKey(name: 'unit_price', fromJson: _nullableDoubleFromJson) double? get unitPrice;@JsonKey(name: 'category_id', fromJson: _nullableStringFromJson) String? get categoryId;@JsonKey(name: 'subservices', fromJson: _subservicesFromJson, toJson: _subservicesToJson) List<dynamic> get subservices;@JsonKey(name: 'category_name', fromJson: _nullableStringFromJson) String? get categoryName;
/// Create a copy of KdsOrderItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KdsOrderItemCopyWith<KdsOrderItem> get copyWith => _$KdsOrderItemCopyWithImpl<KdsOrderItem>(this as KdsOrderItem, _$identity);

  /// Serializes this KdsOrderItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KdsOrderItem&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.itemName, itemName) || other.itemName == itemName)&&(identical(other.note, note) || other.note == note)&&(identical(other.itemType, itemType) || other.itemType == itemType)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&const DeepCollectionEquality().equals(other.subservices, subservices)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,itemId,quantity,itemName,note,itemType,unitPrice,categoryId,const DeepCollectionEquality().hash(subservices),categoryName);

@override
String toString() {
  return 'KdsOrderItem(itemId: $itemId, quantity: $quantity, itemName: $itemName, note: $note, itemType: $itemType, unitPrice: $unitPrice, categoryId: $categoryId, subservices: $subservices, categoryName: $categoryName)';
}


}

/// @nodoc
abstract mixin class $KdsOrderItemCopyWith<$Res>  {
  factory $KdsOrderItemCopyWith(KdsOrderItem value, $Res Function(KdsOrderItem) _then) = _$KdsOrderItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'item_id', fromJson: _stringFromJson) String itemId,@JsonKey(name: 'quantity', fromJson: _intFromJson) int quantity,@JsonKey(name: 'item_name', fromJson: _stringFromJson) String itemName,@JsonKey(name: 'note', fromJson: _nullableStringFromJson) String? note,@JsonKey(name: 'item_type', fromJson: _nullableStringFromJson) String? itemType,@JsonKey(name: 'unit_price', fromJson: _nullableDoubleFromJson) double? unitPrice,@JsonKey(name: 'category_id', fromJson: _nullableStringFromJson) String? categoryId,@JsonKey(name: 'subservices', fromJson: _subservicesFromJson, toJson: _subservicesToJson) List<dynamic> subservices,@JsonKey(name: 'category_name', fromJson: _nullableStringFromJson) String? categoryName
});




}
/// @nodoc
class _$KdsOrderItemCopyWithImpl<$Res>
    implements $KdsOrderItemCopyWith<$Res> {
  _$KdsOrderItemCopyWithImpl(this._self, this._then);

  final KdsOrderItem _self;
  final $Res Function(KdsOrderItem) _then;

/// Create a copy of KdsOrderItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? itemId = null,Object? quantity = null,Object? itemName = null,Object? note = freezed,Object? itemType = freezed,Object? unitPrice = freezed,Object? categoryId = freezed,Object? subservices = null,Object? categoryName = freezed,}) {
  return _then(_self.copyWith(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,itemName: null == itemName ? _self.itemName : itemName // ignore: cast_nullable_to_non_nullable
as String,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,itemType: freezed == itemType ? _self.itemType : itemType // ignore: cast_nullable_to_non_nullable
as String?,unitPrice: freezed == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as double?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,subservices: null == subservices ? _self.subservices : subservices // ignore: cast_nullable_to_non_nullable
as List<dynamic>,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [KdsOrderItem].
extension KdsOrderItemPatterns on KdsOrderItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KdsOrderItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KdsOrderItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KdsOrderItem value)  $default,){
final _that = this;
switch (_that) {
case _KdsOrderItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KdsOrderItem value)?  $default,){
final _that = this;
switch (_that) {
case _KdsOrderItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'item_id', fromJson: _stringFromJson)  String itemId, @JsonKey(name: 'quantity', fromJson: _intFromJson)  int quantity, @JsonKey(name: 'item_name', fromJson: _stringFromJson)  String itemName, @JsonKey(name: 'note', fromJson: _nullableStringFromJson)  String? note, @JsonKey(name: 'item_type', fromJson: _nullableStringFromJson)  String? itemType, @JsonKey(name: 'unit_price', fromJson: _nullableDoubleFromJson)  double? unitPrice, @JsonKey(name: 'category_id', fromJson: _nullableStringFromJson)  String? categoryId, @JsonKey(name: 'subservices', fromJson: _subservicesFromJson, toJson: _subservicesToJson)  List<dynamic> subservices, @JsonKey(name: 'category_name', fromJson: _nullableStringFromJson)  String? categoryName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KdsOrderItem() when $default != null:
return $default(_that.itemId,_that.quantity,_that.itemName,_that.note,_that.itemType,_that.unitPrice,_that.categoryId,_that.subservices,_that.categoryName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'item_id', fromJson: _stringFromJson)  String itemId, @JsonKey(name: 'quantity', fromJson: _intFromJson)  int quantity, @JsonKey(name: 'item_name', fromJson: _stringFromJson)  String itemName, @JsonKey(name: 'note', fromJson: _nullableStringFromJson)  String? note, @JsonKey(name: 'item_type', fromJson: _nullableStringFromJson)  String? itemType, @JsonKey(name: 'unit_price', fromJson: _nullableDoubleFromJson)  double? unitPrice, @JsonKey(name: 'category_id', fromJson: _nullableStringFromJson)  String? categoryId, @JsonKey(name: 'subservices', fromJson: _subservicesFromJson, toJson: _subservicesToJson)  List<dynamic> subservices, @JsonKey(name: 'category_name', fromJson: _nullableStringFromJson)  String? categoryName)  $default,) {final _that = this;
switch (_that) {
case _KdsOrderItem():
return $default(_that.itemId,_that.quantity,_that.itemName,_that.note,_that.itemType,_that.unitPrice,_that.categoryId,_that.subservices,_that.categoryName);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'item_id', fromJson: _stringFromJson)  String itemId, @JsonKey(name: 'quantity', fromJson: _intFromJson)  int quantity, @JsonKey(name: 'item_name', fromJson: _stringFromJson)  String itemName, @JsonKey(name: 'note', fromJson: _nullableStringFromJson)  String? note, @JsonKey(name: 'item_type', fromJson: _nullableStringFromJson)  String? itemType, @JsonKey(name: 'unit_price', fromJson: _nullableDoubleFromJson)  double? unitPrice, @JsonKey(name: 'category_id', fromJson: _nullableStringFromJson)  String? categoryId, @JsonKey(name: 'subservices', fromJson: _subservicesFromJson, toJson: _subservicesToJson)  List<dynamic> subservices, @JsonKey(name: 'category_name', fromJson: _nullableStringFromJson)  String? categoryName)?  $default,) {final _that = this;
switch (_that) {
case _KdsOrderItem() when $default != null:
return $default(_that.itemId,_that.quantity,_that.itemName,_that.note,_that.itemType,_that.unitPrice,_that.categoryId,_that.subservices,_that.categoryName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KdsOrderItem implements KdsOrderItem {
  const _KdsOrderItem({@JsonKey(name: 'item_id', fromJson: _stringFromJson) this.itemId = '', @JsonKey(name: 'quantity', fromJson: _intFromJson) this.quantity = 0, @JsonKey(name: 'item_name', fromJson: _stringFromJson) this.itemName = 'Item', @JsonKey(name: 'note', fromJson: _nullableStringFromJson) this.note, @JsonKey(name: 'item_type', fromJson: _nullableStringFromJson) this.itemType, @JsonKey(name: 'unit_price', fromJson: _nullableDoubleFromJson) this.unitPrice, @JsonKey(name: 'category_id', fromJson: _nullableStringFromJson) this.categoryId, @JsonKey(name: 'subservices', fromJson: _subservicesFromJson, toJson: _subservicesToJson) final  List<dynamic> subservices = const <dynamic>[], @JsonKey(name: 'category_name', fromJson: _nullableStringFromJson) this.categoryName}): _subservices = subservices;
  factory _KdsOrderItem.fromJson(Map<String, dynamic> json) => _$KdsOrderItemFromJson(json);

@override@JsonKey(name: 'item_id', fromJson: _stringFromJson) final  String itemId;
@override@JsonKey(name: 'quantity', fromJson: _intFromJson) final  int quantity;
@override@JsonKey(name: 'item_name', fromJson: _stringFromJson) final  String itemName;
@override@JsonKey(name: 'note', fromJson: _nullableStringFromJson) final  String? note;
@override@JsonKey(name: 'item_type', fromJson: _nullableStringFromJson) final  String? itemType;
@override@JsonKey(name: 'unit_price', fromJson: _nullableDoubleFromJson) final  double? unitPrice;
@override@JsonKey(name: 'category_id', fromJson: _nullableStringFromJson) final  String? categoryId;
 final  List<dynamic> _subservices;
@override@JsonKey(name: 'subservices', fromJson: _subservicesFromJson, toJson: _subservicesToJson) List<dynamic> get subservices {
  if (_subservices is EqualUnmodifiableListView) return _subservices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_subservices);
}

@override@JsonKey(name: 'category_name', fromJson: _nullableStringFromJson) final  String? categoryName;

/// Create a copy of KdsOrderItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KdsOrderItemCopyWith<_KdsOrderItem> get copyWith => __$KdsOrderItemCopyWithImpl<_KdsOrderItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KdsOrderItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KdsOrderItem&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.itemName, itemName) || other.itemName == itemName)&&(identical(other.note, note) || other.note == note)&&(identical(other.itemType, itemType) || other.itemType == itemType)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&const DeepCollectionEquality().equals(other._subservices, _subservices)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,itemId,quantity,itemName,note,itemType,unitPrice,categoryId,const DeepCollectionEquality().hash(_subservices),categoryName);

@override
String toString() {
  return 'KdsOrderItem(itemId: $itemId, quantity: $quantity, itemName: $itemName, note: $note, itemType: $itemType, unitPrice: $unitPrice, categoryId: $categoryId, subservices: $subservices, categoryName: $categoryName)';
}


}

/// @nodoc
abstract mixin class _$KdsOrderItemCopyWith<$Res> implements $KdsOrderItemCopyWith<$Res> {
  factory _$KdsOrderItemCopyWith(_KdsOrderItem value, $Res Function(_KdsOrderItem) _then) = __$KdsOrderItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'item_id', fromJson: _stringFromJson) String itemId,@JsonKey(name: 'quantity', fromJson: _intFromJson) int quantity,@JsonKey(name: 'item_name', fromJson: _stringFromJson) String itemName,@JsonKey(name: 'note', fromJson: _nullableStringFromJson) String? note,@JsonKey(name: 'item_type', fromJson: _nullableStringFromJson) String? itemType,@JsonKey(name: 'unit_price', fromJson: _nullableDoubleFromJson) double? unitPrice,@JsonKey(name: 'category_id', fromJson: _nullableStringFromJson) String? categoryId,@JsonKey(name: 'subservices', fromJson: _subservicesFromJson, toJson: _subservicesToJson) List<dynamic> subservices,@JsonKey(name: 'category_name', fromJson: _nullableStringFromJson) String? categoryName
});




}
/// @nodoc
class __$KdsOrderItemCopyWithImpl<$Res>
    implements _$KdsOrderItemCopyWith<$Res> {
  __$KdsOrderItemCopyWithImpl(this._self, this._then);

  final _KdsOrderItem _self;
  final $Res Function(_KdsOrderItem) _then;

/// Create a copy of KdsOrderItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? itemId = null,Object? quantity = null,Object? itemName = null,Object? note = freezed,Object? itemType = freezed,Object? unitPrice = freezed,Object? categoryId = freezed,Object? subservices = null,Object? categoryName = freezed,}) {
  return _then(_KdsOrderItem(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,itemName: null == itemName ? _self.itemName : itemName // ignore: cast_nullable_to_non_nullable
as String,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,itemType: freezed == itemType ? _self.itemType : itemType // ignore: cast_nullable_to_non_nullable
as String?,unitPrice: freezed == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as double?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,subservices: null == subservices ? _self._subservices : subservices // ignore: cast_nullable_to_non_nullable
as List<dynamic>,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
