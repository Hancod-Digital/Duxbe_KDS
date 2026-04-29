// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrganizationDetails _$OrganizationDetailsFromJson(Map<String, dynamic> json) =>
    _OrganizationDetails(
      orgId: json['org_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      businessesList:
          (json['businesses_list'] as List<dynamic>?)
              ?.map((e) => Business.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      organizationName: json['name'] as String?,
      createdBy: json['created_by'] as String?,
      activeSubscriptionDetails: json['active_subscription_details'] == null
          ? null
          : ActiveSubscriptionDetails.fromJson(
              json['active_subscription_details'] as Map<String, dynamic>,
            ),
      activeAddonsList:
          (json['active_addons_list'] as List<dynamic>?)
              ?.map(
                (e) =>
                    ActiveAddonSubscription.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          [],
      trialActivated: json['trial_activated'] as bool?,
      trialEndDate: json['trial_end_date'] == null
          ? null
          : DateTime.parse(json['trial_end_date'] as String),
    );

Map<String, dynamic> _$OrganizationDetailsToJson(
  _OrganizationDetails instance,
) => <String, dynamic>{
  'org_id': instance.orgId,
  'created_at': instance.createdAt.toIso8601String(),
  'businesses_list': instance.businessesList.map((e) => e.toJson()).toList(),
  'name': instance.organizationName,
  'created_by': instance.createdBy,
  'active_subscription_details': instance.activeSubscriptionDetails?.toJson(),
  'active_addons_list': instance.activeAddonsList
      ?.map((e) => e.toJson())
      .toList(),
  'trial_activated': instance.trialActivated,
  'trial_end_date': instance.trialEndDate?.toIso8601String(),
};

_ActiveSubscriptionDetails _$ActiveSubscriptionDetailsFromJson(
  Map<String, dynamic> json,
) => _ActiveSubscriptionDetails(
  subscriptionId: json['subscription_id'] as String,
  status: json['status'] as String,
  cancelAtPeriodEnd: json['cancel_at_period_end'] as bool,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  startDate: json['start_date'] == null
      ? null
      : DateTime.parse(json['start_date'] as String),
  planId: (json['plan_id'] as num?)?.toInt(),
  endDate: json['end_date'] == null
      ? null
      : DateTime.parse(json['end_date'] as String),
  trialEndDate: json['trial_end_date'] == null
      ? null
      : DateTime.parse(json['trial_end_date'] as String),
  canceledAt: json['canceled_at'] == null
      ? null
      : DateTime.parse(json['canceled_at'] as String),
  paymentProviderSubscriptionId:
      json['payment_provider_subscription_id'] as String?,
  addonId: (json['addon_id'] as num?)?.toInt(),
  paymentProviderCustomerId: json['payment_provider_customer_id'] as String?,
  paymentProvider: json['payment_provider'] as String?,
  paymentProviderPlanId: json['payment_provider_plan_id'] as String?,
  currentStart: json['current_start'] == null
      ? null
      : DateTime.parse(json['current_start'] as String),
  currentEnd: json['current_end'] == null
      ? null
      : DateTime.parse(json['current_end'] as String),
  paymentUrl: json['payment_url'] as String?,
  currency: json['currency'] as String?,
  planAmount: (json['plan_amount'] as num?)?.toDouble(),
  totalInvoiceAmount: (json['total_invoice_amount'] as num?)?.toDouble(),
  taxAmount: (json['tax_amount'] as num?)?.toDouble(),
  billingCycle: json['billing_cycle'] as String?,
  metadata: json['metadata'] as Map<String, dynamic>?,
  planDetails: json['plan_details'] == null
      ? null
      : PlanDetails.fromJson(json['plan_details'] as Map<String, dynamic>),
  addonDetailsOnPlanSub: json['addon_details_on_plan_sub'] == null
      ? null
      : AddonDetails.fromJson(
          json['addon_details_on_plan_sub'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$ActiveSubscriptionDetailsToJson(
  _ActiveSubscriptionDetails instance,
) => <String, dynamic>{
  'subscription_id': instance.subscriptionId,
  'status': instance.status,
  'cancel_at_period_end': instance.cancelAtPeriodEnd,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
  'start_date': instance.startDate?.toIso8601String(),
  'plan_id': instance.planId,
  'end_date': instance.endDate?.toIso8601String(),
  'trial_end_date': instance.trialEndDate?.toIso8601String(),
  'canceled_at': instance.canceledAt?.toIso8601String(),
  'payment_provider_subscription_id': instance.paymentProviderSubscriptionId,
  'addon_id': instance.addonId,
  'payment_provider_customer_id': instance.paymentProviderCustomerId,
  'payment_provider': instance.paymentProvider,
  'payment_provider_plan_id': instance.paymentProviderPlanId,
  'current_start': instance.currentStart?.toIso8601String(),
  'current_end': instance.currentEnd?.toIso8601String(),
  'payment_url': instance.paymentUrl,
  'currency': instance.currency,
  'plan_amount': instance.planAmount,
  'total_invoice_amount': instance.totalInvoiceAmount,
  'tax_amount': instance.taxAmount,
  'billing_cycle': instance.billingCycle,
  'metadata': instance.metadata,
  'plan_details': instance.planDetails?.toJson(),
  'addon_details_on_plan_sub': instance.addonDetailsOnPlanSub?.toJson(),
};

_ActiveAddonSubscription _$ActiveAddonSubscriptionFromJson(
  Map<String, dynamic> json,
) => _ActiveAddonSubscription(
  subscriptionId: json['subscription_id'] as String,
  addonId: (json['addon_id'] as num).toInt(),
  status: json['status'] as String,
  cancelAtPeriodEnd: json['cancel_at_period_end'] as bool,
  billingCycle: json['billing_cycle'] as String,
  endDate: json['end_date'] == null
      ? null
      : DateTime.parse(json['end_date'] as String),
  trialEndDate: json['trial_end_date'] == null
      ? null
      : DateTime.parse(json['trial_end_date'] as String),
  canceledAt: json['canceled_at'] == null
      ? null
      : DateTime.parse(json['canceled_at'] as String),
  paymentProviderSubscriptionId:
      json['payment_provider_subscription_id'] as String?,
  paymentProviderCustomerId: json['payment_provider_customer_id'] as String?,
  paymentProvider: json['payment_provider'] as String?,
  paymentProviderPlanId: json['payment_provider_plan_id'] as String?,
  currentStart: json['current_start'] == null
      ? null
      : DateTime.parse(json['current_start'] as String),
  currentEnd: json['current_end'] == null
      ? null
      : DateTime.parse(json['current_end'] as String),
  paymentUrl: json['payment_url'] as String?,
  currency: json['currency'] as String?,
  subscribedAmount: (json['subscribed_amount'] as num?)?.toDouble(),
  totalInvoiceAmount: (json['total_invoice_amount'] as num?)?.toDouble(),
  taxAmount: (json['tax_amount'] as num?)?.toDouble(),
  metadata: json['metadata'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$ActiveAddonSubscriptionToJson(
  _ActiveAddonSubscription instance,
) => <String, dynamic>{
  'subscription_id': instance.subscriptionId,
  'addon_id': instance.addonId,
  'status': instance.status,
  'cancel_at_period_end': instance.cancelAtPeriodEnd,
  'billing_cycle': instance.billingCycle,
  'end_date': instance.endDate?.toIso8601String(),
  'trial_end_date': instance.trialEndDate?.toIso8601String(),
  'canceled_at': instance.canceledAt?.toIso8601String(),
  'payment_provider_subscription_id': instance.paymentProviderSubscriptionId,
  'payment_provider_customer_id': instance.paymentProviderCustomerId,
  'payment_provider': instance.paymentProvider,
  'payment_provider_plan_id': instance.paymentProviderPlanId,
  'current_start': instance.currentStart?.toIso8601String(),
  'current_end': instance.currentEnd?.toIso8601String(),
  'payment_url': instance.paymentUrl,
  'currency': instance.currency,
  'subscribed_amount': instance.subscribedAmount,
  'total_invoice_amount': instance.totalInvoiceAmount,
  'tax_amount': instance.taxAmount,
  'metadata': instance.metadata,
};

_PlanDetails _$PlanDetailsFromJson(Map<String, dynamic> json) => _PlanDetails(
  planId: (json['plan_id'] as num).toInt(),
  name: json['name'] as String,
  slug: json['slug'] as String,
  isActive: json['is_active'] as bool,
  displayOrder: (json['display_order'] as num).toInt(),
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  description: json['description'] as String?,
  defaultPriceMonthly: (json['default_price_monthly'] as num?)?.toDouble(),
  defaultPriceAnnual: (json['default_price_annual'] as num?)?.toDouble(),
  defaultCurrency: json['default_currency'] as String?,
  trialPeriodDays: (json['trial_period_days'] as num?)?.toInt(),
);

Map<String, dynamic> _$PlanDetailsToJson(_PlanDetails instance) =>
    <String, dynamic>{
      'plan_id': instance.planId,
      'name': instance.name,
      'slug': instance.slug,
      'is_active': instance.isActive,
      'display_order': instance.displayOrder,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'description': instance.description,
      'default_price_monthly': instance.defaultPriceMonthly,
      'default_price_annual': instance.defaultPriceAnnual,
      'default_currency': instance.defaultCurrency,
      'trial_period_days': instance.trialPeriodDays,
    };

_AddonDetails _$AddonDetailsFromJson(Map<String, dynamic> json) =>
    _AddonDetails(
      addonId: (json['addon_id'] as num).toInt(),
      name: json['name'] as String,
      slug: json['slug'] as String,
      addonType: json['addon_type'] as String,
      isActive: json['is_active'] as bool,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      description: json['description'] as String?,
      linkedFeatureId: (json['linked_feature_id'] as num?)?.toInt(),
      unitName: json['unit_name'] as String?,
      defaultPriceMonthly: json['default_price_monthly'] as String?,
      defaultPriceAnnual: json['default_price_annual'] as String?,
      defaultCurrency: json['default_currency'] as String?,
    );

Map<String, dynamic> _$AddonDetailsToJson(_AddonDetails instance) =>
    <String, dynamic>{
      'addon_id': instance.addonId,
      'name': instance.name,
      'slug': instance.slug,
      'addon_type': instance.addonType,
      'is_active': instance.isActive,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'description': instance.description,
      'linked_feature_id': instance.linkedFeatureId,
      'unit_name': instance.unitName,
      'default_price_monthly': instance.defaultPriceMonthly,
      'default_price_annual': instance.defaultPriceAnnual,
      'default_currency': instance.defaultCurrency,
    };
