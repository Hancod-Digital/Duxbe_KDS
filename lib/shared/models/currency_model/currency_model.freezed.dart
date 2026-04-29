// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Currency {

@JsonKey(name: 'name') String get name;@JsonKey(name: 'country_code') List<String> get countryCode;@JsonKey(name: 'code') String? get code;@JsonKey(name: 'symbol') String? get symbol;@JsonKey(name: 'flag') String? get flag;@JsonKey(name: 'decimal_digits') int? get decimalDigits;@JsonKey(name: 'number') int? get number;@JsonKey(name: 'name_plural') String? get namePlural;@JsonKey(name: 'thousands_separator') String? get thousandsSeparator;@JsonKey(name: 'decimal_separator') String? get decimalSeparator;@JsonKey(name: 'space_between_amount_and_symbol') bool? get spaceBetweenAmountAndSymbol;@JsonKey(name: 'symbol_on_left') bool? get symbolOnLeft;
/// Create a copy of Currency
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurrencyCopyWith<Currency> get copyWith => _$CurrencyCopyWithImpl<Currency>(this as Currency, _$identity);

  /// Serializes this Currency to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Currency&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.countryCode, countryCode)&&(identical(other.code, code) || other.code == code)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.flag, flag) || other.flag == flag)&&(identical(other.decimalDigits, decimalDigits) || other.decimalDigits == decimalDigits)&&(identical(other.number, number) || other.number == number)&&(identical(other.namePlural, namePlural) || other.namePlural == namePlural)&&(identical(other.thousandsSeparator, thousandsSeparator) || other.thousandsSeparator == thousandsSeparator)&&(identical(other.decimalSeparator, decimalSeparator) || other.decimalSeparator == decimalSeparator)&&(identical(other.spaceBetweenAmountAndSymbol, spaceBetweenAmountAndSymbol) || other.spaceBetweenAmountAndSymbol == spaceBetweenAmountAndSymbol)&&(identical(other.symbolOnLeft, symbolOnLeft) || other.symbolOnLeft == symbolOnLeft));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(countryCode),code,symbol,flag,decimalDigits,number,namePlural,thousandsSeparator,decimalSeparator,spaceBetweenAmountAndSymbol,symbolOnLeft);

@override
String toString() {
  return 'Currency(name: $name, countryCode: $countryCode, code: $code, symbol: $symbol, flag: $flag, decimalDigits: $decimalDigits, number: $number, namePlural: $namePlural, thousandsSeparator: $thousandsSeparator, decimalSeparator: $decimalSeparator, spaceBetweenAmountAndSymbol: $spaceBetweenAmountAndSymbol, symbolOnLeft: $symbolOnLeft)';
}


}

