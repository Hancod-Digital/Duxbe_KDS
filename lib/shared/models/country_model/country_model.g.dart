// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Country _$CountryFromJson(Map<String, dynamic> json) => _Country(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  isoCode: json['iso_code'] as String,
  emoji: json['emoji'] as String?,
  emojiU: json['emojiU'] as String?,
  currency: json['currency'] as String?,
);

Map<String, dynamic> _$CountryToJson(_Country instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'iso_code': instance.isoCode,
  'emoji': instance.emoji,
  'emojiU': instance.emojiU,
  'currency': instance.currency,
};

_CountryState _$CountryStateFromJson(Map<String, dynamic> json) =>
    _CountryState(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      countryId: (json['country_id'] as num).toInt(),
    );

Map<String, dynamic> _$CountryStateToJson(_CountryState instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country_id': instance.countryId,
    };

_City _$CityFromJson(Map<String, dynamic> json) => _City(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  stateId: (json['state_id'] as num).toInt(),
);

Map<String, dynamic> _$CityToJson(_City instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'state_id': instance.stateId,
};
