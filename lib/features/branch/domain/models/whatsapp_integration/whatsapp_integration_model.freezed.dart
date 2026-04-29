// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'whatsapp_integration_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WhatsappIntegration {

@JsonKey(name: 'business_id') String get businessId;@JsonKey(name: 'whatsapp_number_id') String? get whatsappNumberId;@JsonKey(name: 'whatsapp_token') String? get whatsappToken;@JsonKey(name: 'customer_sale_invoice') bool get customerSaleInvoice;@JsonKey(name: 'customer_payment_receipt') bool get customerPaymentReceipt;@JsonKey(name: 'admin_order_assigned_alert') bool get adminOrderAssignedAlert;@JsonKey(name: 'admin_stock_alert') bool get adminStockAlert;@JsonKey(name: 'payment_overdue_alert') String get paymentOverdueAlert;
/// Create a copy of WhatsappIntegration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WhatsappIntegrationCopyWith<WhatsappIntegration> get copyWith => _$WhatsappIntegrationCopyWithImpl<WhatsappIntegration>(this as WhatsappIntegration, _$identity);

  /// Serializes this WhatsappIntegration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WhatsappIntegration&&(identical(other.businessId, businessId) || other.businessId == businessId)&&(identical(other.whatsappNumberId, whatsappNumberId) || other.whatsappNumberId == whatsappNumberId)&&(identical(other.whatsappToken, whatsappToken) || other.whatsappToken == whatsappToken)&&(identical(other.customerSaleInvoice, customerSaleInvoice) || other.customerSaleInvoice == customerSaleInvoice)&&(identical(other.customerPaymentReceipt, customerPaymentReceipt) || other.customerPaymentReceipt == customerPaymentReceipt)&&(identical(other.adminOrderAssignedAlert, adminOrderAssignedAlert) || other.adminOrderAssignedAlert == adminOrderAssignedAlert)&&(identical(other.adminStockAlert, adminStockAlert) || other.adminStockAlert == adminStockAlert)&&(identical(other.paymentOverdueAlert, paymentOverdueAlert) || other.paymentOverdueAlert == paymentOverdueAlert));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,businessId,whatsappNumberId,whatsappToken,customerSaleInvoice,customerPaymentReceipt,adminOrderAssignedAlert,adminStockAlert,paymentOverdueAlert);

@override
String toString() {
  return 'WhatsappIntegration(businessId: $businessId, whatsappNumberId: $whatsappNumberId, whatsappToken: $whatsappToken, customerSaleInvoice: $customerSaleInvoice, customerPaymentReceipt: $customerPaymentReceipt, adminOrderAssignedAlert: $adminOrderAssignedAlert, adminStockAlert: $adminStockAlert, paymentOverdueAlert: $paymentOverdueAlert)';
}


}

