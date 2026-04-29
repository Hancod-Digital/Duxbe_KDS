// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'organization.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrganizationDetails {

@JsonKey(name: 'org_id') String get orgId;@JsonKey(name: 'created_at') DateTime get createdAt;@JsonKey(name: 'businesses_list', defaultValue: []) List<Business> get businessesList;@JsonKey(name: 'name') String? get organizationName;@JsonKey(name: 'created_by') String? get createdBy;@JsonKey(name: 'active_subscription_details') ActiveSubscriptionDetails? get activeSubscriptionDetails;@JsonKey(name: 'active_addons_list', defaultValue: []) List<ActiveAddonSubscription>? get activeAddonsList;@JsonKey(name: 'trial_activated') bool? get trialActivated;@JsonKey(name: 'trial_end_date') DateTime? get trialEndDate;
/// Create a copy of OrganizationDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrganizationDetailsCopyWith<OrganizationDetails> get copyWith => _$OrganizationDetailsCopyWithImpl<OrganizationDetails>(this as OrganizationDetails, _$identity);

  /// Serializes this OrganizationDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrganizationDetails&&(identical(other.orgId, orgId) || other.orgId == orgId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other.businessesList, businessesList)&&(identical(other.organizationName, organizationName) || other.organizationName == organizationName)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.activeSubscriptionDetails, activeSubscriptionDetails) || other.activeSubscriptionDetails == activeSubscriptionDetails)&&const DeepCollectionEquality().equals(other.activeAddonsList, activeAddonsList)&&(identical(other.trialActivated, trialActivated) || other.trialActivated == trialActivated)&&(identical(other.trialEndDate, trialEndDate) || other.trialEndDate == trialEndDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orgId,createdAt,const DeepCollectionEquality().hash(businessesList),organizationName,createdBy,activeSubscriptionDetails,const DeepCollectionEquality().hash(activeAddonsList),trialActivated,trialEndDate);

@override
String toString() {
  return 'OrganizationDetails(orgId: $orgId, createdAt: $createdAt, businessesList: $businessesList, organizationName: $organizationName, createdBy: $createdBy, activeSubscriptionDetails: $activeSubscriptionDetails, activeAddonsList: $activeAddonsList, trialActivated: $trialActivated, trialEndDate: $trialEndDate)';
}


}

/// @nodoc
abstract mixin class $OrganizationDetailsCopyWith<$Res>  {
  factory $OrganizationDetailsCopyWith(OrganizationDetails value, $Res Function(OrganizationDetails) _then) = _$OrganizationDetailsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'org_id') String orgId,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'businesses_list', defaultValue: []) List<Business> businessesList,@JsonKey(name: 'name') String? organizationName,@JsonKey(name: 'created_by') String? createdBy,@JsonKey(name: 'active_subscription_details') ActiveSubscriptionDetails? activeSubscriptionDetails,@JsonKey(name: 'active_addons_list', defaultValue: []) List<ActiveAddonSubscription>? activeAddonsList,@JsonKey(name: 'trial_activated') bool? trialActivated,@JsonKey(name: 'trial_end_date') DateTime? trialEndDate
});


$ActiveSubscriptionDetailsCopyWith<$Res>? get activeSubscriptionDetails;

}
/// @nodoc
class _$OrganizationDetailsCopyWithImpl<$Res>
    implements $OrganizationDetailsCopyWith<$Res> {
  _$OrganizationDetailsCopyWithImpl(this._self, this._then);

  final OrganizationDetails _self;
  final $Res Function(OrganizationDetails) _then;

/// Create a copy of OrganizationDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orgId = null,Object? createdAt = null,Object? businessesList = null,Object? organizationName = freezed,Object? createdBy = freezed,Object? activeSubscriptionDetails = freezed,Object? activeAddonsList = freezed,Object? trialActivated = freezed,Object? trialEndDate = freezed,}) {
  return _then(_self.copyWith(
orgId: null == orgId ? _self.orgId : orgId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,businessesList: null == businessesList ? _self.businessesList : businessesList // ignore: cast_nullable_to_non_nullable
as List<Business>,organizationName: freezed == organizationName ? _self.organizationName : organizationName // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String?,activeSubscriptionDetails: freezed == activeSubscriptionDetails ? _self.activeSubscriptionDetails : activeSubscriptionDetails // ignore: cast_nullable_to_non_nullable
as ActiveSubscriptionDetails?,activeAddonsList: freezed == activeAddonsList ? _self.activeAddonsList : activeAddonsList // ignore: cast_nullable_to_non_nullable
as List<ActiveAddonSubscription>?,trialActivated: freezed == trialActivated ? _self.trialActivated : trialActivated // ignore: cast_nullable_to_non_nullable
as bool?,trialEndDate: freezed == trialEndDate ? _self.trialEndDate : trialEndDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of OrganizationDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActiveSubscriptionDetailsCopyWith<$Res>? get activeSubscriptionDetails {
    if (_self.activeSubscriptionDetails == null) {
    return null;
  }

  return $ActiveSubscriptionDetailsCopyWith<$Res>(_self.activeSubscriptionDetails!, (value) {
    return _then(_self.copyWith(activeSubscriptionDetails: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrganizationDetails].
extension OrganizationDetailsPatterns on OrganizationDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrganizationDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrganizationDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrganizationDetails value)  $default,){
final _that = this;
switch (_that) {
case _OrganizationDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrganizationDetails value)?  $default,){
final _that = this;
switch (_that) {
case _OrganizationDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'org_id')  String orgId, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'businesses_list', defaultValue: [])  List<Business> businessesList, @JsonKey(name: 'name')  String? organizationName, @JsonKey(name: 'created_by')  String? createdBy, @JsonKey(name: 'active_subscription_details')  ActiveSubscriptionDetails? activeSubscriptionDetails, @JsonKey(name: 'active_addons_list', defaultValue: [])  List<ActiveAddonSubscription>? activeAddonsList, @JsonKey(name: 'trial_activated')  bool? trialActivated, @JsonKey(name: 'trial_end_date')  DateTime? trialEndDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrganizationDetails() when $default != null:
return $default(_that.orgId,_that.createdAt,_that.businessesList,_that.organizationName,_that.createdBy,_that.activeSubscriptionDetails,_that.activeAddonsList,_that.trialActivated,_that.trialEndDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'org_id')  String orgId, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'businesses_list', defaultValue: [])  List<Business> businessesList, @JsonKey(name: 'name')  String? organizationName, @JsonKey(name: 'created_by')  String? createdBy, @JsonKey(name: 'active_subscription_details')  ActiveSubscriptionDetails? activeSubscriptionDetails, @JsonKey(name: 'active_addons_list', defaultValue: [])  List<ActiveAddonSubscription>? activeAddonsList, @JsonKey(name: 'trial_activated')  bool? trialActivated, @JsonKey(name: 'trial_end_date')  DateTime? trialEndDate)  $default,) {final _that = this;
switch (_that) {
case _OrganizationDetails():
return $default(_that.orgId,_that.createdAt,_that.businessesList,_that.organizationName,_that.createdBy,_that.activeSubscriptionDetails,_that.activeAddonsList,_that.trialActivated,_that.trialEndDate);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'org_id')  String orgId, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'businesses_list', defaultValue: [])  List<Business> businessesList, @JsonKey(name: 'name')  String? organizationName, @JsonKey(name: 'created_by')  String? createdBy, @JsonKey(name: 'active_subscription_details')  ActiveSubscriptionDetails? activeSubscriptionDetails, @JsonKey(name: 'active_addons_list', defaultValue: [])  List<ActiveAddonSubscription>? activeAddonsList, @JsonKey(name: 'trial_activated')  bool? trialActivated, @JsonKey(name: 'trial_end_date')  DateTime? trialEndDate)?  $default,) {final _that = this;
switch (_that) {
case _OrganizationDetails() when $default != null:
return $default(_that.orgId,_that.createdAt,_that.businessesList,_that.organizationName,_that.createdBy,_that.activeSubscriptionDetails,_that.activeAddonsList,_that.trialActivated,_that.trialEndDate);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _OrganizationDetails implements OrganizationDetails {
  const _OrganizationDetails({@JsonKey(name: 'org_id') required this.orgId, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'businesses_list', defaultValue: []) required final  List<Business> businessesList, @JsonKey(name: 'name') this.organizationName, @JsonKey(name: 'created_by') this.createdBy, @JsonKey(name: 'active_subscription_details') this.activeSubscriptionDetails, @JsonKey(name: 'active_addons_list', defaultValue: []) final  List<ActiveAddonSubscription>? activeAddonsList, @JsonKey(name: 'trial_activated') this.trialActivated, @JsonKey(name: 'trial_end_date') this.trialEndDate}): _businessesList = businessesList,_activeAddonsList = activeAddonsList;
  factory _OrganizationDetails.fromJson(Map<String, dynamic> json) => _$OrganizationDetailsFromJson(json);

@override@JsonKey(name: 'org_id') final  String orgId;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;
 final  List<Business> _businessesList;
@override@JsonKey(name: 'businesses_list', defaultValue: []) List<Business> get businessesList {
  if (_businessesList is EqualUnmodifiableListView) return _businessesList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_businessesList);
}

@override@JsonKey(name: 'name') final  String? organizationName;
@override@JsonKey(name: 'created_by') final  String? createdBy;
@override@JsonKey(name: 'active_subscription_details') final  ActiveSubscriptionDetails? activeSubscriptionDetails;
 final  List<ActiveAddonSubscription>? _activeAddonsList;
@override@JsonKey(name: 'active_addons_list', defaultValue: []) List<ActiveAddonSubscription>? get activeAddonsList {
  final value = _activeAddonsList;
  if (value == null) return null;
  if (_activeAddonsList is EqualUnmodifiableListView) return _activeAddonsList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'trial_activated') final  bool? trialActivated;
@override@JsonKey(name: 'trial_end_date') final  DateTime? trialEndDate;

/// Create a copy of OrganizationDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrganizationDetailsCopyWith<_OrganizationDetails> get copyWith => __$OrganizationDetailsCopyWithImpl<_OrganizationDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrganizationDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrganizationDetails&&(identical(other.orgId, orgId) || other.orgId == orgId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other._businessesList, _businessesList)&&(identical(other.organizationName, organizationName) || other.organizationName == organizationName)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.activeSubscriptionDetails, activeSubscriptionDetails) || other.activeSubscriptionDetails == activeSubscriptionDetails)&&const DeepCollectionEquality().equals(other._activeAddonsList, _activeAddonsList)&&(identical(other.trialActivated, trialActivated) || other.trialActivated == trialActivated)&&(identical(other.trialEndDate, trialEndDate) || other.trialEndDate == trialEndDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orgId,createdAt,const DeepCollectionEquality().hash(_businessesList),organizationName,createdBy,activeSubscriptionDetails,const DeepCollectionEquality().hash(_activeAddonsList),trialActivated,trialEndDate);

@override
String toString() {
  return 'OrganizationDetails(orgId: $orgId, createdAt: $createdAt, businessesList: $businessesList, organizationName: $organizationName, createdBy: $createdBy, activeSubscriptionDetails: $activeSubscriptionDetails, activeAddonsList: $activeAddonsList, trialActivated: $trialActivated, trialEndDate: $trialEndDate)';
}


}

/// @nodoc
abstract mixin class _$OrganizationDetailsCopyWith<$Res> implements $OrganizationDetailsCopyWith<$Res> {
  factory _$OrganizationDetailsCopyWith(_OrganizationDetails value, $Res Function(_OrganizationDetails) _then) = __$OrganizationDetailsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'org_id') String orgId,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'businesses_list', defaultValue: []) List<Business> businessesList,@JsonKey(name: 'name') String? organizationName,@JsonKey(name: 'created_by') String? createdBy,@JsonKey(name: 'active_subscription_details') ActiveSubscriptionDetails? activeSubscriptionDetails,@JsonKey(name: 'active_addons_list', defaultValue: []) List<ActiveAddonSubscription>? activeAddonsList,@JsonKey(name: 'trial_activated') bool? trialActivated,@JsonKey(name: 'trial_end_date') DateTime? trialEndDate
});


