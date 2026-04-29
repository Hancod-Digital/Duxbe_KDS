// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Status _$StatusFromJson(Map<String, dynamic> json) => _Status(
  statusId: json['status_id'] as String,
  businessId: json['business_id'] as String,
  name: json['name'] as String,
  sequenceOrder: (json['sequence_order'] as num).toInt(),
  movingOrder: (json['moving_order'] as num?)?.toInt(),
);

Map<String, dynamic> _$StatusToJson(_Status instance) => <String, dynamic>{
  'status_id': instance.statusId,
  'business_id': instance.businessId,
  'name': instance.name,
  'sequence_order': instance.sequenceOrder,
  'moving_order': instance.movingOrder,
};
