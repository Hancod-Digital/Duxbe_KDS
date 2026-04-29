// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Country {

@JsonKey(name: 'id') int get id;@JsonKey(name: 'name') String get name;@JsonKey(name: 'iso_code') String get isoCode;@JsonKey(name: 'emoji') String? get emoji;@JsonKey(name: 'emojiU') String? get emojiU;@JsonKey(name: 'currency') String? get currency;
/// Create a copy of Country
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountryCopyWith<Country> get copyWith => _$CountryCopyWithImpl<Country>(this as Country, _$identity);

  /// Serializes this Country to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Country&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.isoCode, isoCode) || other.isoCode == isoCode)&&(identical(other.emoji, emoji) || other.emoji == emoji)&&(identical(other.emojiU, emojiU) || other.emojiU == emojiU)&&(identical(other.currency, currency) || other.currency == currency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,isoCode,emoji,emojiU,currency);

@override
String toString() {
  return 'Country(id: $id, name: $name, isoCode: $isoCode, emoji: $emoji, emojiU: $emojiU, currency: $currency)';
}


}

/// @nodoc
abstract mixin class $CountryCopyWith<$Res>  {
  factory $CountryCopyWith(Country value, $Res Function(Country) _then) = _$CountryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'name') String name,@JsonKey(name: 'iso_code') String isoCode,@JsonKey(name: 'emoji') String? emoji,@JsonKey(name: 'emojiU') String? emojiU,@JsonKey(name: 'currency') String? currency
});




}
/// @nodoc
class _$CountryCopyWithImpl<$Res>
    implements $CountryCopyWith<$Res> {
  _$CountryCopyWithImpl(this._self, this._then);

  final Country _self;
  final $Res Function(Country) _then;

/// Create a copy of Country
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? isoCode = null,Object? emoji = freezed,Object? emojiU = freezed,Object? currency = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isoCode: null == isoCode ? _self.isoCode : isoCode // ignore: cast_nullable_to_non_nullable
as String,emoji: freezed == emoji ? _self.emoji : emoji // ignore: cast_nullable_to_non_nullable
as String?,emojiU: freezed == emojiU ? _self.emojiU : emojiU // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Country].
extension CountryPatterns on Country {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Country value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Country() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Country value)  $default,){
final _that = this;
switch (_that) {
case _Country():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Country value)?  $default,){
final _that = this;
switch (_that) {
case _Country() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'iso_code')  String isoCode, @JsonKey(name: 'emoji')  String? emoji, @JsonKey(name: 'emojiU')  String? emojiU, @JsonKey(name: 'currency')  String? currency)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Country() when $default != null:
return $default(_that.id,_that.name,_that.isoCode,_that.emoji,_that.emojiU,_that.currency);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'iso_code')  String isoCode, @JsonKey(name: 'emoji')  String? emoji, @JsonKey(name: 'emojiU')  String? emojiU, @JsonKey(name: 'currency')  String? currency)  $default,) {final _that = this;
switch (_that) {
case _Country():
return $default(_that.id,_that.name,_that.isoCode,_that.emoji,_that.emojiU,_that.currency);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'iso_code')  String isoCode, @JsonKey(name: 'emoji')  String? emoji, @JsonKey(name: 'emojiU')  String? emojiU, @JsonKey(name: 'currency')  String? currency)?  $default,) {final _that = this;
switch (_that) {
case _Country() when $default != null:
return $default(_that.id,_that.name,_that.isoCode,_that.emoji,_that.emojiU,_that.currency);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Country implements Country {
  const _Country({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'name') required this.name, @JsonKey(name: 'iso_code') required this.isoCode, @JsonKey(name: 'emoji') this.emoji, @JsonKey(name: 'emojiU') this.emojiU, @JsonKey(name: 'currency') this.currency});
  factory _Country.fromJson(Map<String, dynamic> json) => _$CountryFromJson(json);

@override@JsonKey(name: 'id') final  int id;
@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'iso_code') final  String isoCode;
@override@JsonKey(name: 'emoji') final  String? emoji;
@override@JsonKey(name: 'emojiU') final  String? emojiU;
@override@JsonKey(name: 'currency') final  String? currency;

/// Create a copy of Country
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CountryCopyWith<_Country> get copyWith => __$CountryCopyWithImpl<_Country>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CountryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Country&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.isoCode, isoCode) || other.isoCode == isoCode)&&(identical(other.emoji, emoji) || other.emoji == emoji)&&(identical(other.emojiU, emojiU) || other.emojiU == emojiU)&&(identical(other.currency, currency) || other.currency == currency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,isoCode,emoji,emojiU,currency);

