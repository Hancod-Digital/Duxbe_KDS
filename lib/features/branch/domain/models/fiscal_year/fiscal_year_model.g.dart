// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fiscal_year_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FiscalYear _$FiscalYearFromJson(Map<String, dynamic> json) => _FiscalYear(
  fiscalId: json['fiscal_id'] as String,
  name: json['name'] as String,
  startMonth: (json['start_month'] as num).toInt(),
  endMonth: (json['end_month'] as num).toInt(),
);

Map<String, dynamic> _$FiscalYearToJson(_FiscalYear instance) =>
    <String, dynamic>{
      'fiscal_id': instance.fiscalId,
      'name': instance.name,
      'start_month': instance.startMonth,
      'end_month': instance.endMonth,
    };