/// @nodoc
abstract mixin class $CurrencyCopyWith<$Res>  {
  factory $CurrencyCopyWith(Currency value, $Res Function(Currency) _then) = _$CurrencyCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'name') String name,@JsonKey(name: 'country_code') List<String> countryCode,@JsonKey(name: 'code') String? code,@JsonKey(name: 'symbol') String? symbol,@JsonKey(name: 'flag') String? flag,@JsonKey(name: 'decimal_digits') int? decimalDigits,@JsonKey(name: 'number') int? number,@JsonKey(name: 'name_plural') String? namePlural,@JsonKey(name: 'thousands_separator') String? thousandsSeparator,@JsonKey(name: 'decimal_separator') String? decimalSeparator,@JsonKey(name: 'space_between_amount_and_symbol') bool? spaceBetweenAmountAndSymbol,@JsonKey(name: 'symbol_on_left') bool? symbolOnLeft
});




}
/// @nodoc
class _$CurrencyCopyWithImpl<$Res>
    implements $CurrencyCopyWith<$Res> {
  _$CurrencyCopyWithImpl(this._self, this._then);

  final Currency _self;
  final $Res Function(Currency) _then;

/// Create a copy of Currency
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? countryCode = null,Object? code = freezed,Object? symbol = freezed,Object? flag = freezed,Object? decimalDigits = freezed,Object? number = freezed,Object? namePlural = freezed,Object? thousandsSeparator = freezed,Object? decimalSeparator = freezed,Object? spaceBetweenAmountAndSymbol = freezed,Object? symbolOnLeft = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as List<String>,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,symbol: freezed == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String?,flag: freezed == flag ? _self.flag : flag // ignore: cast_nullable_to_non_nullable
as String?,decimalDigits: freezed == decimalDigits ? _self.decimalDigits : decimalDigits // ignore: cast_nullable_to_non_nullable
as int?,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int?,namePlural: freezed == namePlural ? _self.namePlural : namePlural // ignore: cast_nullable_to_non_nullable
as String?,thousandsSeparator: freezed == thousandsSeparator ? _self.thousandsSeparator : thousandsSeparator // ignore: cast_nullable_to_non_nullable
as String?,decimalSeparator: freezed == decimalSeparator ? _self.decimalSeparator : decimalSeparator // ignore: cast_nullable_to_non_nullable
as String?,spaceBetweenAmountAndSymbol: freezed == spaceBetweenAmountAndSymbol ? _self.spaceBetweenAmountAndSymbol : spaceBetweenAmountAndSymbol // ignore: cast_nullable_to_non_nullable
as bool?,symbolOnLeft: freezed == symbolOnLeft ? _self.symbolOnLeft : symbolOnLeft // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [Currency].
extension CurrencyPatterns on Currency {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Currency value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Currency() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Currency value)  $default,){
final _that = this;
switch (_that) {
case _Currency():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Currency value)?  $default,){
final _that = this;
switch (_that) {
case _Currency() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String name, @JsonKey(name: 'country_code')  List<String> countryCode, @JsonKey(name: 'code')  String? code, @JsonKey(name: 'symbol')  String? symbol, @JsonKey(name: 'flag')  String? flag, @JsonKey(name: 'decimal_digits')  int? decimalDigits, @JsonKey(name: 'number')  int? number, @JsonKey(name: 'name_plural')  String? namePlural, @JsonKey(name: 'thousands_separator')  String? thousandsSeparator, @JsonKey(name: 'decimal_separator')  String? decimalSeparator, @JsonKey(name: 'space_between_amount_and_symbol')  bool? spaceBetweenAmountAndSymbol, @JsonKey(name: 'symbol_on_left')  bool? symbolOnLeft)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Currency() when $default != null:
return $default(_that.name,_that.countryCode,_that.code,_that.symbol,_that.flag,_that.decimalDigits,_that.number,_that.namePlural,_that.thousandsSeparator,_that.decimalSeparator,_that.spaceBetweenAmountAndSymbol,_that.symbolOnLeft);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String name, @JsonKey(name: 'country_code')  List<String> countryCode, @JsonKey(name: 'code')  String? code, @JsonKey(name: 'symbol')  String? symbol, @JsonKey(name: 'flag')  String? flag, @JsonKey(name: 'decimal_digits')  int? decimalDigits, @JsonKey(name: 'number')  int? number, @JsonKey(name: 'name_plural')  String? namePlural, @JsonKey(name: 'thousands_separator')  String? thousandsSeparator, @JsonKey(name: 'decimal_separator')  String? decimalSeparator, @JsonKey(name: 'space_between_amount_and_symbol')  bool? spaceBetweenAmountAndSymbol, @JsonKey(name: 'symbol_on_left')  bool? symbolOnLeft)  $default,) {final _that = this;
switch (_that) {
case _Currency():
return $default(_that.name,_that.countryCode,_that.code,_that.symbol,_that.flag,_that.decimalDigits,_that.number,_that.namePlural,_that.thousandsSeparator,_that.decimalSeparator,_that.spaceBetweenAmountAndSymbol,_that.symbolOnLeft);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'name')  String name, @JsonKey(name: 'country_code')  List<String> countryCode, @JsonKey(name: 'code')  String? code, @JsonKey(name: 'symbol')  String? symbol, @JsonKey(name: 'flag')  String? flag, @JsonKey(name: 'decimal_digits')  int? decimalDigits, @JsonKey(name: 'number')  int? number, @JsonKey(name: 'name_plural')  String? namePlural, @JsonKey(name: 'thousands_separator')  String? thousandsSeparator, @JsonKey(name: 'decimal_separator')  String? decimalSeparator, @JsonKey(name: 'space_between_amount_and_symbol')  bool? spaceBetweenAmountAndSymbol, @JsonKey(name: 'symbol_on_left')  bool? symbolOnLeft)?  $default,) {final _that = this;
switch (_that) {
case _Currency() when $default != null:
return $default(_that.name,_that.countryCode,_that.code,_that.symbol,_that.flag,_that.decimalDigits,_that.number,_that.namePlural,_that.thousandsSeparator,_that.decimalSeparator,_that.spaceBetweenAmountAndSymbol,_that.symbolOnLeft);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Currency implements Currency {
  const _Currency({@JsonKey(name: 'name') required this.name, @JsonKey(name: 'country_code') final  List<String> countryCode = const [], @JsonKey(name: 'code') this.code, @JsonKey(name: 'symbol') this.symbol, @JsonKey(name: 'flag') this.flag, @JsonKey(name: 'decimal_digits') this.decimalDigits, @JsonKey(name: 'number') this.number, @JsonKey(name: 'name_plural') this.namePlural, @JsonKey(name: 'thousands_separator') this.thousandsSeparator, @JsonKey(name: 'decimal_separator') this.decimalSeparator, @JsonKey(name: 'space_between_amount_and_symbol') this.spaceBetweenAmountAndSymbol, @JsonKey(name: 'symbol_on_left') this.symbolOnLeft}): _countryCode = countryCode;
  factory _Currency.fromJson(Map<String, dynamic> json) => _$CurrencyFromJson(json);

@override@JsonKey(name: 'name') final  String name;
 final  List<String> _countryCode;
@override@JsonKey(name: 'country_code') List<String> get countryCode {
  if (_countryCode is EqualUnmodifiableListView) return _countryCode;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_countryCode);
}

@override@JsonKey(name: 'code') final  String? code;
@override@JsonKey(name: 'symbol') final  String? symbol;
@override@JsonKey(name: 'flag') final  String? flag;
@override@JsonKey(name: 'decimal_digits') final  int? decimalDigits;
@override@JsonKey(name: 'number') final  int? number;
@override@JsonKey(name: 'name_plural') final  String? namePlural;
@override@JsonKey(name: 'thousands_separator') final  String? thousandsSeparator;
@override@JsonKey(name: 'decimal_separator') final  String? decimalSeparator;
@override@JsonKey(name: 'space_between_amount_and_symbol') final  bool? spaceBetweenAmountAndSymbol;
@override@JsonKey(name: 'symbol_on_left') final  bool? symbolOnLeft;

/// Create a copy of Currency
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurrencyCopyWith<_Currency> get copyWith => __$CurrencyCopyWithImpl<_Currency>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CurrencyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Currency&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._countryCode, _countryCode)&&(identical(other.code, code) || other.code == code)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.flag, flag) || other.flag == flag)&&(identical(other.decimalDigits, decimalDigits) || other.decimalDigits == decimalDigits)&&(identical(other.number, number) || other.number == number)&&(identical(other.namePlural, namePlural) || other.namePlural == namePlural)&&(identical(other.thousandsSeparator, thousandsSeparator) || other.thousandsSeparator == thousandsSeparator)&&(identical(other.decimalSeparator, decimalSeparator) || other.decimalSeparator == decimalSeparator)&&(identical(other.spaceBetweenAmountAndSymbol, spaceBetweenAmountAndSymbol) || other.spaceBetweenAmountAndSymbol == spaceBetweenAmountAndSymbol)&&(identical(other.symbolOnLeft, symbolOnLeft) || other.symbolOnLeft == symbolOnLeft));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(_countryCode),code,symbol,flag,decimalDigits,number,namePlural,thousandsSeparator,decimalSeparator,spaceBetweenAmountAndSymbol,symbolOnLeft);

