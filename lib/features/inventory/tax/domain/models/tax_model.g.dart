// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tax_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Tax _$TaxFromJson(Map<String, dynamic> json) => _Tax(
  taxId: json['tax_id'] as String?,
  businessId: json['business_id'] as String?,
  name: json['name'] as String,
  rate: (json['rate'] as num).toDouble(),
  type: json['type'] as String?,
);

Map<String, dynamic> _$TaxToJson(_Tax instance) => <String, dynamic>{
  'tax_id': instance.taxId,
  'business_id': instance.businessId,
  'name': instance.name,
  'rate': instance.rate,
  'type': instance.type,
};