@override $ActiveSubscriptionDetailsCopyWith<$Res>? get activeSubscriptionDetails;

}
/// @nodoc
class __$OrganizationDetailsCopyWithImpl<$Res>
    implements _$OrganizationDetailsCopyWith<$Res> {
  __$OrganizationDetailsCopyWithImpl(this._self, this._then);

  final _OrganizationDetails _self;
  final $Res Function(_OrganizationDetails) _then;

/// Create a copy of OrganizationDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orgId = null,Object? createdAt = null,Object? businessesList = null,Object? organizationName = freezed,Object? createdBy = freezed,Object? activeSubscriptionDetails = freezed,Object? activeAddonsList = freezed,Object? trialActivated = freezed,Object? trialEndDate = freezed,}) {
  return _then(_OrganizationDetails(
orgId: null == orgId ? _self.orgId : orgId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,businessesList: null == businessesList ? _self._businessesList : businessesList // ignore: cast_nullable_to_non_nullable
as List<Business>,organizationName: freezed == organizationName ? _self.organizationName : organizationName // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String?,activeSubscriptionDetails: freezed == activeSubscriptionDetails ? _self.activeSubscriptionDetails : activeSubscriptionDetails // ignore: cast_nullable_to_non_nullable
as ActiveSubscriptionDetails?,activeAddonsList: freezed == activeAddonsList ? _self._activeAddonsList : activeAddonsList // ignore: cast_nullable_to_non_nullable
as List<ActiveAddonSubscription>?,trialActivated: freezed == trialActivated ? _self.trialActivated : trialActivated // ignore: cast_nullable_to_non_nullable
as bool?,trialEndDate: freezed == trialEndDate ? _self.trialEndDate : trialEndDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of OrganizationDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActiveSubscriptionDetailsCopyWith<$Res>? get activeSubscriptionDetails {
    if (_self.activeSubscriptionDetails == null) {
    return null;
  }

  return $ActiveSubscriptionDetailsCopyWith<$Res>(_self.activeSubscriptionDetails!, (value) {
    return _then(_self.copyWith(activeSubscriptionDetails: value));
  });
}
}


/// @nodoc
mixin _$ActiveSubscriptionDetails {

@JsonKey(name: 'subscription_id') String get subscriptionId; String get status;@JsonKey(name: 'cancel_at_period_end') bool get cancelAtPeriodEnd;@JsonKey(name: 'created_at') DateTime get createdAt;@JsonKey(name: 'updated_at') DateTime get updatedAt;@JsonKey(name: 'start_date') DateTime? get startDate;// Made nullable to match potential DB values
@JsonKey(name: 'plan_id') int? get planId;@JsonKey(name: 'end_date') DateTime? get endDate;@JsonKey(name: 'trial_end_date') DateTime? get trialEndDate;@JsonKey(name: 'canceled_at') DateTime? get canceledAt;@JsonKey(name: 'payment_provider_subscription_id') String? get paymentProviderSubscriptionId;@JsonKey(name: 'addon_id') int? get addonId;// This is for an addon potentially linked to a plan subscription
@JsonKey(name: 'payment_provider_customer_id') String? get paymentProviderCustomerId;@JsonKey(name: 'payment_provider') String? get paymentProvider;@JsonKey(name: 'payment_provider_plan_id') String? get paymentProviderPlanId;@JsonKey(name: 'current_start') DateTime? get currentStart;@JsonKey(name: 'current_end') DateTime? get currentEnd;@JsonKey(name: 'payment_url') String? get paymentUrl;@JsonKey(name: 'currency') String? get currency;@JsonKey(name: 'plan_amount') double? get planAmount;@JsonKey(name: 'total_invoice_amount') double? get totalInvoiceAmount;@JsonKey(name: 'tax_amount') double? get taxAmount;@JsonKey(name: 'billing_cycle') String? get billingCycle;// Assuming BillingCycleEnum or String
@JsonKey(name: 'metadata') Map<String, dynamic>? get metadata;@JsonKey(name: 'plan_details') PlanDetails? get planDetails;// Renamed from 'plan' for clarity
@JsonKey(name: 'addon_details_on_plan_sub') AddonDetails? get addonDetailsOnPlanSub;
/// Create a copy of ActiveSubscriptionDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActiveSubscriptionDetailsCopyWith<ActiveSubscriptionDetails> get copyWith => _$ActiveSubscriptionDetailsCopyWithImpl<ActiveSubscriptionDetails>(this as ActiveSubscriptionDetails, _$identity);

  /// Serializes this ActiveSubscriptionDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActiveSubscriptionDetails&&(identical(other.subscriptionId, subscriptionId) || other.subscriptionId == subscriptionId)&&(identical(other.status, status) || other.status == status)&&(identical(other.cancelAtPeriodEnd, cancelAtPeriodEnd) || other.cancelAtPeriodEnd == cancelAtPeriodEnd)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.planId, planId) || other.planId == planId)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.trialEndDate, trialEndDate) || other.trialEndDate == trialEndDate)&&(identical(other.canceledAt, canceledAt) || other.canceledAt == canceledAt)&&(identical(other.paymentProviderSubscriptionId, paymentProviderSubscriptionId) || other.paymentProviderSubscriptionId == paymentProviderSubscriptionId)&&(identical(other.addonId, addonId) || other.addonId == addonId)&&(identical(other.paymentProviderCustomerId, paymentProviderCustomerId) || other.paymentProviderCustomerId == paymentProviderCustomerId)&&(identical(other.paymentProvider, paymentProvider) || other.paymentProvider == paymentProvider)&&(identical(other.paymentProviderPlanId, paymentProviderPlanId) || other.paymentProviderPlanId == paymentProviderPlanId)&&(identical(other.currentStart, currentStart) || other.currentStart == currentStart)&&(identical(other.currentEnd, currentEnd) || other.currentEnd == currentEnd)&&(identical(other.paymentUrl, paymentUrl) || other.paymentUrl == paymentUrl)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.planAmount, planAmount) || other.planAmount == planAmount)&&(identical(other.totalInvoiceAmount, totalInvoiceAmount) || other.totalInvoiceAmount == totalInvoiceAmount)&&(identical(other.taxAmount, taxAmount) || other.taxAmount == taxAmount)&&(identical(other.billingCycle, billingCycle) || other.billingCycle == billingCycle)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.planDetails, planDetails) || other.planDetails == planDetails)&&(identical(other.addonDetailsOnPlanSub, addonDetailsOnPlanSub) || other.addonDetailsOnPlanSub == addonDetailsOnPlanSub));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,subscriptionId,status,cancelAtPeriodEnd,createdAt,updatedAt,startDate,planId,endDate,trialEndDate,canceledAt,paymentProviderSubscriptionId,addonId,paymentProviderCustomerId,paymentProvider,paymentProviderPlanId,currentStart,currentEnd,paymentUrl,currency,planAmount,totalInvoiceAmount,taxAmount,billingCycle,const DeepCollectionEquality().hash(metadata),planDetails,addonDetailsOnPlanSub]);

@override
String toString() {
  return 'ActiveSubscriptionDetails(subscriptionId: $subscriptionId, status: $status, cancelAtPeriodEnd: $cancelAtPeriodEnd, createdAt: $createdAt, updatedAt: $updatedAt, startDate: $startDate, planId: $planId, endDate: $endDate, trialEndDate: $trialEndDate, canceledAt: $canceledAt, paymentProviderSubscriptionId: $paymentProviderSubscriptionId, addonId: $addonId, paymentProviderCustomerId: $paymentProviderCustomerId, paymentProvider: $paymentProvider, paymentProviderPlanId: $paymentProviderPlanId, currentStart: $currentStart, currentEnd: $currentEnd, paymentUrl: $paymentUrl, currency: $currency, planAmount: $planAmount, totalInvoiceAmount: $totalInvoiceAmount, taxAmount: $taxAmount, billingCycle: $billingCycle, metadata: $metadata, planDetails: $planDetails, addonDetailsOnPlanSub: $addonDetailsOnPlanSub)';
}


}

/// @nodoc
abstract mixin class $ActiveSubscriptionDetailsCopyWith<$Res>  {
  factory $ActiveSubscriptionDetailsCopyWith(ActiveSubscriptionDetails value, $Res Function(ActiveSubscriptionDetails) _then) = _$ActiveSubscriptionDetailsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'subscription_id') String subscriptionId, String status,@JsonKey(name: 'cancel_at_period_end') bool cancelAtPeriodEnd,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime updatedAt,@JsonKey(name: 'start_date') DateTime? startDate,@JsonKey(name: 'plan_id') int? planId,@JsonKey(name: 'end_date') DateTime? endDate,@JsonKey(name: 'trial_end_date') DateTime? trialEndDate,@JsonKey(name: 'canceled_at') DateTime? canceledAt,@JsonKey(name: 'payment_provider_subscription_id') String? paymentProviderSubscriptionId,@JsonKey(name: 'addon_id') int? addonId,@JsonKey(name: 'payment_provider_customer_id') String? paymentProviderCustomerId,@JsonKey(name: 'payment_provider') String? paymentProvider,@JsonKey(name: 'payment_provider_plan_id') String? paymentProviderPlanId,@JsonKey(name: 'current_start') DateTime? currentStart,@JsonKey(name: 'current_end') DateTime? currentEnd,@JsonKey(name: 'payment_url') String? paymentUrl,@JsonKey(name: 'currency') String? currency,@JsonKey(name: 'plan_amount') double? planAmount,@JsonKey(name: 'total_invoice_amount') double? totalInvoiceAmount,@JsonKey(name: 'tax_amount') double? taxAmount,@JsonKey(name: 'billing_cycle') String? billingCycle,@JsonKey(name: 'metadata') Map<String, dynamic>? metadata,@JsonKey(name: 'plan_details') PlanDetails? planDetails,@JsonKey(name: 'addon_details_on_plan_sub') AddonDetails? addonDetailsOnPlanSub
});


$PlanDetailsCopyWith<$Res>? get planDetails;$AddonDetailsCopyWith<$Res>? get addonDetailsOnPlanSub;

}
/// @nodoc
class _$ActiveSubscriptionDetailsCopyWithImpl<$Res>
    implements $ActiveSubscriptionDetailsCopyWith<$Res> {
  _$ActiveSubscriptionDetailsCopyWithImpl(this._self, this._then);

  final ActiveSubscriptionDetails _self;
  final $Res Function(ActiveSubscriptionDetails) _then;

/// Create a copy of ActiveSubscriptionDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subscriptionId = null,Object? status = null,Object? cancelAtPeriodEnd = null,Object? createdAt = null,Object? updatedAt = null,Object? startDate = freezed,Object? planId = freezed,Object? endDate = freezed,Object? trialEndDate = freezed,Object? canceledAt = freezed,Object? paymentProviderSubscriptionId = freezed,Object? addonId = freezed,Object? paymentProviderCustomerId = freezed,Object? paymentProvider = freezed,Object? paymentProviderPlanId = freezed,Object? currentStart = freezed,Object? currentEnd = freezed,Object? paymentUrl = freezed,Object? currency = freezed,Object? planAmount = freezed,Object? totalInvoiceAmount = freezed,Object? taxAmount = freezed,Object? billingCycle = freezed,Object? metadata = freezed,Object? planDetails = freezed,Object? addonDetailsOnPlanSub = freezed,}) {
  return _then(_self.copyWith(
subscriptionId: null == subscriptionId ? _self.subscriptionId : subscriptionId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,cancelAtPeriodEnd: null == cancelAtPeriodEnd ? _self.cancelAtPeriodEnd : cancelAtPeriodEnd // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,planId: freezed == planId ? _self.planId : planId // ignore: cast_nullable_to_non_nullable
as int?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,trialEndDate: freezed == trialEndDate ? _self.trialEndDate : trialEndDate // ignore: cast_nullable_to_non_nullable
as DateTime?,canceledAt: freezed == canceledAt ? _self.canceledAt : canceledAt // ignore: cast_nullable_to_non_nullable
as DateTime?,paymentProviderSubscriptionId: freezed == paymentProviderSubscriptionId ? _self.paymentProviderSubscriptionId : paymentProviderSubscriptionId // ignore: cast_nullable_to_non_nullable
as String?,addonId: freezed == addonId ? _self.addonId : addonId // ignore: cast_nullable_to_non_nullable
as int?,paymentProviderCustomerId: freezed == paymentProviderCustomerId ? _self.paymentProviderCustomerId : paymentProviderCustomerId // ignore: cast_nullable_to_non_nullable
as String?,paymentProvider: freezed == paymentProvider ? _self.paymentProvider : paymentProvider // ignore: cast_nullable_to_non_nullable
as String?,paymentProviderPlanId: freezed == paymentProviderPlanId ? _self.paymentProviderPlanId : paymentProviderPlanId // ignore: cast_nullable_to_non_nullable
as String?,currentStart: freezed == currentStart ? _self.currentStart : currentStart // ignore: cast_nullable_to_non_nullable
as DateTime?,currentEnd: freezed == currentEnd ? _self.currentEnd : currentEnd // ignore: cast_nullable_to_non_nullable
as DateTime?,paymentUrl: freezed == paymentUrl ? _self.paymentUrl : paymentUrl // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,planAmount: freezed == planAmount ? _self.planAmount : planAmount // ignore: cast_nullable_to_non_nullable
as double?,totalInvoiceAmount: freezed == totalInvoiceAmount ? _self.totalInvoiceAmount : totalInvoiceAmount // ignore: cast_nullable_to_non_nullable
as double?,taxAmount: freezed == taxAmount ? _self.taxAmount : taxAmount // ignore: cast_nullable_to_non_nullable
as double?,billingCycle: freezed == billingCycle ? _self.billingCycle : billingCycle // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,planDetails: freezed == planDetails ? _self.planDetails : planDetails // ignore: cast_nullable_to_non_nullable
as PlanDetails?,addonDetailsOnPlanSub: freezed == addonDetailsOnPlanSub ? _self.addonDetailsOnPlanSub : addonDetailsOnPlanSub // ignore: cast_nullable_to_non_nullable
as AddonDetails?,
  ));
}
/// Create a copy of ActiveSubscriptionDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlanDetailsCopyWith<$Res>? get planDetails {
    if (_self.planDetails == null) {
    return null;
  }

  return $PlanDetailsCopyWith<$Res>(_self.planDetails!, (value) {
    return _then(_self.copyWith(planDetails: value));
  });
}/// Create a copy of ActiveSubscriptionDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddonDetailsCopyWith<$Res>? get addonDetailsOnPlanSub {
    if (_self.addonDetailsOnPlanSub == null) {
    return null;
  }

  return $AddonDetailsCopyWith<$Res>(_self.addonDetailsOnPlanSub!, (value) {
    return _then(_self.copyWith(addonDetailsOnPlanSub: value));
  });
}
}