@override
String toString() {
  return 'Country(id: $id, name: $name, isoCode: $isoCode, emoji: $emoji, emojiU: $emojiU, currency: $currency)';
}


}

/// @nodoc
abstract mixin class _$CountryCopyWith<$Res> implements $CountryCopyWith<$Res> {
  factory _$CountryCopyWith(_Country value, $Res Function(_Country) _then) = __$CountryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'name') String name,@JsonKey(name: 'iso_code') String isoCode,@JsonKey(name: 'emoji') String? emoji,@JsonKey(name: 'emojiU') String? emojiU,@JsonKey(name: 'currency') String? currency
});




}
/// @nodoc
class __$CountryCopyWithImpl<$Res>
    implements _$CountryCopyWith<$Res> {
  __$CountryCopyWithImpl(this._self, this._then);

  final _Country _self;
  final $Res Function(_Country) _then;

/// Create a copy of Country
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? isoCode = null,Object? emoji = freezed,Object? emojiU = freezed,Object? currency = freezed,}) {
  return _then(_Country(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isoCode: null == isoCode ? _self.isoCode : isoCode // ignore: cast_nullable_to_non_nullable
as String,emoji: freezed == emoji ? _self.emoji : emoji // ignore: cast_nullable_to_non_nullable
as String?,emojiU: freezed == emojiU ? _self.emojiU : emojiU // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CountryState {

@JsonKey(name: 'id') int get id;@JsonKey(name: 'name') String get name;@JsonKey(name: 'country_id') int get countryId;
/// Create a copy of CountryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountryStateCopyWith<CountryState> get copyWith => _$CountryStateCopyWithImpl<CountryState>(this as CountryState, _$identity);

  /// Serializes this CountryState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountryState&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.countryId, countryId) || other.countryId == countryId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,countryId);

@override
String toString() {
  return 'CountryState(id: $id, name: $name, countryId: $countryId)';
}


}

/// @nodoc
abstract mixin class $CountryStateCopyWith<$Res>  {
  factory $CountryStateCopyWith(CountryState value, $Res Function(CountryState) _then) = _$CountryStateCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'name') String name,@JsonKey(name: 'country_id') int countryId
});




}
/// @nodoc
class _$CountryStateCopyWithImpl<$Res>
    implements $CountryStateCopyWith<$Res> {
  _$CountryStateCopyWithImpl(this._self, this._then);

  final CountryState _self;
  final $Res Function(CountryState) _then;

/// Create a copy of CountryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? countryId = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,countryId: null == countryId ? _self.countryId : countryId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CountryState].
extension CountryStatePatterns on CountryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CountryState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CountryState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CountryState value)  $default,){
final _that = this;
switch (_that) {
case _CountryState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CountryState value)?  $default,){
final _that = this;
switch (_that) {
case _CountryState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'country_id')  int countryId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CountryState() when $default != null:
return $default(_that.id,_that.name,_that.countryId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'country_id')  int countryId)  $default,) {final _that = this;
switch (_that) {
case _CountryState():
return $default(_that.id,_that.name,_that.countryId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'country_id')  int countryId)?  $default,) {final _that = this;
switch (_that) {
case _CountryState() when $default != null:
return $default(_that.id,_that.name,_that.countryId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CountryState implements CountryState {
  const _CountryState({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'name') required this.name, @JsonKey(name: 'country_id') required this.countryId});
  factory _CountryState.fromJson(Map<String, dynamic> json) => _$CountryStateFromJson(json);

@override@JsonKey(name: 'id') final  int id;
@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'country_id') final  int countryId;

/// Create a copy of CountryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CountryStateCopyWith<_CountryState> get copyWith => __$CountryStateCopyWithImpl<_CountryState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CountryStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CountryState&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.countryId, countryId) || other.countryId == countryId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,countryId);

@override
String toString() {
  return 'CountryState(id: $id, name: $name, countryId: $countryId)';
}


}

/// @nodoc
abstract mixin class _$CountryStateCopyWith<$Res> implements $CountryStateCopyWith<$Res> {
  factory _$CountryStateCopyWith(_CountryState value, $Res Function(_CountryState) _then) = __$CountryStateCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'name') String name,@JsonKey(name: 'country_id') int countryId
});




}
/// @nodoc
class __$CountryStateCopyWithImpl<$Res>
    implements _$CountryStateCopyWith<$Res> {
  __$CountryStateCopyWithImpl(this._self, this._then);

  final _CountryState _self;
  final $Res Function(_CountryState) _then;

/// Create a copy of CountryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? countryId = null,}) {
  return _then(_CountryState(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,countryId: null == countryId ? _self.countryId : countryId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$City {

@JsonKey(name: 'id') int get id;@JsonKey(name: 'name') String get name;@JsonKey(name: 'state_id') int get stateId;
/// Create a copy of City
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CityCopyWith<City> get copyWith => _$CityCopyWithImpl<City>(this as City, _$identity);

  /// Serializes this City to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is City&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.stateId, stateId) || other.stateId == stateId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,stateId);

@override
String toString() {
  return 'City(id: $id, name: $name, stateId: $stateId)';
}


}

/// @nodoc
abstract mixin class $CityCopyWith<$Res>  {
  factory $CityCopyWith(City value, $Res Function(City) _then) = _$CityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'name') String name,@JsonKey(name: 'state_id') int stateId
});




}
/// @nodoc
class _$CityCopyWithImpl<$Res>
    implements $CityCopyWith<$Res> {
  _$CityCopyWithImpl(this._self, this._then);

  final City _self;
  final $Res Function(City) _then;

/// Create a copy of City
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? stateId = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,stateId: null == stateId ? _self.stateId : stateId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [City].
extension CityPatterns on City {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _City value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _City() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _City value)  $default,){
final _that = this;
switch (_that) {
case _City():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _City value)?  $default,){
final _that = this;
switch (_that) {
case _City() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'state_id')  int stateId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _City() when $default != null:
return $default(_that.id,_that.name,_that.stateId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'state_id')  int stateId)  $default,) {final _that = this;
switch (_that) {
case _City():
return $default(_that.id,_that.name,_that.stateId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'state_id')  int stateId)?  $default,) {final _that = this;
switch (_that) {
case _City() when $default != null:
return $default(_that.id,_that.name,_that.stateId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _City implements City {
  const _City({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'name') required this.name, @JsonKey(name: 'state_id') required this.stateId});
  factory _City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);

@override@JsonKey(name: 'id') final  int id;
@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'state_id') final  int stateId;

/// Create a copy of City
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CityCopyWith<_City> get copyWith => __$CityCopyWithImpl<_City>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _City&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.stateId, stateId) || other.stateId == stateId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,stateId);

@override
String toString() {
  return 'City(id: $id, name: $name, stateId: $stateId)';
}


}

/// @nodoc
abstract mixin class _$CityCopyWith<$Res> implements $CityCopyWith<$Res> {
  factory _$CityCopyWith(_City value, $Res Function(_City) _then) = __$CityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'name') String name,@JsonKey(name: 'state_id') int stateId
});




}
/// @nodoc
class __$CityCopyWithImpl<$Res>
    implements _$CityCopyWith<$Res> {
  __$CityCopyWithImpl(this._self, this._then);

  final _City _self;
  final $Res Function(_City) _then;

/// Create a copy of City
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? stateId = null,}) {
  return _then(_City(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,stateId: null == stateId ? _self.stateId : stateId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