@override
String toString() {
  return 'Currency(name: $name, countryCode: $countryCode, code: $code, symbol: $symbol, flag: $flag, decimalDigits: $decimalDigits, number: $number, namePlural: $namePlural, thousandsSeparator: $thousandsSeparator, decimalSeparator: $decimalSeparator, spaceBetweenAmountAndSymbol: $spaceBetweenAmountAndSymbol, symbolOnLeft: $symbolOnLeft)';
}


}

/// @nodoc
abstract mixin class _$CurrencyCopyWith<$Res> implements $CurrencyCopyWith<$Res> {
  factory _$CurrencyCopyWith(_Currency value, $Res Function(_Currency) _then) = __$CurrencyCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'name') String name,@JsonKey(name: 'country_code') List<String> countryCode,@JsonKey(name: 'code') String? code,@JsonKey(name: 'symbol') String? symbol,@JsonKey(name: 'flag') String? flag,@JsonKey(name: 'decimal_digits') int? decimalDigits,@JsonKey(name: 'number') int? number,@JsonKey(name: 'name_plural') String? namePlural,@JsonKey(name: 'thousands_separator') String? thousandsSeparator,@JsonKey(name: 'decimal_separator') String? decimalSeparator,@JsonKey(name: 'space_between_amount_and_symbol') bool? spaceBetweenAmountAndSymbol,@JsonKey(name: 'symbol_on_left') bool? symbolOnLeft
});




}
/// @nodoc
class __$CurrencyCopyWithImpl<$Res>
    implements _$CurrencyCopyWith<$Res> {
  __$CurrencyCopyWithImpl(this._self, this._then);

  final _Currency _self;
  final $Res Function(_Currency) _then;

/// Create a copy of Currency
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? countryCode = null,Object? code = freezed,Object? symbol = freezed,Object? flag = freezed,Object? decimalDigits = freezed,Object? number = freezed,Object? namePlural = freezed,Object? thousandsSeparator = freezed,Object? decimalSeparator = freezed,Object? spaceBetweenAmountAndSymbol = freezed,Object? symbolOnLeft = freezed,}) {
  return _then(_Currency(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,countryCode: null == countryCode ? _self._countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as List<String>,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,symbol: freezed == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String?,flag: freezed == flag ? _self.flag : flag // ignore: cast_nullable_to_non_nullable
as String?,decimalDigits: freezed == decimalDigits ? _self.decimalDigits : decimalDigits // ignore: cast_nullable_to_non_nullable
as int?,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int?,namePlural: freezed == namePlural ? _self.namePlural : namePlural // ignore: cast_nullable_to_non_nullable
as String?,thousandsSeparator: freezed == thousandsSeparator ? _self.thousandsSeparator : thousandsSeparator // ignore: cast_nullable_to_non_nullable
as String?,decimalSeparator: freezed == decimalSeparator ? _self.decimalSeparator : decimalSeparator // ignore: cast_nullable_to_non_nullable
as String?,spaceBetweenAmountAndSymbol: freezed == spaceBetweenAmountAndSymbol ? _self.spaceBetweenAmountAndSymbol : spaceBetweenAmountAndSymbol // ignore: cast_nullable_to_non_nullable
as bool?,symbolOnLeft: freezed == symbolOnLeft ? _self.symbolOnLeft : symbolOnLeft // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