/// Adds pattern-matching-related methods to [ActiveSubscriptionDetails].
extension ActiveSubscriptionDetailsPatterns on ActiveSubscriptionDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActiveSubscriptionDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActiveSubscriptionDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActiveSubscriptionDetails value)  $default,){
final _that = this;
switch (_that) {
case _ActiveSubscriptionDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActiveSubscriptionDetails value)?  $default,){
final _that = this;
switch (_that) {
case _ActiveSubscriptionDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'subscription_id')  String subscriptionId,  String status, @JsonKey(name: 'cancel_at_period_end')  bool cancelAtPeriodEnd, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt, @JsonKey(name: 'start_date')  DateTime? startDate, @JsonKey(name: 'plan_id')  int? planId, @JsonKey(name: 'end_date')  DateTime? endDate, @JsonKey(name: 'trial_end_date')  DateTime? trialEndDate, @JsonKey(name: 'canceled_at')  DateTime? canceledAt, @JsonKey(name: 'payment_provider_subscription_id')  String? paymentProviderSubscriptionId, @JsonKey(name: 'addon_id')  int? addonId, @JsonKey(name: 'payment_provider_customer_id')  String? paymentProviderCustomerId, @JsonKey(name: 'payment_provider')  String? paymentProvider, @JsonKey(name: 'payment_provider_plan_id')  String? paymentProviderPlanId, @JsonKey(name: 'current_start')  DateTime? currentStart, @JsonKey(name: 'current_end')  DateTime? currentEnd, @JsonKey(name: 'payment_url')  String? paymentUrl, @JsonKey(name: 'currency')  String? currency, @JsonKey(name: 'plan_amount')  double? planAmount, @JsonKey(name: 'total_invoice_amount')  double? totalInvoiceAmount, @JsonKey(name: 'tax_amount')  double? taxAmount, @JsonKey(name: 'billing_cycle')  String? billingCycle, @JsonKey(name: 'metadata')  Map<String, dynamic>? metadata, @JsonKey(name: 'plan_details')  PlanDetails? planDetails, @JsonKey(name: 'addon_details_on_plan_sub')  AddonDetails? addonDetailsOnPlanSub)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActiveSubscriptionDetails() when $default != null:
return $default(_that.subscriptionId,_that.status,_that.cancelAtPeriodEnd,_that.createdAt,_that.updatedAt,_that.startDate,_that.planId,_that.endDate,_that.trialEndDate,_that.canceledAt,_that.paymentProviderSubscriptionId,_that.addonId,_that.paymentProviderCustomerId,_that.paymentProvider,_that.paymentProviderPlanId,_that.currentStart,_that.currentEnd,_that.paymentUrl,_that.currency,_that.planAmount,_that.totalInvoiceAmount,_that.taxAmount,_that.billingCycle,_that.metadata,_that.planDetails,_that.addonDetailsOnPlanSub);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'subscription_id')  String subscriptionId,  String status, @JsonKey(name: 'cancel_at_period_end')  bool cancelAtPeriodEnd, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt, @JsonKey(name: 'start_date')  DateTime? startDate, @JsonKey(name: 'plan_id')  int? planId, @JsonKey(name: 'end_date')  DateTime? endDate, @JsonKey(name: 'trial_end_date')  DateTime? trialEndDate, @JsonKey(name: 'canceled_at')  DateTime? canceledAt, @JsonKey(name: 'payment_provider_subscription_id')  String? paymentProviderSubscriptionId, @JsonKey(name: 'addon_id')  int? addonId, @JsonKey(name: 'payment_provider_customer_id')  String? paymentProviderCustomerId, @JsonKey(name: 'payment_provider')  String? paymentProvider, @JsonKey(name: 'payment_provider_plan_id')  String? paymentProviderPlanId, @JsonKey(name: 'current_start')  DateTime? currentStart, @JsonKey(name: 'current_end')  DateTime? currentEnd, @JsonKey(name: 'payment_url')  String? paymentUrl, @JsonKey(name: 'currency')  String? currency, @JsonKey(name: 'plan_amount')  double? planAmount, @JsonKey(name: 'total_invoice_amount')  double? totalInvoiceAmount, @JsonKey(name: 'tax_amount')  double? taxAmount, @JsonKey(name: 'billing_cycle')  String? billingCycle, @JsonKey(name: 'metadata')  Map<String, dynamic>? metadata, @JsonKey(name: 'plan_details')  PlanDetails? planDetails, @JsonKey(name: 'addon_details_on_plan_sub')  AddonDetails? addonDetailsOnPlanSub)  $default,) {final _that = this;
switch (_that) {
case _ActiveSubscriptionDetails():
return $default(_that.subscriptionId,_that.status,_that.cancelAtPeriodEnd,_that.createdAt,_that.updatedAt,_that.startDate,_that.planId,_that.endDate,_that.trialEndDate,_that.canceledAt,_that.paymentProviderSubscriptionId,_that.addonId,_that.paymentProviderCustomerId,_that.paymentProvider,_that.paymentProviderPlanId,_that.currentStart,_that.currentEnd,_that.paymentUrl,_that.currency,_that.planAmount,_that.totalInvoiceAmount,_that.taxAmount,_that.billingCycle,_that.metadata,_that.planDetails,_that.addonDetailsOnPlanSub);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'subscription_id')  String subscriptionId,  String status, @JsonKey(name: 'cancel_at_period_end')  bool cancelAtPeriodEnd, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt, @JsonKey(name: 'start_date')  DateTime? startDate, @JsonKey(name: 'plan_id')  int? planId, @JsonKey(name: 'end_date')  DateTime? endDate, @JsonKey(name: 'trial_end_date')  DateTime? trialEndDate, @JsonKey(name: 'canceled_at')  DateTime? canceledAt, @JsonKey(name: 'payment_provider_subscription_id')  String? paymentProviderSubscriptionId, @JsonKey(name: 'addon_id')  int? addonId, @JsonKey(name: 'payment_provider_customer_id')  String? paymentProviderCustomerId, @JsonKey(name: 'payment_provider')  String? paymentProvider, @JsonKey(name: 'payment_provider_plan_id')  String? paymentProviderPlanId, @JsonKey(name: 'current_start')  DateTime? currentStart, @JsonKey(name: 'current_end')  DateTime? currentEnd, @JsonKey(name: 'payment_url')  String? paymentUrl, @JsonKey(name: 'currency')  String? currency, @JsonKey(name: 'plan_amount')  double? planAmount, @JsonKey(name: 'total_invoice_amount')  double? totalInvoiceAmount, @JsonKey(name: 'tax_amount')  double? taxAmount, @JsonKey(name: 'billing_cycle')  String? billingCycle, @JsonKey(name: 'metadata')  Map<String, dynamic>? metadata, @JsonKey(name: 'plan_details')  PlanDetails? planDetails, @JsonKey(name: 'addon_details_on_plan_sub')  AddonDetails? addonDetailsOnPlanSub)?  $default,) {final _that = this;
switch (_that) {
case _ActiveSubscriptionDetails() when $default != null:
return $default(_that.subscriptionId,_that.status,_that.cancelAtPeriodEnd,_that.createdAt,_that.updatedAt,_that.startDate,_that.planId,_that.endDate,_that.trialEndDate,_that.canceledAt,_that.paymentProviderSubscriptionId,_that.addonId,_that.paymentProviderCustomerId,_that.paymentProvider,_that.paymentProviderPlanId,_that.currentStart,_that.currentEnd,_that.paymentUrl,_that.currency,_that.planAmount,_that.totalInvoiceAmount,_that.taxAmount,_that.billingCycle,_that.metadata,_that.planDetails,_that.addonDetailsOnPlanSub);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _ActiveSubscriptionDetails implements ActiveSubscriptionDetails {
  const _ActiveSubscriptionDetails({@JsonKey(name: 'subscription_id') required this.subscriptionId, required this.status, @JsonKey(name: 'cancel_at_period_end') required this.cancelAtPeriodEnd, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') required this.updatedAt, @JsonKey(name: 'start_date') this.startDate, @JsonKey(name: 'plan_id') this.planId, @JsonKey(name: 'end_date') this.endDate, @JsonKey(name: 'trial_end_date') this.trialEndDate, @JsonKey(name: 'canceled_at') this.canceledAt, @JsonKey(name: 'payment_provider_subscription_id') this.paymentProviderSubscriptionId, @JsonKey(name: 'addon_id') this.addonId, @JsonKey(name: 'payment_provider_customer_id') this.paymentProviderCustomerId, @JsonKey(name: 'payment_provider') this.paymentProvider, @JsonKey(name: 'payment_provider_plan_id') this.paymentProviderPlanId, @JsonKey(name: 'current_start') this.currentStart, @JsonKey(name: 'current_end') this.currentEnd, @JsonKey(name: 'payment_url') this.paymentUrl, @JsonKey(name: 'currency') this.currency, @JsonKey(name: 'plan_amount') this.planAmount, @JsonKey(name: 'total_invoice_amount') this.totalInvoiceAmount, @JsonKey(name: 'tax_amount') this.taxAmount, @JsonKey(name: 'billing_cycle') this.billingCycle, @JsonKey(name: 'metadata') final  Map<String, dynamic>? metadata, @JsonKey(name: 'plan_details') this.planDetails, @JsonKey(name: 'addon_details_on_plan_sub') this.addonDetailsOnPlanSub}): _metadata = metadata;
  factory _ActiveSubscriptionDetails.fromJson(Map<String, dynamic> json) => _$ActiveSubscriptionDetailsFromJson(json);

@override@JsonKey(name: 'subscription_id') final  String subscriptionId;
@override final  String status;
@override@JsonKey(name: 'cancel_at_period_end') final  bool cancelAtPeriodEnd;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime updatedAt;
@override@JsonKey(name: 'start_date') final  DateTime? startDate;
// Made nullable to match potential DB values
@override@JsonKey(name: 'plan_id') final  int? planId;
@override@JsonKey(name: 'end_date') final  DateTime? endDate;
@override@JsonKey(name: 'trial_end_date') final  DateTime? trialEndDate;
@override@JsonKey(name: 'canceled_at') final  DateTime? canceledAt;
@override@JsonKey(name: 'payment_provider_subscription_id') final  String? paymentProviderSubscriptionId;
@override@JsonKey(name: 'addon_id') final  int? addonId;
// This is for an addon potentially linked to a plan subscription
@override@JsonKey(name: 'payment_provider_customer_id') final  String? paymentProviderCustomerId;
@override@JsonKey(name: 'payment_provider') final  String? paymentProvider;
@override@JsonKey(name: 'payment_provider_plan_id') final  String? paymentProviderPlanId;
@override@JsonKey(name: 'current_start') final  DateTime? currentStart;
@override@JsonKey(name: 'current_end') final  DateTime? currentEnd;
@override@JsonKey(name: 'payment_url') final  String? paymentUrl;
@override@JsonKey(name: 'currency') final  String? currency;
@override@JsonKey(name: 'plan_amount') final  double? planAmount;
@override@JsonKey(name: 'total_invoice_amount') final  double? totalInvoiceAmount;
@override@JsonKey(name: 'tax_amount') final  double? taxAmount;
@override@JsonKey(name: 'billing_cycle') final  String? billingCycle;
// Assuming BillingCycleEnum or String
 final  Map<String, dynamic>? _metadata;
// Assuming BillingCycleEnum or String
@override@JsonKey(name: 'metadata') Map<String, dynamic>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override@JsonKey(name: 'plan_details') final  PlanDetails? planDetails;
// Renamed from 'plan' for clarity
@override@JsonKey(name: 'addon_details_on_plan_sub') final  AddonDetails? addonDetailsOnPlanSub;

/// Create a copy of ActiveSubscriptionDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActiveSubscriptionDetailsCopyWith<_ActiveSubscriptionDetails> get copyWith => __$ActiveSubscriptionDetailsCopyWithImpl<_ActiveSubscriptionDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActiveSubscriptionDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActiveSubscriptionDetails&&(identical(other.subscriptionId, subscriptionId) || other.subscriptionId == subscriptionId)&&(identical(other.status, status) || other.status == status)&&(identical(other.cancelAtPeriodEnd, cancelAtPeriodEnd) || other.cancelAtPeriodEnd == cancelAtPeriodEnd)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.planId, planId) || other.planId == planId)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.trialEndDate, trialEndDate) || other.trialEndDate == trialEndDate)&&(identical(other.canceledAt, canceledAt) || other.canceledAt == canceledAt)&&(identical(other.paymentProviderSubscriptionId, paymentProviderSubscriptionId) || other.paymentProviderSubscriptionId == paymentProviderSubscriptionId)&&(identical(other.addonId, addonId) || other.addonId == addonId)&&(identical(other.paymentProviderCustomerId, paymentProviderCustomerId) || other.paymentProviderCustomerId == paymentProviderCustomerId)&&(identical(other.paymentProvider, paymentProvider) || other.paymentProvider == paymentProvider)&&(identical(other.paymentProviderPlanId, paymentProviderPlanId) || other.paymentProviderPlanId == paymentProviderPlanId)&&(identical(other.currentStart, currentStart) || other.currentStart == currentStart)&&(identical(other.currentEnd, currentEnd) || other.currentEnd == currentEnd)&&(identical(other.paymentUrl, paymentUrl) || other.paymentUrl == paymentUrl)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.planAmount, planAmount) || other.planAmount == planAmount)&&(identical(other.totalInvoiceAmount, totalInvoiceAmount) || other.totalInvoiceAmount == totalInvoiceAmount)&&(identical(other.taxAmount, taxAmount) || other.taxAmount == taxAmount)&&(identical(other.billingCycle, billingCycle) || other.billingCycle == billingCycle)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&(identical(other.planDetails, planDetails) || other.planDetails == planDetails)&&(identical(other.addonDetailsOnPlanSub, addonDetailsOnPlanSub) || other.addonDetailsOnPlanSub == addonDetailsOnPlanSub));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,subscriptionId,status,cancelAtPeriodEnd,createdAt,updatedAt,startDate,planId,endDate,trialEndDate,canceledAt,paymentProviderSubscriptionId,addonId,paymentProviderCustomerId,paymentProvider,paymentProviderPlanId,currentStart,currentEnd,paymentUrl,currency,planAmount,totalInvoiceAmount,taxAmount,billingCycle,const DeepCollectionEquality().hash(_metadata),planDetails,addonDetailsOnPlanSub]);

@override
String toString() {
  return 'ActiveSubscriptionDetails(subscriptionId: $subscriptionId, status: $status, cancelAtPeriodEnd: $cancelAtPeriodEnd, createdAt: $createdAt, updatedAt: $updatedAt, startDate: $startDate, planId: $planId, endDate: $endDate, trialEndDate: $trialEndDate, canceledAt: $canceledAt, paymentProviderSubscriptionId: $paymentProviderSubscriptionId, addonId: $addonId, paymentProviderCustomerId: $paymentProviderCustomerId, paymentProvider: $paymentProvider, paymentProviderPlanId: $paymentProviderPlanId, currentStart: $currentStart, currentEnd: $currentEnd, paymentUrl: $paymentUrl, currency: $currency, planAmount: $planAmount, totalInvoiceAmount: $totalInvoiceAmount, taxAmount: $taxAmount, billingCycle: $billingCycle, metadata: $metadata, planDetails: $planDetails, addonDetailsOnPlanSub: $addonDetailsOnPlanSub)';
}


}

/// @nodoc
abstract mixin class _$ActiveSubscriptionDetailsCopyWith<$Res> implements $ActiveSubscriptionDetailsCopyWith<$Res> {
  factory _$ActiveSubscriptionDetailsCopyWith(_ActiveSubscriptionDetails value, $Res Function(_ActiveSubscriptionDetails) _then) = __$ActiveSubscriptionDetailsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'subscription_id') String subscriptionId, String status,@JsonKey(name: 'cancel_at_period_end') bool cancelAtPeriodEnd,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime updatedAt,@JsonKey(name: 'start_date') DateTime? startDate,@JsonKey(name: 'plan_id') int? planId,@JsonKey(name: 'end_date') DateTime? endDate,@JsonKey(name: 'trial_end_date') DateTime? trialEndDate,@JsonKey(name: 'canceled_at') DateTime? canceledAt,@JsonKey(name: 'payment_provider_subscription_id') String? paymentProviderSubscriptionId,@JsonKey(name: 'addon_id') int? addonId,@JsonKey(name: 'payment_provider_customer_id') String? paymentProviderCustomerId,@JsonKey(name: 'payment_provider') String? paymentProvider,@JsonKey(name: 'payment_provider_plan_id') String? paymentProviderPlanId,@JsonKey(name: 'current_start') DateTime? currentStart,@JsonKey(name: 'current_end') DateTime? currentEnd,@JsonKey(name: 'payment_url') String? paymentUrl,@JsonKey(name: 'currency') String? currency,@JsonKey(name: 'plan_amount') double? planAmount,@JsonKey(name: 'total_invoice_amount') double? totalInvoiceAmount,@JsonKey(name: 'tax_amount') double? taxAmount,@JsonKey(name: 'billing_cycle') String? billingCycle,@JsonKey(name: 'metadata') Map<String, dynamic>? metadata,@JsonKey(name: 'plan_details') PlanDetails? planDetails,@JsonKey(name: 'addon_details_on_plan_sub') AddonDetails? addonDetailsOnPlanSub
});


@override $PlanDetailsCopyWith<$Res>? get planDetails;@override $AddonDetailsCopyWith<$Res>? get addonDetailsOnPlanSub;

}
/// @nodoc
class __$ActiveSubscriptionDetailsCopyWithImpl<$Res>
    implements _$ActiveSubscriptionDetailsCopyWith<$Res> {
  __$ActiveSubscriptionDetailsCopyWithImpl(this._self, this._then);

  final _ActiveSubscriptionDetails _self;
  final $Res Function(_ActiveSubscriptionDetails) _then;

/// Create a copy of ActiveSubscriptionDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subscriptionId = null,Object? status = null,Object? cancelAtPeriodEnd = null,Object? createdAt = null,Object? updatedAt = null,Object? startDate = freezed,Object? planId = freezed,Object? endDate = freezed,Object? trialEndDate = freezed,Object? canceledAt = freezed,Object? paymentProviderSubscriptionId = freezed,Object? addonId = freezed,Object? paymentProviderCustomerId = freezed,Object? paymentProvider = freezed,Object? paymentProviderPlanId = freezed,Object? currentStart = freezed,Object? currentEnd = freezed,Object? paymentUrl = freezed,Object? currency = freezed,Object? planAmount = freezed,Object? totalInvoiceAmount = freezed,Object? taxAmount = freezed,Object? billingCycle = freezed,Object? metadata = freezed,Object? planDetails = freezed,Object? addonDetailsOnPlanSub = freezed,}) {
  return _then(_ActiveSubscriptionDetails(
subscriptionId: null == subscriptionId ? _self.subscriptionId : subscriptionId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,cancelAtPeriodEnd: null == cancelAtPeriodEnd ? _self.cancelAtPeriodEnd : cancelAtPeriodEnd // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,planId: freezed == planId ? _self.planId : planId // ignore: cast_nullable_to_non_nullable
as int?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,trialEndDate: freezed == trialEndDate ? _self.trialEndDate : trialEndDate // ignore: cast_nullable_to_non_nullable
as DateTime?,canceledAt: freezed == canceledAt ? _self.canceledAt : canceledAt // ignore: cast_nullable_to_non_nullable
as DateTime?,paymentProviderSubscriptionId: freezed == paymentProviderSubscriptionId ? _self.paymentProviderSubscriptionId : paymentProviderSubscriptionId // ignore: cast_nullable_to_non_nullable
as String?,addonId: freezed == addonId ? _self.addonId : addonId // ignore: cast_nullable_to_non_nullable
as int?,paymentProviderCustomerId: freezed == paymentProviderCustomerId ? _self.paymentProviderCustomerId : paymentProviderCustomerId // ignore: cast_nullable_to_non_nullable
as String?,paymentProvider: freezed == paymentProvider ? _self.paymentProvider : paymentProvider // ignore: cast_nullable_to_non_nullable
as String?,paymentProviderPlanId: freezed == paymentProviderPlanId ? _self.paymentProviderPlanId : paymentProviderPlanId // ignore: cast_nullable_to_non_nullable
as String?,currentStart: freezed == currentStart ? _self.currentStart : currentStart // ignore: cast_nullable_to_non_nullable
as DateTime?,currentEnd: freezed == currentEnd ? _self.currentEnd : currentEnd // ignore: cast_nullable_to_non_nullable
as DateTime?,paymentUrl: freezed == paymentUrl ? _self.paymentUrl : paymentUrl // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,planAmount: freezed == planAmount ? _self.planAmount : planAmount // ignore: cast_nullable_to_non_nullable
as double?,totalInvoiceAmount: freezed == totalInvoiceAmount ? _self.totalInvoiceAmount : totalInvoiceAmount // ignore: cast_nullable_to_non_nullable
as double?,taxAmount: freezed == taxAmount ? _self.taxAmount : taxAmount // ignore: cast_nullable_to_non_nullable
as double?,billingCycle: freezed == billingCycle ? _self.billingCycle : billingCycle // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,planDetails: freezed == planDetails ? _self.planDetails : planDetails // ignore: cast_nullable_to_non_nullable
as PlanDetails?,addonDetailsOnPlanSub: freezed == addonDetailsOnPlanSub ? _self.addonDetailsOnPlanSub : addonDetailsOnPlanSub // ignore: cast_nullable_to_non_nullable
as AddonDetails?,
  ));
}

/// Create a copy of ActiveSubscriptionDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlanDetailsCopyWith<$Res>? get planDetails {
    if (_self.planDetails == null) {
    return null;
  }

  return $PlanDetailsCopyWith<$Res>(_self.planDetails!, (value) {
    return _then(_self.copyWith(planDetails: value));
  });
}/// Create a copy of ActiveSubscriptionDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddonDetailsCopyWith<$Res>? get addonDetailsOnPlanSub {
    if (_self.addonDetailsOnPlanSub == null) {
    return null;
  }

  return $AddonDetailsCopyWith<$Res>(_self.addonDetailsOnPlanSub!, (value) {
    return _then(_self.copyWith(addonDetailsOnPlanSub: value));
  });
}
}