/// @nodoc
abstract mixin class $WhatsappIntegrationCopyWith<$Res>  {
  factory $WhatsappIntegrationCopyWith(WhatsappIntegration value, $Res Function(WhatsappIntegration) _then) = _$WhatsappIntegrationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'business_id') String businessId,@JsonKey(name: 'whatsapp_number_id') String? whatsappNumberId,@JsonKey(name: 'whatsapp_token') String? whatsappToken,@JsonKey(name: 'customer_sale_invoice') bool customerSaleInvoice,@JsonKey(name: 'customer_payment_receipt') bool customerPaymentReceipt,@JsonKey(name: 'admin_order_assigned_alert') bool adminOrderAssignedAlert,@JsonKey(name: 'admin_stock_alert') bool adminStockAlert,@JsonKey(name: 'payment_overdue_alert') String paymentOverdueAlert
});




}
/// @nodoc
class _$WhatsappIntegrationCopyWithImpl<$Res>
    implements $WhatsappIntegrationCopyWith<$Res> {
  _$WhatsappIntegrationCopyWithImpl(this._self, this._then);

  final WhatsappIntegration _self;
  final $Res Function(WhatsappIntegration) _then;

/// Create a copy of WhatsappIntegration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? businessId = null,Object? whatsappNumberId = freezed,Object? whatsappToken = freezed,Object? customerSaleInvoice = null,Object? customerPaymentReceipt = null,Object? adminOrderAssignedAlert = null,Object? adminStockAlert = null,Object? paymentOverdueAlert = null,}) {
  return _then(_self.copyWith(
businessId: null == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as String,whatsappNumberId: freezed == whatsappNumberId ? _self.whatsappNumberId : whatsappNumberId // ignore: cast_nullable_to_non_nullable
as String?,whatsappToken: freezed == whatsappToken ? _self.whatsappToken : whatsappToken // ignore: cast_nullable_to_non_nullable
as String?,customerSaleInvoice: null == customerSaleInvoice ? _self.customerSaleInvoice : customerSaleInvoice // ignore: cast_nullable_to_non_nullable
as bool,customerPaymentReceipt: null == customerPaymentReceipt ? _self.customerPaymentReceipt : customerPaymentReceipt // ignore: cast_nullable_to_non_nullable
as bool,adminOrderAssignedAlert: null == adminOrderAssignedAlert ? _self.adminOrderAssignedAlert : adminOrderAssignedAlert // ignore: cast_nullable_to_non_nullable
as bool,adminStockAlert: null == adminStockAlert ? _self.adminStockAlert : adminStockAlert // ignore: cast_nullable_to_non_nullable
as bool,paymentOverdueAlert: null == paymentOverdueAlert ? _self.paymentOverdueAlert : paymentOverdueAlert // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [WhatsappIntegration].
extension WhatsappIntegrationPatterns on WhatsappIntegration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WhatsappIntegration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WhatsappIntegration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WhatsappIntegration value)  $default,){
final _that = this;
switch (_that) {
case _WhatsappIntegration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WhatsappIntegration value)?  $default,){
final _that = this;
switch (_that) {
case _WhatsappIntegration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'business_id')  String businessId, @JsonKey(name: 'whatsapp_number_id')  String? whatsappNumberId, @JsonKey(name: 'whatsapp_token')  String? whatsappToken, @JsonKey(name: 'customer_sale_invoice')  bool customerSaleInvoice, @JsonKey(name: 'customer_payment_receipt')  bool customerPaymentReceipt, @JsonKey(name: 'admin_order_assigned_alert')  bool adminOrderAssignedAlert, @JsonKey(name: 'admin_stock_alert')  bool adminStockAlert, @JsonKey(name: 'payment_overdue_alert')  String paymentOverdueAlert)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WhatsappIntegration() when $default != null:
return $default(_that.businessId,_that.whatsappNumberId,_that.whatsappToken,_that.customerSaleInvoice,_that.customerPaymentReceipt,_that.adminOrderAssignedAlert,_that.adminStockAlert,_that.paymentOverdueAlert);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'business_id')  String businessId, @JsonKey(name: 'whatsapp_number_id')  String? whatsappNumberId, @JsonKey(name: 'whatsapp_token')  String? whatsappToken, @JsonKey(name: 'customer_sale_invoice')  bool customerSaleInvoice, @JsonKey(name: 'customer_payment_receipt')  bool customerPaymentReceipt, @JsonKey(name: 'admin_order_assigned_alert')  bool adminOrderAssignedAlert, @JsonKey(name: 'admin_stock_alert')  bool adminStockAlert, @JsonKey(name: 'payment_overdue_alert')  String paymentOverdueAlert)  $default,) {final _that = this;
switch (_that) {
case _WhatsappIntegration():
return $default(_that.businessId,_that.whatsappNumberId,_that.whatsappToken,_that.customerSaleInvoice,_that.customerPaymentReceipt,_that.adminOrderAssignedAlert,_that.adminStockAlert,_that.paymentOverdueAlert);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'business_id')  String businessId, @JsonKey(name: 'whatsapp_number_id')  String? whatsappNumberId, @JsonKey(name: 'whatsapp_token')  String? whatsappToken, @JsonKey(name: 'customer_sale_invoice')  bool customerSaleInvoice, @JsonKey(name: 'customer_payment_receipt')  bool customerPaymentReceipt, @JsonKey(name: 'admin_order_assigned_alert')  bool adminOrderAssignedAlert, @JsonKey(name: 'admin_stock_alert')  bool adminStockAlert, @JsonKey(name: 'payment_overdue_alert')  String paymentOverdueAlert)?  $default,) {final _that = this;
switch (_that) {
case _WhatsappIntegration() when $default != null:
return $default(_that.businessId,_that.whatsappNumberId,_that.whatsappToken,_that.customerSaleInvoice,_that.customerPaymentReceipt,_that.adminOrderAssignedAlert,_that.adminStockAlert,_that.paymentOverdueAlert);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WhatsappIntegration implements WhatsappIntegration {
  const _WhatsappIntegration({@JsonKey(name: 'business_id') required this.businessId, @JsonKey(name: 'whatsapp_number_id') this.whatsappNumberId, @JsonKey(name: 'whatsapp_token') this.whatsappToken, @JsonKey(name: 'customer_sale_invoice') this.customerSaleInvoice = false, @JsonKey(name: 'customer_payment_receipt') this.customerPaymentReceipt = false, @JsonKey(name: 'admin_order_assigned_alert') this.adminOrderAssignedAlert = false, @JsonKey(name: 'admin_stock_alert') this.adminStockAlert = false, @JsonKey(name: 'payment_overdue_alert') this.paymentOverdueAlert = 'None'});
  factory _WhatsappIntegration.fromJson(Map<String, dynamic> json) => _$WhatsappIntegrationFromJson(json);

@override@JsonKey(name: 'business_id') final  String businessId;
@override@JsonKey(name: 'whatsapp_number_id') final  String? whatsappNumberId;
@override@JsonKey(name: 'whatsapp_token') final  String? whatsappToken;
@override@JsonKey(name: 'customer_sale_invoice') final  bool customerSaleInvoice;
@override@JsonKey(name: 'customer_payment_receipt') final  bool customerPaymentReceipt;
@override@JsonKey(name: 'admin_order_assigned_alert') final  bool adminOrderAssignedAlert;
@override@JsonKey(name: 'admin_stock_alert') final  bool adminStockAlert;
@override@JsonKey(name: 'payment_overdue_alert') final  String paymentOverdueAlert;

/// Create a copy of WhatsappIntegration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WhatsappIntegrationCopyWith<_WhatsappIntegration> get copyWith => __$WhatsappIntegrationCopyWithImpl<_WhatsappIntegration>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WhatsappIntegrationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WhatsappIntegration&&(identical(other.businessId, businessId) || other.businessId == businessId)&&(identical(other.whatsappNumberId, whatsappNumberId) || other.whatsappNumberId == whatsappNumberId)&&(identical(other.whatsappToken, whatsappToken) || other.whatsappToken == whatsappToken)&&(identical(other.customerSaleInvoice, customerSaleInvoice) || other.customerSaleInvoice == customerSaleInvoice)&&(identical(other.customerPaymentReceipt, customerPaymentReceipt) || other.customerPaymentReceipt == customerPaymentReceipt)&&(identical(other.adminOrderAssignedAlert, adminOrderAssignedAlert) || other.adminOrderAssignedAlert == adminOrderAssignedAlert)&&(identical(other.adminStockAlert, adminStockAlert) || other.adminStockAlert == adminStockAlert)&&(identical(other.paymentOverdueAlert, paymentOverdueAlert) || other.paymentOverdueAlert == paymentOverdueAlert));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,businessId,whatsappNumberId,whatsappToken,customerSaleInvoice,customerPaymentReceipt,adminOrderAssignedAlert,adminStockAlert,paymentOverdueAlert);

@override
String toString() {
  return 'WhatsappIntegration(businessId: $businessId, whatsappNumberId: $whatsappNumberId, whatsappToken: $whatsappToken, customerSaleInvoice: $customerSaleInvoice, customerPaymentReceipt: $customerPaymentReceipt, adminOrderAssignedAlert: $adminOrderAssignedAlert, adminStockAlert: $adminStockAlert, paymentOverdueAlert: $paymentOverdueAlert)';
}


}

/// @nodoc
abstract mixin class _$WhatsappIntegrationCopyWith<$Res> implements $WhatsappIntegrationCopyWith<$Res> {
  factory _$WhatsappIntegrationCopyWith(_WhatsappIntegration value, $Res Function(_WhatsappIntegration) _then) = __$WhatsappIntegrationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'business_id') String businessId,@JsonKey(name: 'whatsapp_number_id') String? whatsappNumberId,@JsonKey(name: 'whatsapp_token') String? whatsappToken,@JsonKey(name: 'customer_sale_invoice') bool customerSaleInvoice,@JsonKey(name: 'customer_payment_receipt') bool customerPaymentReceipt,@JsonKey(name: 'admin_order_assigned_alert') bool adminOrderAssignedAlert,@JsonKey(name: 'admin_stock_alert') bool adminStockAlert,@JsonKey(name: 'payment_overdue_alert') String paymentOverdueAlert
});




}
/// @nodoc
class __$WhatsappIntegrationCopyWithImpl<$Res>
    implements _$WhatsappIntegrationCopyWith<$Res> {
  __$WhatsappIntegrationCopyWithImpl(this._self, this._then);

  final _WhatsappIntegration _self;
  final $Res Function(_WhatsappIntegration) _then;

/// Create a copy of WhatsappIntegration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? businessId = null,Object? whatsappNumberId = freezed,Object? whatsappToken = freezed,Object? customerSaleInvoice = null,Object? customerPaymentReceipt = null,Object? adminOrderAssignedAlert = null,Object? adminStockAlert = null,Object? paymentOverdueAlert = null,}) {
  return _then(_WhatsappIntegration(
businessId: null == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as String,whatsappNumberId: freezed == whatsappNumberId ? _self.whatsappNumberId : whatsappNumberId // ignore: cast_nullable_to_non_nullable
as String?,whatsappToken: freezed == whatsappToken ? _self.whatsappToken : whatsappToken // ignore: cast_nullable_to_non_nullable
as String?,customerSaleInvoice: null == customerSaleInvoice ? _self.customerSaleInvoice : customerSaleInvoice // ignore: cast_nullable_to_non_nullable
as bool,customerPaymentReceipt: null == customerPaymentReceipt ? _self.customerPaymentReceipt : customerPaymentReceipt // ignore: cast_nullable_to_non_nullable
as bool,adminOrderAssignedAlert: null == adminOrderAssignedAlert ? _self.adminOrderAssignedAlert : adminOrderAssignedAlert // ignore: cast_nullable_to_non_nullable
as bool,adminStockAlert: null == adminStockAlert ? _self.adminStockAlert : adminStockAlert // ignore: cast_nullable_to_non_nullable
as bool,paymentOverdueAlert: null == paymentOverdueAlert ? _self.paymentOverdueAlert : paymentOverdueAlert // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
