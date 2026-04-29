// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Currency _$CurrencyFromJson(Map<String, dynamic> json) => _Currency(
  name: json['name'] as String,
  countryCode:
      (json['country_code'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  code: json['code'] as String?,
  symbol: json['symbol'] as String?,
  flag: json['flag'] as String?,
  decimalDigits: (json['decimal_digits'] as num?)?.toInt(),
  number: (json['number'] as num?)?.toInt(),
  namePlural: json['name_plural'] as String?,
  thousandsSeparator: json['thousands_separator'] as String?,
  decimalSeparator: json['decimal_separator'] as String?,
  spaceBetweenAmountAndSymbol: json['space_between_amount_and_symbol'] as bool?,
  symbolOnLeft: json['symbol_on_left'] as bool?,
);

Map<String, dynamic> _$CurrencyToJson(_Currency instance) => <String, dynamic>{
  'name': instance.name,
  'country_code': instance.countryCode,
  'code': instance.code,
  'symbol': instance.symbol,
  'flag': instance.flag,
  'decimal_digits': instance.decimalDigits,
  'number': instance.number,
  'name_plural': instance.namePlural,
  'thousands_separator': instance.thousandsSeparator,
  'decimal_separator': instance.decimalSeparator,
  'space_between_amount_and_symbol': instance.spaceBetweenAmountAndSymbol,
  'symbol_on_left': instance.symbolOnLeft,
};