/// @nodoc
mixin _$ActiveAddonSubscription {

@JsonKey(name: 'subscription_id') String get subscriptionId;@JsonKey(name: 'addon_id') int get addonId; String get status;@JsonKey(name: 'cancel_at_period_end') bool get cancelAtPeriodEnd;@JsonKey(name: 'billing_cycle') String get billingCycle;// Assuming BillingCycleEnum or String, @JsonKey(name: 'created_at') required DateTime createdAt, @JsonKey(name: 'updated_at') required DateTime updatedAt, @JsonKey(name: 'addon_details') required AddonDetails addonDetails, @JsonKey(name: 'start_date') DateTime? startDate,
@JsonKey(name: 'end_date') DateTime? get endDate;@JsonKey(name: 'trial_end_date') DateTime? get trialEndDate;@JsonKey(name: 'canceled_at') DateTime? get canceledAt;@JsonKey(name: 'payment_provider_subscription_id') String? get paymentProviderSubscriptionId;@JsonKey(name: 'payment_provider_customer_id') String? get paymentProviderCustomerId;@JsonKey(name: 'payment_provider') String? get paymentProvider;@JsonKey(name: 'payment_provider_plan_id') String? get paymentProviderPlanId;// ID from provider for the item
@JsonKey(name: 'current_start') DateTime? get currentStart;@JsonKey(name: 'current_end') DateTime? get currentEnd;@JsonKey(name: 'payment_url') String? get paymentUrl;@JsonKey(name: 'currency') String? get currency;@JsonKey(name: 'subscribed_amount') double? get subscribedAmount;// Price of the addon for this sub
@JsonKey(name: 'total_invoice_amount') double? get totalInvoiceAmount;@JsonKey(name: 'tax_amount') double? get taxAmount;@JsonKey(name: 'metadata') Map<String, dynamic>? get metadata;
/// Create a copy of ActiveAddonSubscription
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActiveAddonSubscriptionCopyWith<ActiveAddonSubscription> get copyWith => _$ActiveAddonSubscriptionCopyWithImpl<ActiveAddonSubscription>(this as ActiveAddonSubscription, _$identity);

  /// Serializes this ActiveAddonSubscription to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActiveAddonSubscription&&(identical(other.subscriptionId, subscriptionId) || other.subscriptionId == subscriptionId)&&(identical(other.addonId, addonId) || other.addonId == addonId)&&(identical(other.status, status) || other.status == status)&&(identical(other.cancelAtPeriodEnd, cancelAtPeriodEnd) || other.cancelAtPeriodEnd == cancelAtPeriodEnd)&&(identical(other.billingCycle, billingCycle) || other.billingCycle == billingCycle)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.trialEndDate, trialEndDate) || other.trialEndDate == trialEndDate)&&(identical(other.canceledAt, canceledAt) || other.canceledAt == canceledAt)&&(identical(other.paymentProviderSubscriptionId, paymentProviderSubscriptionId) || other.paymentProviderSubscriptionId == paymentProviderSubscriptionId)&&(identical(other.paymentProviderCustomerId, paymentProviderCustomerId) || other.paymentProviderCustomerId == paymentProviderCustomerId)&&(identical(other.paymentProvider, paymentProvider) || other.paymentProvider == paymentProvider)&&(identical(other.paymentProviderPlanId, paymentProviderPlanId) || other.paymentProviderPlanId == paymentProviderPlanId)&&(identical(other.currentStart, currentStart) || other.currentStart == currentStart)&&(identical(other.currentEnd, currentEnd) || other.currentEnd == currentEnd)&&(identical(other.paymentUrl, paymentUrl) || other.paymentUrl == paymentUrl)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.subscribedAmount, subscribedAmount) || other.subscribedAmount == subscribedAmount)&&(identical(other.totalInvoiceAmount, totalInvoiceAmount) || other.totalInvoiceAmount == totalInvoiceAmount)&&(identical(other.taxAmount, taxAmount) || other.taxAmount == taxAmount)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,subscriptionId,addonId,status,cancelAtPeriodEnd,billingCycle,endDate,trialEndDate,canceledAt,paymentProviderSubscriptionId,paymentProviderCustomerId,paymentProvider,paymentProviderPlanId,currentStart,currentEnd,paymentUrl,currency,subscribedAmount,totalInvoiceAmount,taxAmount,const DeepCollectionEquality().hash(metadata)]);

@override
String toString() {
  return 'ActiveAddonSubscription(subscriptionId: $subscriptionId, addonId: $addonId, status: $status, cancelAtPeriodEnd: $cancelAtPeriodEnd, billingCycle: $billingCycle, endDate: $endDate, trialEndDate: $trialEndDate, canceledAt: $canceledAt, paymentProviderSubscriptionId: $paymentProviderSubscriptionId, paymentProviderCustomerId: $paymentProviderCustomerId, paymentProvider: $paymentProvider, paymentProviderPlanId: $paymentProviderPlanId, currentStart: $currentStart, currentEnd: $currentEnd, paymentUrl: $paymentUrl, currency: $currency, subscribedAmount: $subscribedAmount, totalInvoiceAmount: $totalInvoiceAmount, taxAmount: $taxAmount, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $ActiveAddonSubscriptionCopyWith<$Res>  {
  factory $ActiveAddonSubscriptionCopyWith(ActiveAddonSubscription value, $Res Function(ActiveAddonSubscription) _then) = _$ActiveAddonSubscriptionCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'subscription_id') String subscriptionId,@JsonKey(name: 'addon_id') int addonId, String status,@JsonKey(name: 'cancel_at_period_end') bool cancelAtPeriodEnd,@JsonKey(name: 'billing_cycle') String billingCycle,@JsonKey(name: 'end_date') DateTime? endDate,@JsonKey(name: 'trial_end_date') DateTime? trialEndDate,@JsonKey(name: 'canceled_at') DateTime? canceledAt,@JsonKey(name: 'payment_provider_subscription_id') String? paymentProviderSubscriptionId,@JsonKey(name: 'payment_provider_customer_id') String? paymentProviderCustomerId,@JsonKey(name: 'payment_provider') String? paymentProvider,@JsonKey(name: 'payment_provider_plan_id') String? paymentProviderPlanId,@JsonKey(name: 'current_start') DateTime? currentStart,@JsonKey(name: 'current_end') DateTime? currentEnd,@JsonKey(name: 'payment_url') String? paymentUrl,@JsonKey(name: 'currency') String? currency,@JsonKey(name: 'subscribed_amount') double? subscribedAmount,@JsonKey(name: 'total_invoice_amount') double? totalInvoiceAmount,@JsonKey(name: 'tax_amount') double? taxAmount,@JsonKey(name: 'metadata') Map<String, dynamic>? metadata
});




}
/// @nodoc
class _$ActiveAddonSubscriptionCopyWithImpl<$Res>
    implements $ActiveAddonSubscriptionCopyWith<$Res> {
  _$ActiveAddonSubscriptionCopyWithImpl(this._self, this._then);

  final ActiveAddonSubscription _self;
  final $Res Function(ActiveAddonSubscription) _then;

/// Create a copy of ActiveAddonSubscription
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subscriptionId = null,Object? addonId = null,Object? status = null,Object? cancelAtPeriodEnd = null,Object? billingCycle = null,Object? endDate = freezed,Object? trialEndDate = freezed,Object? canceledAt = freezed,Object? paymentProviderSubscriptionId = freezed,Object? paymentProviderCustomerId = freezed,Object? paymentProvider = freezed,Object? paymentProviderPlanId = freezed,Object? currentStart = freezed,Object? currentEnd = freezed,Object? paymentUrl = freezed,Object? currency = freezed,Object? subscribedAmount = freezed,Object? totalInvoiceAmount = freezed,Object? taxAmount = freezed,Object? metadata = freezed,}) {
  return _then(_self.copyWith(
subscriptionId: null == subscriptionId ? _self.subscriptionId : subscriptionId // ignore: cast_nullable_to_non_nullable
as String,addonId: null == addonId ? _self.addonId : addonId // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,cancelAtPeriodEnd: null == cancelAtPeriodEnd ? _self.cancelAtPeriodEnd : cancelAtPeriodEnd // ignore: cast_nullable_to_non_nullable
as bool,billingCycle: null == billingCycle ? _self.billingCycle : billingCycle // ignore: cast_nullable_to_non_nullable
as String,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,trialEndDate: freezed == trialEndDate ? _self.trialEndDate : trialEndDate // ignore: cast_nullable_to_non_nullable
as DateTime?,canceledAt: freezed == canceledAt ? _self.canceledAt : canceledAt // ignore: cast_nullable_to_non_nullable
as DateTime?,paymentProviderSubscriptionId: freezed == paymentProviderSubscriptionId ? _self.paymentProviderSubscriptionId : paymentProviderSubscriptionId // ignore: cast_nullable_to_non_nullable
as String?,paymentProviderCustomerId: freezed == paymentProviderCustomerId ? _self.paymentProviderCustomerId : paymentProviderCustomerId // ignore: cast_nullable_to_non_nullable
as String?,paymentProvider: freezed == paymentProvider ? _self.paymentProvider : paymentProvider // ignore: cast_nullable_to_non_nullable
as String?,paymentProviderPlanId: freezed == paymentProviderPlanId ? _self.paymentProviderPlanId : paymentProviderPlanId // ignore: cast_nullable_to_non_nullable
as String?,currentStart: freezed == currentStart ? _self.currentStart : currentStart // ignore: cast_nullable_to_non_nullable
as DateTime?,currentEnd: freezed == currentEnd ? _self.currentEnd : currentEnd // ignore: cast_nullable_to_non_nullable
as DateTime?,paymentUrl: freezed == paymentUrl ? _self.paymentUrl : paymentUrl // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,subscribedAmount: freezed == subscribedAmount ? _self.subscribedAmount : subscribedAmount // ignore: cast_nullable_to_non_nullable
as double?,totalInvoiceAmount: freezed == totalInvoiceAmount ? _self.totalInvoiceAmount : totalInvoiceAmount // ignore: cast_nullable_to_non_nullable
as double?,taxAmount: freezed == taxAmount ? _self.taxAmount : taxAmount // ignore: cast_nullable_to_non_nullable
as double?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ActiveAddonSubscription].
extension ActiveAddonSubscriptionPatterns on ActiveAddonSubscription {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActiveAddonSubscription value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActiveAddonSubscription() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActiveAddonSubscription value)  $default,){
final _that = this;
switch (_that) {
case _ActiveAddonSubscription():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActiveAddonSubscription value)?  $default,){
final _that = this;
switch (_that) {
case _ActiveAddonSubscription() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'subscription_id')  String subscriptionId, @JsonKey(name: 'addon_id')  int addonId,  String status, @JsonKey(name: 'cancel_at_period_end')  bool cancelAtPeriodEnd, @JsonKey(name: 'billing_cycle')  String billingCycle, @JsonKey(name: 'end_date')  DateTime? endDate, @JsonKey(name: 'trial_end_date')  DateTime? trialEndDate, @JsonKey(name: 'canceled_at')  DateTime? canceledAt, @JsonKey(name: 'payment_provider_subscription_id')  String? paymentProviderSubscriptionId, @JsonKey(name: 'payment_provider_customer_id')  String? paymentProviderCustomerId, @JsonKey(name: 'payment_provider')  String? paymentProvider, @JsonKey(name: 'payment_provider_plan_id')  String? paymentProviderPlanId, @JsonKey(name: 'current_start')  DateTime? currentStart, @JsonKey(name: 'current_end')  DateTime? currentEnd, @JsonKey(name: 'payment_url')  String? paymentUrl, @JsonKey(name: 'currency')  String? currency, @JsonKey(name: 'subscribed_amount')  double? subscribedAmount, @JsonKey(name: 'total_invoice_amount')  double? totalInvoiceAmount, @JsonKey(name: 'tax_amount')  double? taxAmount, @JsonKey(name: 'metadata')  Map<String, dynamic>? metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActiveAddonSubscription() when $default != null:
return $default(_that.subscriptionId,_that.addonId,_that.status,_that.cancelAtPeriodEnd,_that.billingCycle,_that.endDate,_that.trialEndDate,_that.canceledAt,_that.paymentProviderSubscriptionId,_that.paymentProviderCustomerId,_that.paymentProvider,_that.paymentProviderPlanId,_that.currentStart,_that.currentEnd,_that.paymentUrl,_that.currency,_that.subscribedAmount,_that.totalInvoiceAmount,_that.taxAmount,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'subscription_id')  String subscriptionId, @JsonKey(name: 'addon_id')  int addonId,  String status, @JsonKey(name: 'cancel_at_period_end')  bool cancelAtPeriodEnd, @JsonKey(name: 'billing_cycle')  String billingCycle, @JsonKey(name: 'end_date')  DateTime? endDate, @JsonKey(name: 'trial_end_date')  DateTime? trialEndDate, @JsonKey(name: 'canceled_at')  DateTime? canceledAt, @JsonKey(name: 'payment_provider_subscription_id')  String? paymentProviderSubscriptionId, @JsonKey(name: 'payment_provider_customer_id')  String? paymentProviderCustomerId, @JsonKey(name: 'payment_provider')  String? paymentProvider, @JsonKey(name: 'payment_provider_plan_id')  String? paymentProviderPlanId, @JsonKey(name: 'current_start')  DateTime? currentStart, @JsonKey(name: 'current_end')  DateTime? currentEnd, @JsonKey(name: 'payment_url')  String? paymentUrl, @JsonKey(name: 'currency')  String? currency, @JsonKey(name: 'subscribed_amount')  double? subscribedAmount, @JsonKey(name: 'total_invoice_amount')  double? totalInvoiceAmount, @JsonKey(name: 'tax_amount')  double? taxAmount, @JsonKey(name: 'metadata')  Map<String, dynamic>? metadata)  $default,) {final _that = this;
switch (_that) {
case _ActiveAddonSubscription():
return $default(_that.subscriptionId,_that.addonId,_that.status,_that.cancelAtPeriodEnd,_that.billingCycle,_that.endDate,_that.trialEndDate,_that.canceledAt,_that.paymentProviderSubscriptionId,_that.paymentProviderCustomerId,_that.paymentProvider,_that.paymentProviderPlanId,_that.currentStart,_that.currentEnd,_that.paymentUrl,_that.currency,_that.subscribedAmount,_that.totalInvoiceAmount,_that.taxAmount,_that.metadata);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'subscription_id')  String subscriptionId, @JsonKey(name: 'addon_id')  int addonId,  String status, @JsonKey(name: 'cancel_at_period_end')  bool cancelAtPeriodEnd, @JsonKey(name: 'billing_cycle')  String billingCycle, @JsonKey(name: 'end_date')  DateTime? endDate, @JsonKey(name: 'trial_end_date')  DateTime? trialEndDate, @JsonKey(name: 'canceled_at')  DateTime? canceledAt, @JsonKey(name: 'payment_provider_subscription_id')  String? paymentProviderSubscriptionId, @JsonKey(name: 'payment_provider_customer_id')  String? paymentProviderCustomerId, @JsonKey(name: 'payment_provider')  String? paymentProvider, @JsonKey(name: 'payment_provider_plan_id')  String? paymentProviderPlanId, @JsonKey(name: 'current_start')  DateTime? currentStart, @JsonKey(name: 'current_end')  DateTime? currentEnd, @JsonKey(name: 'payment_url')  String? paymentUrl, @JsonKey(name: 'currency')  String? currency, @JsonKey(name: 'subscribed_amount')  double? subscribedAmount, @JsonKey(name: 'total_invoice_amount')  double? totalInvoiceAmount, @JsonKey(name: 'tax_amount')  double? taxAmount, @JsonKey(name: 'metadata')  Map<String, dynamic>? metadata)?  $default,) {final _that = this;
switch (_that) {
case _ActiveAddonSubscription() when $default != null:
return $default(_that.subscriptionId,_that.addonId,_that.status,_that.cancelAtPeriodEnd,_that.billingCycle,_that.endDate,_that.trialEndDate,_that.canceledAt,_that.paymentProviderSubscriptionId,_that.paymentProviderCustomerId,_that.paymentProvider,_that.paymentProviderPlanId,_that.currentStart,_that.currentEnd,_that.paymentUrl,_that.currency,_that.subscribedAmount,_that.totalInvoiceAmount,_that.taxAmount,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _ActiveAddonSubscription implements ActiveAddonSubscription {
  const _ActiveAddonSubscription({@JsonKey(name: 'subscription_id') required this.subscriptionId, @JsonKey(name: 'addon_id') required this.addonId, required this.status, @JsonKey(name: 'cancel_at_period_end') required this.cancelAtPeriodEnd, @JsonKey(name: 'billing_cycle') required this.billingCycle, @JsonKey(name: 'end_date') this.endDate, @JsonKey(name: 'trial_end_date') this.trialEndDate, @JsonKey(name: 'canceled_at') this.canceledAt, @JsonKey(name: 'payment_provider_subscription_id') this.paymentProviderSubscriptionId, @JsonKey(name: 'payment_provider_customer_id') this.paymentProviderCustomerId, @JsonKey(name: 'payment_provider') this.paymentProvider, @JsonKey(name: 'payment_provider_plan_id') this.paymentProviderPlanId, @JsonKey(name: 'current_start') this.currentStart, @JsonKey(name: 'current_end') this.currentEnd, @JsonKey(name: 'payment_url') this.paymentUrl, @JsonKey(name: 'currency') this.currency, @JsonKey(name: 'subscribed_amount') this.subscribedAmount, @JsonKey(name: 'total_invoice_amount') this.totalInvoiceAmount, @JsonKey(name: 'tax_amount') this.taxAmount, @JsonKey(name: 'metadata') final  Map<String, dynamic>? metadata}): _metadata = metadata;
  factory _ActiveAddonSubscription.fromJson(Map<String, dynamic> json) => _$ActiveAddonSubscriptionFromJson(json);

@override@JsonKey(name: 'subscription_id') final  String subscriptionId;
@override@JsonKey(name: 'addon_id') final  int addonId;
@override final  String status;
@override@JsonKey(name: 'cancel_at_period_end') final  bool cancelAtPeriodEnd;
@override@JsonKey(name: 'billing_cycle') final  String billingCycle;
// Assuming BillingCycleEnum or String, @JsonKey(name: 'created_at') required DateTime createdAt, @JsonKey(name: 'updated_at') required DateTime updatedAt, @JsonKey(name: 'addon_details') required AddonDetails addonDetails, @JsonKey(name: 'start_date') DateTime? startDate,
@override@JsonKey(name: 'end_date') final  DateTime? endDate;
@override@JsonKey(name: 'trial_end_date') final  DateTime? trialEndDate;
@override@JsonKey(name: 'canceled_at') final  DateTime? canceledAt;
@override@JsonKey(name: 'payment_provider_subscription_id') final  String? paymentProviderSubscriptionId;
@override@JsonKey(name: 'payment_provider_customer_id') final  String? paymentProviderCustomerId;
@override@JsonKey(name: 'payment_provider') final  String? paymentProvider;
@override@JsonKey(name: 'payment_provider_plan_id') final  String? paymentProviderPlanId;
// ID from provider for the item
@override@JsonKey(name: 'current_start') final  DateTime? currentStart;
@override@JsonKey(name: 'current_end') final  DateTime? currentEnd;
@override@JsonKey(name: 'payment_url') final  String? paymentUrl;
@override@JsonKey(name: 'currency') final  String? currency;
@override@JsonKey(name: 'subscribed_amount') final  double? subscribedAmount;
// Price of the addon for this sub
@override@JsonKey(name: 'total_invoice_amount') final  double? totalInvoiceAmount;
@override@JsonKey(name: 'tax_amount') final  double? taxAmount;
 final  Map<String, dynamic>? _metadata;
@override@JsonKey(name: 'metadata') Map<String, dynamic>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of ActiveAddonSubscription
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActiveAddonSubscriptionCopyWith<_ActiveAddonSubscription> get copyWith => __$ActiveAddonSubscriptionCopyWithImpl<_ActiveAddonSubscription>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActiveAddonSubscriptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActiveAddonSubscription&&(identical(other.subscriptionId, subscriptionId) || other.subscriptionId == subscriptionId)&&(identical(other.addonId, addonId) || other.addonId == addonId)&&(identical(other.status, status) || other.status == status)&&(identical(other.cancelAtPeriodEnd, cancelAtPeriodEnd) || other.cancelAtPeriodEnd == cancelAtPeriodEnd)&&(identical(other.billingCycle, billingCycle) || other.billingCycle == billingCycle)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.trialEndDate, trialEndDate) || other.trialEndDate == trialEndDate)&&(identical(other.canceledAt, canceledAt) || other.canceledAt == canceledAt)&&(identical(other.paymentProviderSubscriptionId, paymentProviderSubscriptionId) || other.paymentProviderSubscriptionId == paymentProviderSubscriptionId)&&(identical(other.paymentProviderCustomerId, paymentProviderCustomerId) || other.paymentProviderCustomerId == paymentProviderCustomerId)&&(identical(other.paymentProvider, paymentProvider) || other.paymentProvider == paymentProvider)&&(identical(other.paymentProviderPlanId, paymentProviderPlanId) || other.paymentProviderPlanId == paymentProviderPlanId)&&(identical(other.currentStart, currentStart) || other.currentStart == currentStart)&&(identical(other.currentEnd, currentEnd) || other.currentEnd == currentEnd)&&(identical(other.paymentUrl, paymentUrl) || other.paymentUrl == paymentUrl)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.subscribedAmount, subscribedAmount) || other.subscribedAmount == subscribedAmount)&&(identical(other.totalInvoiceAmount, totalInvoiceAmount) || other.totalInvoiceAmount == totalInvoiceAmount)&&(identical(other.taxAmount, taxAmount) || other.taxAmount == taxAmount)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,subscriptionId,addonId,status,cancelAtPeriodEnd,billingCycle,endDate,trialEndDate,canceledAt,paymentProviderSubscriptionId,paymentProviderCustomerId,paymentProvider,paymentProviderPlanId,currentStart,currentEnd,paymentUrl,currency,subscribedAmount,totalInvoiceAmount,taxAmount,const DeepCollectionEquality().hash(_metadata)]);

@override
String toString() {
  return 'ActiveAddonSubscription(subscriptionId: $subscriptionId, addonId: $addonId, status: $status, cancelAtPeriodEnd: $cancelAtPeriodEnd, billingCycle: $billingCycle, endDate: $endDate, trialEndDate: $trialEndDate, canceledAt: $canceledAt, paymentProviderSubscriptionId: $paymentProviderSubscriptionId, paymentProviderCustomerId: $paymentProviderCustomerId, paymentProvider: $paymentProvider, paymentProviderPlanId: $paymentProviderPlanId, currentStart: $currentStart, currentEnd: $currentEnd, paymentUrl: $paymentUrl, currency: $currency, subscribedAmount: $subscribedAmount, totalInvoiceAmount: $totalInvoiceAmount, taxAmount: $taxAmount, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$ActiveAddonSubscriptionCopyWith<$Res> implements $ActiveAddonSubscriptionCopyWith<$Res> {
  factory _$ActiveAddonSubscriptionCopyWith(_ActiveAddonSubscription value, $Res Function(_ActiveAddonSubscription) _then) = __$ActiveAddonSubscriptionCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'subscription_id') String subscriptionId,@JsonKey(name: 'addon_id') int addonId, String status,@JsonKey(name: 'cancel_at_period_end') bool cancelAtPeriodEnd,@JsonKey(name: 'billing_cycle') String billingCycle,@JsonKey(name: 'end_date') DateTime? endDate,@JsonKey(name: 'trial_end_date') DateTime? trialEndDate,@JsonKey(name: 'canceled_at') DateTime? canceledAt,@JsonKey(name: 'payment_provider_subscription_id') String? paymentProviderSubscriptionId,@JsonKey(name: 'payment_provider_customer_id') String? paymentProviderCustomerId,@JsonKey(name: 'payment_provider') String? paymentProvider,@JsonKey(name: 'payment_provider_plan_id') String? paymentProviderPlanId,@JsonKey(name: 'current_start') DateTime? currentStart,@JsonKey(name: 'current_end') DateTime? currentEnd,@JsonKey(name: 'payment_url') String? paymentUrl,@JsonKey(name: 'currency') String? currency,@JsonKey(name: 'subscribed_amount') double? subscribedAmount,@JsonKey(name: 'total_invoice_amount') double? totalInvoiceAmount,@JsonKey(name: 'tax_amount') double? taxAmount,@JsonKey(name: 'metadata') Map<String, dynamic>? metadata
});




}
/// @nodoc
class __$ActiveAddonSubscriptionCopyWithImpl<$Res>
    implements _$ActiveAddonSubscriptionCopyWith<$Res> {
  __$ActiveAddonSubscriptionCopyWithImpl(this._self, this._then);

  final _ActiveAddonSubscription _self;
  final $Res Function(_ActiveAddonSubscription) _then;

/// Create a copy of ActiveAddonSubscription
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subscriptionId = null,Object? addonId = null,Object? status = null,Object? cancelAtPeriodEnd = null,Object? billingCycle = null,Object? endDate = freezed,Object? trialEndDate = freezed,Object? canceledAt = freezed,Object? paymentProviderSubscriptionId = freezed,Object? paymentProviderCustomerId = freezed,Object? paymentProvider = freezed,Object? paymentProviderPlanId = freezed,Object? currentStart = freezed,Object? currentEnd = freezed,Object? paymentUrl = freezed,Object? currency = freezed,Object? subscribedAmount = freezed,Object? totalInvoiceAmount = freezed,Object? taxAmount = freezed,Object? metadata = freezed,}) {
  return _then(_ActiveAddonSubscription(
subscriptionId: null == subscriptionId ? _self.subscriptionId : subscriptionId // ignore: cast_nullable_to_non_nullable
as String,addonId: null == addonId ? _self.addonId : addonId // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,cancelAtPeriodEnd: null == cancelAtPeriodEnd ? _self.cancelAtPeriodEnd : cancelAtPeriodEnd // ignore: cast_nullable_to_non_nullable
as bool,billingCycle: null == billingCycle ? _self.billingCycle : billingCycle // ignore: cast_nullable_to_non_nullable
as String,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,trialEndDate: freezed == trialEndDate ? _self.trialEndDate : trialEndDate // ignore: cast_nullable_to_non_nullable
as DateTime?,canceledAt: freezed == canceledAt ? _self.canceledAt : canceledAt // ignore: cast_nullable_to_non_nullable
as DateTime?,paymentProviderSubscriptionId: freezed == paymentProviderSubscriptionId ? _self.paymentProviderSubscriptionId : paymentProviderSubscriptionId // ignore: cast_nullable_to_non_nullable
as String?,paymentProviderCustomerId: freezed == paymentProviderCustomerId ? _self.paymentProviderCustomerId : paymentProviderCustomerId // ignore: cast_nullable_to_non_nullable
as String?,paymentProvider: freezed == paymentProvider ? _self.paymentProvider : paymentProvider // ignore: cast_nullable_to_non_nullable
as String?,paymentProviderPlanId: freezed == paymentProviderPlanId ? _self.paymentProviderPlanId : paymentProviderPlanId // ignore: cast_nullable_to_non_nullable
as String?,currentStart: freezed == currentStart ? _self.currentStart : currentStart // ignore: cast_nullable_to_non_nullable
as DateTime?,currentEnd: freezed == currentEnd ? _self.currentEnd : currentEnd // ignore: cast_nullable_to_non_nullable
as DateTime?,paymentUrl: freezed == paymentUrl ? _self.paymentUrl : paymentUrl // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,subscribedAmount: freezed == subscribedAmount ? _self.subscribedAmount : subscribedAmount // ignore: cast_nullable_to_non_nullable
as double?,totalInvoiceAmount: freezed == totalInvoiceAmount ? _self.totalInvoiceAmount : totalInvoiceAmount // ignore: cast_nullable_to_non_nullable
as double?,taxAmount: freezed == taxAmount ? _self.taxAmount : taxAmount // ignore: cast_nullable_to_non_nullable
as double?,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}


/// @nodoc
mixin _$PlanDetails {

@JsonKey(name: 'plan_id') int get planId; String get name; String get slug;@JsonKey(name: 'is_active') bool get isActive;@JsonKey(name: 'display_order') int get displayOrder;@JsonKey(name: 'created_at') DateTime get createdAt;@JsonKey(name: 'updated_at') DateTime get updatedAt; String? get description;@JsonKey(name: 'default_price_monthly') double? get defaultPriceMonthly;// numeric(10,2) -> String
@JsonKey(name: 'default_price_annual') double? get defaultPriceAnnual;// numeric(10,2) -> String
@JsonKey(name: 'default_currency') String? get defaultCurrency;@JsonKey(name: 'trial_period_days') int? get trialPeriodDays;
/// Create a copy of PlanDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlanDetailsCopyWith<PlanDetails> get copyWith => _$PlanDetailsCopyWithImpl<PlanDetails>(this as PlanDetails, _$identity);

  /// Serializes this PlanDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlanDetails&&(identical(other.planId, planId) || other.planId == planId)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.displayOrder, displayOrder) || other.displayOrder == displayOrder)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.description, description) || other.description == description)&&(identical(other.defaultPriceMonthly, defaultPriceMonthly) || other.defaultPriceMonthly == defaultPriceMonthly)&&(identical(other.defaultPriceAnnual, defaultPriceAnnual) || other.defaultPriceAnnual == defaultPriceAnnual)&&(identical(other.defaultCurrency, defaultCurrency) || other.defaultCurrency == defaultCurrency)&&(identical(other.trialPeriodDays, trialPeriodDays) || other.trialPeriodDays == trialPeriodDays));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,planId,name,slug,isActive,displayOrder,createdAt,updatedAt,description,defaultPriceMonthly,defaultPriceAnnual,defaultCurrency,trialPeriodDays);

@override
String toString() {
  return 'PlanDetails(planId: $planId, name: $name, slug: $slug, isActive: $isActive, displayOrder: $displayOrder, createdAt: $createdAt, updatedAt: $updatedAt, description: $description, defaultPriceMonthly: $defaultPriceMonthly, defaultPriceAnnual: $defaultPriceAnnual, defaultCurrency: $defaultCurrency, trialPeriodDays: $trialPeriodDays)';
}


}

/// @nodoc
abstract mixin class $PlanDetailsCopyWith<$Res>  {
  factory $PlanDetailsCopyWith(PlanDetails value, $Res Function(PlanDetails) _then) = _$PlanDetailsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'plan_id') int planId, String name, String slug,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'display_order') int displayOrder,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime updatedAt, String? description,@JsonKey(name: 'default_price_monthly') double? defaultPriceMonthly,@JsonKey(name: 'default_price_annual') double? defaultPriceAnnual,@JsonKey(name: 'default_currency') String? defaultCurrency,@JsonKey(name: 'trial_period_days') int? trialPeriodDays
});




}
/// @nodoc
class _$PlanDetailsCopyWithImpl<$Res>
    implements $PlanDetailsCopyWith<$Res> {
  _$PlanDetailsCopyWithImpl(this._self, this._then);

  final PlanDetails _self;
  final $Res Function(PlanDetails) _then;

/// Create a copy of PlanDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? planId = null,Object? name = null,Object? slug = null,Object? isActive = null,Object? displayOrder = null,Object? createdAt = null,Object? updatedAt = null,Object? description = freezed,Object? defaultPriceMonthly = freezed,Object? defaultPriceAnnual = freezed,Object? defaultCurrency = freezed,Object? trialPeriodDays = freezed,}) {
  return _then(_self.copyWith(
planId: null == planId ? _self.planId : planId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,displayOrder: null == displayOrder ? _self.displayOrder : displayOrder // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,defaultPriceMonthly: freezed == defaultPriceMonthly ? _self.defaultPriceMonthly : defaultPriceMonthly // ignore: cast_nullable_to_non_nullable
as double?,defaultPriceAnnual: freezed == defaultPriceAnnual ? _self.defaultPriceAnnual : defaultPriceAnnual // ignore: cast_nullable_to_non_nullable
as double?,defaultCurrency: freezed == defaultCurrency ? _self.defaultCurrency : defaultCurrency // ignore: cast_nullable_to_non_nullable
as String?,trialPeriodDays: freezed == trialPeriodDays ? _self.trialPeriodDays : trialPeriodDays // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [PlanDetails].
extension PlanDetailsPatterns on PlanDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlanDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlanDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlanDetails value)  $default,){
final _that = this;
switch (_that) {
case _PlanDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlanDetails value)?  $default,){
final _that = this;
switch (_that) {
case _PlanDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'plan_id')  int planId,  String name,  String slug, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'display_order')  int displayOrder, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt,  String? description, @JsonKey(name: 'default_price_monthly')  double? defaultPriceMonthly, @JsonKey(name: 'default_price_annual')  double? defaultPriceAnnual, @JsonKey(name: 'default_currency')  String? defaultCurrency, @JsonKey(name: 'trial_period_days')  int? trialPeriodDays)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlanDetails() when $default != null:
return $default(_that.planId,_that.name,_that.slug,_that.isActive,_that.displayOrder,_that.createdAt,_that.updatedAt,_that.description,_that.defaultPriceMonthly,_that.defaultPriceAnnual,_that.defaultCurrency,_that.trialPeriodDays);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'plan_id')  int planId,  String name,  String slug, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'display_order')  int displayOrder, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt,  String? description, @JsonKey(name: 'default_price_monthly')  double? defaultPriceMonthly, @JsonKey(name: 'default_price_annual')  double? defaultPriceAnnual, @JsonKey(name: 'default_currency')  String? defaultCurrency, @JsonKey(name: 'trial_period_days')  int? trialPeriodDays)  $default,) {final _that = this;
switch (_that) {
case _PlanDetails():
return $default(_that.planId,_that.name,_that.slug,_that.isActive,_that.displayOrder,_that.createdAt,_that.updatedAt,_that.description,_that.defaultPriceMonthly,_that.defaultPriceAnnual,_that.defaultCurrency,_that.trialPeriodDays);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'plan_id')  int planId,  String name,  String slug, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'display_order')  int displayOrder, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt,  String? description, @JsonKey(name: 'default_price_monthly')  double? defaultPriceMonthly, @JsonKey(name: 'default_price_annual')  double? defaultPriceAnnual, @JsonKey(name: 'default_currency')  String? defaultCurrency, @JsonKey(name: 'trial_period_days')  int? trialPeriodDays)?  $default,) {final _that = this;
switch (_that) {
case _PlanDetails() when $default != null:
return $default(_that.planId,_that.name,_that.slug,_that.isActive,_that.displayOrder,_that.createdAt,_that.updatedAt,_that.description,_that.defaultPriceMonthly,_that.defaultPriceAnnual,_that.defaultCurrency,_that.trialPeriodDays);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _PlanDetails implements PlanDetails {
  const _PlanDetails({@JsonKey(name: 'plan_id') required this.planId, required this.name, required this.slug, @JsonKey(name: 'is_active') required this.isActive, @JsonKey(name: 'display_order') required this.displayOrder, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') required this.updatedAt, this.description, @JsonKey(name: 'default_price_monthly') this.defaultPriceMonthly, @JsonKey(name: 'default_price_annual') this.defaultPriceAnnual, @JsonKey(name: 'default_currency') this.defaultCurrency, @JsonKey(name: 'trial_period_days') this.trialPeriodDays});
  factory _PlanDetails.fromJson(Map<String, dynamic> json) => _$PlanDetailsFromJson(json);

@override@JsonKey(name: 'plan_id') final  int planId;
@override final  String name;
@override final  String slug;
@override@JsonKey(name: 'is_active') final  bool isActive;
@override@JsonKey(name: 'display_order') final  int displayOrder;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime updatedAt;
@override final  String? description;
@override@JsonKey(name: 'default_price_monthly') final  double? defaultPriceMonthly;
// numeric(10,2) -> String
@override@JsonKey(name: 'default_price_annual') final  double? defaultPriceAnnual;
// numeric(10,2) -> String
@override@JsonKey(name: 'default_currency') final  String? defaultCurrency;
@override@JsonKey(name: 'trial_period_days') final  int? trialPeriodDays;

/// Create a copy of PlanDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlanDetailsCopyWith<_PlanDetails> get copyWith => __$PlanDetailsCopyWithImpl<_PlanDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlanDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlanDetails&&(identical(other.planId, planId) || other.planId == planId)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.displayOrder, displayOrder) || other.displayOrder == displayOrder)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.description, description) || other.description == description)&&(identical(other.defaultPriceMonthly, defaultPriceMonthly) || other.defaultPriceMonthly == defaultPriceMonthly)&&(identical(other.defaultPriceAnnual, defaultPriceAnnual) || other.defaultPriceAnnual == defaultPriceAnnual)&&(identical(other.defaultCurrency, defaultCurrency) || other.defaultCurrency == defaultCurrency)&&(identical(other.trialPeriodDays, trialPeriodDays) || other.trialPeriodDays == trialPeriodDays));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,planId,name,slug,isActive,displayOrder,createdAt,updatedAt,description,defaultPriceMonthly,defaultPriceAnnual,defaultCurrency,trialPeriodDays);

@override
String toString() {
  return 'PlanDetails(planId: $planId, name: $name, slug: $slug, isActive: $isActive, displayOrder: $displayOrder, createdAt: $createdAt, updatedAt: $updatedAt, description: $description, defaultPriceMonthly: $defaultPriceMonthly, defaultPriceAnnual: $defaultPriceAnnual, defaultCurrency: $defaultCurrency, trialPeriodDays: $trialPeriodDays)';
}


}

/// @nodoc
abstract mixin class _$PlanDetailsCopyWith<$Res> implements $PlanDetailsCopyWith<$Res> {
  factory _$PlanDetailsCopyWith(_PlanDetails value, $Res Function(_PlanDetails) _then) = __$PlanDetailsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'plan_id') int planId, String name, String slug,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'display_order') int displayOrder,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime updatedAt, String? description,@JsonKey(name: 'default_price_monthly') double? defaultPriceMonthly,@JsonKey(name: 'default_price_annual') double? defaultPriceAnnual,@JsonKey(name: 'default_currency') String? defaultCurrency,@JsonKey(name: 'trial_period_days') int? trialPeriodDays
});




}
/// @nodoc
class __$PlanDetailsCopyWithImpl<$Res>
    implements _$PlanDetailsCopyWith<$Res> {
  __$PlanDetailsCopyWithImpl(this._self, this._then);

  final _PlanDetails _self;
  final $Res Function(_PlanDetails) _then;

/// Create a copy of PlanDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? planId = null,Object? name = null,Object? slug = null,Object? isActive = null,Object? displayOrder = null,Object? createdAt = null,Object? updatedAt = null,Object? description = freezed,Object? defaultPriceMonthly = freezed,Object? defaultPriceAnnual = freezed,Object? defaultCurrency = freezed,Object? trialPeriodDays = freezed,}) {
  return _then(_PlanDetails(
planId: null == planId ? _self.planId : planId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,displayOrder: null == displayOrder ? _self.displayOrder : displayOrder // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,defaultPriceMonthly: freezed == defaultPriceMonthly ? _self.defaultPriceMonthly : defaultPriceMonthly // ignore: cast_nullable_to_non_nullable
as double?,defaultPriceAnnual: freezed == defaultPriceAnnual ? _self.defaultPriceAnnual : defaultPriceAnnual // ignore: cast_nullable_to_non_nullable
as double?,defaultCurrency: freezed == defaultCurrency ? _self.defaultCurrency : defaultCurrency // ignore: cast_nullable_to_non_nullable
as String?,trialPeriodDays: freezed == trialPeriodDays ? _self.trialPeriodDays : trialPeriodDays // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$AddonDetails {

@JsonKey(name: 'addon_id') int get addonId; String get name; String get slug;// If addon_type is an enum in Dart:
// @JsonKey(name: 'addon_type') required AddonTypeEnum addonType,
// Otherwise, as a String:
@JsonKey(name: 'addon_type') String get addonType;@JsonKey(name: 'is_active') bool get isActive;@JsonKey(name: 'created_at') DateTime get createdAt;@JsonKey(name: 'updated_at') DateTime get updatedAt; String? get description;@JsonKey(name: 'linked_feature_id') int? get linkedFeatureId;@JsonKey(name: 'unit_name') String? get unitName;@JsonKey(name: 'default_price_monthly') String? get defaultPriceMonthly;// numeric(10,2) -> String
@JsonKey(name: 'default_price_annual') String? get defaultPriceAnnual;// numeric(10,2) -> String
@JsonKey(name: 'default_currency') String? get defaultCurrency;
/// Create a copy of AddonDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddonDetailsCopyWith<AddonDetails> get copyWith => _$AddonDetailsCopyWithImpl<AddonDetails>(this as AddonDetails, _$identity);

  /// Serializes this AddonDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddonDetails&&(identical(other.addonId, addonId) || other.addonId == addonId)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.addonType, addonType) || other.addonType == addonType)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.description, description) || other.description == description)&&(identical(other.linkedFeatureId, linkedFeatureId) || other.linkedFeatureId == linkedFeatureId)&&(identical(other.unitName, unitName) || other.unitName == unitName)&&(identical(other.defaultPriceMonthly, defaultPriceMonthly) || other.defaultPriceMonthly == defaultPriceMonthly)&&(identical(other.defaultPriceAnnual, defaultPriceAnnual) || other.defaultPriceAnnual == defaultPriceAnnual)&&(identical(other.defaultCurrency, defaultCurrency) || other.defaultCurrency == defaultCurrency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,addonId,name,slug,addonType,isActive,createdAt,updatedAt,description,linkedFeatureId,unitName,defaultPriceMonthly,defaultPriceAnnual,defaultCurrency);

@override
String toString() {
  return 'AddonDetails(addonId: $addonId, name: $name, slug: $slug, addonType: $addonType, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt, description: $description, linkedFeatureId: $linkedFeatureId, unitName: $unitName, defaultPriceMonthly: $defaultPriceMonthly, defaultPriceAnnual: $defaultPriceAnnual, defaultCurrency: $defaultCurrency)';
}


}

/// @nodoc
abstract mixin class $AddonDetailsCopyWith<$Res>  {
  factory $AddonDetailsCopyWith(AddonDetails value, $Res Function(AddonDetails) _then) = _$AddonDetailsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'addon_id') int addonId, String name, String slug,@JsonKey(name: 'addon_type') String addonType,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime updatedAt, String? description,@JsonKey(name: 'linked_feature_id') int? linkedFeatureId,@JsonKey(name: 'unit_name') String? unitName,@JsonKey(name: 'default_price_monthly') String? defaultPriceMonthly,@JsonKey(name: 'default_price_annual') String? defaultPriceAnnual,@JsonKey(name: 'default_currency') String? defaultCurrency
});




}
/// @nodoc
class _$AddonDetailsCopyWithImpl<$Res>
    implements $AddonDetailsCopyWith<$Res> {
  _$AddonDetailsCopyWithImpl(this._self, this._then);

  final AddonDetails _self;
  final $Res Function(AddonDetails) _then;

/// Create a copy of AddonDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? addonId = null,Object? name = null,Object? slug = null,Object? addonType = null,Object? isActive = null,Object? createdAt = null,Object? updatedAt = null,Object? description = freezed,Object? linkedFeatureId = freezed,Object? unitName = freezed,Object? defaultPriceMonthly = freezed,Object? defaultPriceAnnual = freezed,Object? defaultCurrency = freezed,}) {
  return _then(_self.copyWith(
addonId: null == addonId ? _self.addonId : addonId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,addonType: null == addonType ? _self.addonType : addonType // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,linkedFeatureId: freezed == linkedFeatureId ? _self.linkedFeatureId : linkedFeatureId // ignore: cast_nullable_to_non_nullable
as int?,unitName: freezed == unitName ? _self.unitName : unitName // ignore: cast_nullable_to_non_nullable
as String?,defaultPriceMonthly: freezed == defaultPriceMonthly ? _self.defaultPriceMonthly : defaultPriceMonthly // ignore: cast_nullable_to_non_nullable
as String?,defaultPriceAnnual: freezed == defaultPriceAnnual ? _self.defaultPriceAnnual : defaultPriceAnnual // ignore: cast_nullable_to_non_nullable
as String?,defaultCurrency: freezed == defaultCurrency ? _self.defaultCurrency : defaultCurrency // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AddonDetails].
extension AddonDetailsPatterns on AddonDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddonDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddonDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddonDetails value)  $default,){
final _that = this;
switch (_that) {
case _AddonDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddonDetails value)?  $default,){
final _that = this;
switch (_that) {
case _AddonDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'addon_id')  int addonId,  String name,  String slug, @JsonKey(name: 'addon_type')  String addonType, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt,  String? description, @JsonKey(name: 'linked_feature_id')  int? linkedFeatureId, @JsonKey(name: 'unit_name')  String? unitName, @JsonKey(name: 'default_price_monthly')  String? defaultPriceMonthly, @JsonKey(name: 'default_price_annual')  String? defaultPriceAnnual, @JsonKey(name: 'default_currency')  String? defaultCurrency)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddonDetails() when $default != null:
return $default(_that.addonId,_that.name,_that.slug,_that.addonType,_that.isActive,_that.createdAt,_that.updatedAt,_that.description,_that.linkedFeatureId,_that.unitName,_that.defaultPriceMonthly,_that.defaultPriceAnnual,_that.defaultCurrency);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'addon_id')  int addonId,  String name,  String slug, @JsonKey(name: 'addon_type')  String addonType, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt,  String? description, @JsonKey(name: 'linked_feature_id')  int? linkedFeatureId, @JsonKey(name: 'unit_name')  String? unitName, @JsonKey(name: 'default_price_monthly')  String? defaultPriceMonthly, @JsonKey(name: 'default_price_annual')  String? defaultPriceAnnual, @JsonKey(name: 'default_currency')  String? defaultCurrency)  $default,) {final _that = this;
switch (_that) {
case _AddonDetails():
return $default(_that.addonId,_that.name,_that.slug,_that.addonType,_that.isActive,_that.createdAt,_that.updatedAt,_that.description,_that.linkedFeatureId,_that.unitName,_that.defaultPriceMonthly,_that.defaultPriceAnnual,_that.defaultCurrency);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'addon_id')  int addonId,  String name,  String slug, @JsonKey(name: 'addon_type')  String addonType, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt,  String? description, @JsonKey(name: 'linked_feature_id')  int? linkedFeatureId, @JsonKey(name: 'unit_name')  String? unitName, @JsonKey(name: 'default_price_monthly')  String? defaultPriceMonthly, @JsonKey(name: 'default_price_annual')  String? defaultPriceAnnual, @JsonKey(name: 'default_currency')  String? defaultCurrency)?  $default,) {final _that = this;
switch (_that) {
case _AddonDetails() when $default != null:
return $default(_that.addonId,_that.name,_that.slug,_that.addonType,_that.isActive,_that.createdAt,_that.updatedAt,_that.description,_that.linkedFeatureId,_that.unitName,_that.defaultPriceMonthly,_that.defaultPriceAnnual,_that.defaultCurrency);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _AddonDetails implements AddonDetails {
  const _AddonDetails({@JsonKey(name: 'addon_id') required this.addonId, required this.name, required this.slug, @JsonKey(name: 'addon_type') required this.addonType, @JsonKey(name: 'is_active') required this.isActive, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') required this.updatedAt, this.description, @JsonKey(name: 'linked_feature_id') this.linkedFeatureId, @JsonKey(name: 'unit_name') this.unitName, @JsonKey(name: 'default_price_monthly') this.defaultPriceMonthly, @JsonKey(name: 'default_price_annual') this.defaultPriceAnnual, @JsonKey(name: 'default_currency') this.defaultCurrency});
  factory _AddonDetails.fromJson(Map<String, dynamic> json) => _$AddonDetailsFromJson(json);

@override@JsonKey(name: 'addon_id') final  int addonId;
@override final  String name;
@override final  String slug;
// If addon_type is an enum in Dart:
// @JsonKey(name: 'addon_type') required AddonTypeEnum addonType,
// Otherwise, as a String:
@override@JsonKey(name: 'addon_type') final  String addonType;
@override@JsonKey(name: 'is_active') final  bool isActive;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime updatedAt;
@override final  String? description;
@override@JsonKey(name: 'linked_feature_id') final  int? linkedFeatureId;
@override@JsonKey(name: 'unit_name') final  String? unitName;
@override@JsonKey(name: 'default_price_monthly') final  String? defaultPriceMonthly;
// numeric(10,2) -> String
@override@JsonKey(name: 'default_price_annual') final  String? defaultPriceAnnual;
// numeric(10,2) -> String
@override@JsonKey(name: 'default_currency') final  String? defaultCurrency;

/// Create a copy of AddonDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddonDetailsCopyWith<_AddonDetails> get copyWith => __$AddonDetailsCopyWithImpl<_AddonDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddonDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddonDetails&&(identical(other.addonId, addonId) || other.addonId == addonId)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.addonType, addonType) || other.addonType == addonType)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.description, description) || other.description == description)&&(identical(other.linkedFeatureId, linkedFeatureId) || other.linkedFeatureId == linkedFeatureId)&&(identical(other.unitName, unitName) || other.unitName == unitName)&&(identical(other.defaultPriceMonthly, defaultPriceMonthly) || other.defaultPriceMonthly == defaultPriceMonthly)&&(identical(other.defaultPriceAnnual, defaultPriceAnnual) || other.defaultPriceAnnual == defaultPriceAnnual)&&(identical(other.defaultCurrency, defaultCurrency) || other.defaultCurrency == defaultCurrency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,addonId,name,slug,addonType,isActive,createdAt,updatedAt,description,linkedFeatureId,unitName,defaultPriceMonthly,defaultPriceAnnual,defaultCurrency);

@override
String toString() {
  return 'AddonDetails(addonId: $addonId, name: $name, slug: $slug, addonType: $addonType, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt, description: $description, linkedFeatureId: $linkedFeatureId, unitName: $unitName, defaultPriceMonthly: $defaultPriceMonthly, defaultPriceAnnual: $defaultPriceAnnual, defaultCurrency: $defaultCurrency)';
}


}

/// @nodoc
abstract mixin class _$AddonDetailsCopyWith<$Res> implements $AddonDetailsCopyWith<$Res> {
  factory _$AddonDetailsCopyWith(_AddonDetails value, $Res Function(_AddonDetails) _then) = __$AddonDetailsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'addon_id') int addonId, String name, String slug,@JsonKey(name: 'addon_type') String addonType,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime updatedAt, String? description,@JsonKey(name: 'linked_feature_id') int? linkedFeatureId,@JsonKey(name: 'unit_name') String? unitName,@JsonKey(name: 'default_price_monthly') String? defaultPriceMonthly,@JsonKey(name: 'default_price_annual') String? defaultPriceAnnual,@JsonKey(name: 'default_currency') String? defaultCurrency
});




}
/// @nodoc
class __$AddonDetailsCopyWithImpl<$Res>
    implements _$AddonDetailsCopyWith<$Res> {
  __$AddonDetailsCopyWithImpl(this._self, this._then);

  final _AddonDetails _self;
  final $Res Function(_AddonDetails) _then;

/// Create a copy of AddonDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? addonId = null,Object? name = null,Object? slug = null,Object? addonType = null,Object? isActive = null,Object? createdAt = null,Object? updatedAt = null,Object? description = freezed,Object? linkedFeatureId = freezed,Object? unitName = freezed,Object? defaultPriceMonthly = freezed,Object? defaultPriceAnnual = freezed,Object? defaultCurrency = freezed,}) {
  return _then(_AddonDetails(
addonId: null == addonId ? _self.addonId : addonId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,addonType: null == addonType ? _self.addonType : addonType // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,linkedFeatureId: freezed == linkedFeatureId ? _self.linkedFeatureId : linkedFeatureId // ignore: cast_nullable_to_non_nullable
as int?,unitName: freezed == unitName ? _self.unitName : unitName // ignore: cast_nullable_to_non_nullable
as String?,defaultPriceMonthly: freezed == defaultPriceMonthly ? _self.defaultPriceMonthly : defaultPriceMonthly // ignore: cast_nullable_to_non_nullable
as String?,defaultPriceAnnual: freezed == defaultPriceAnnual ? _self.defaultPriceAnnual : defaultPriceAnnual // ignore: cast_nullable_to_non_nullable
as String?,defaultCurrency: freezed == defaultCurrency ? _self.defaultCurrency : defaultCurrency // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
