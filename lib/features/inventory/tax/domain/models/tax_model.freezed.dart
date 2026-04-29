// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tax_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Tax {

@JsonKey(name: 'tax_id') String? get taxId;@JsonKey(name: 'business_id') String? get businessId;@JsonKey(name: 'name') String get name;@JsonKey(name: 'rate') double get rate;@JsonKey(name: 'type') String? get type;
/// Create a copy of Tax
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaxCopyWith<Tax> get copyWith => _$TaxCopyWithImpl<Tax>(this as Tax, _$identity);

  /// Serializes this Tax to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Tax&&(identical(other.taxId, taxId) || other.taxId == taxId)&&(identical(other.businessId, businessId) || other.businessId == businessId)&&(identical(other.name, name) || other.name == name)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,taxId,businessId,name,rate,type);

@override
String toString() {
  return 'Tax(taxId: $taxId, businessId: $businessId, name: $name, rate: $rate, type: $type)';
}


}

/// @nodoc
abstract mixin class $TaxCopyWith<$Res>  {
  factory $TaxCopyWith(Tax value, $Res Function(Tax) _then) = _$TaxCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'tax_id') String? taxId,@JsonKey(name: 'business_id') String? businessId,@JsonKey(name: 'name') String name,@JsonKey(name: 'rate') double rate,@JsonKey(name: 'type') String? type
});




}
/// @nodoc
class _$TaxCopyWithImpl<$Res>
    implements $TaxCopyWith<$Res> {
  _$TaxCopyWithImpl(this._self, this._then);

  final Tax _self;
  final $Res Function(Tax) _then;

/// Create a copy of Tax
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? taxId = freezed,Object? businessId = freezed,Object? name = null,Object? rate = null,Object? type = freezed,}) {
  return _then(_self.copyWith(
taxId: freezed == taxId ? _self.taxId : taxId // ignore: cast_nullable_to_non_nullable
as String?,businessId: freezed == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as double,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Tax].
extension TaxPatterns on Tax {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Tax value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Tax() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Tax value)  $default,){
final _that = this;
switch (_that) {
case _Tax():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Tax value)?  $default,){
final _that = this;
switch (_that) {
case _Tax() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'tax_id')  String? taxId, @JsonKey(name: 'business_id')  String? businessId, @JsonKey(name: 'name')  String name, @JsonKey(name: 'rate')  double rate, @JsonKey(name: 'type')  String? type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Tax() when $default != null:
return $default(_that.taxId,_that.businessId,_that.name,_that.rate,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'tax_id')  String? taxId, @JsonKey(name: 'business_id')  String? businessId, @JsonKey(name: 'name')  String name, @JsonKey(name: 'rate')  double rate, @JsonKey(name: 'type')  String? type)  $default,) {final _that = this;
switch (_that) {
case _Tax():
return $default(_that.taxId,_that.businessId,_that.name,_that.rate,_that.type);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'tax_id')  String? taxId, @JsonKey(name: 'business_id')  String? businessId, @JsonKey(name: 'name')  String name, @JsonKey(name: 'rate')  double rate, @JsonKey(name: 'type')  String? type)?  $default,) {final _that = this;
switch (_that) {
case _Tax() when $default != null:
return $default(_that.taxId,_that.businessId,_that.name,_that.rate,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Tax implements Tax {
  const _Tax({@JsonKey(name: 'tax_id') this.taxId, @JsonKey(name: 'business_id') this.businessId, @JsonKey(name: 'name') required this.name, @JsonKey(name: 'rate') required this.rate, @JsonKey(name: 'type') this.type});
  factory _Tax.fromJson(Map<String, dynamic> json) => _$TaxFromJson(json);

@override@JsonKey(name: 'tax_id') final  String? taxId;
@override@JsonKey(name: 'business_id') final  String? businessId;
@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'rate') final  double rate;
@override@JsonKey(name: 'type') final  String? type;

/// Create a copy of Tax
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaxCopyWith<_Tax> get copyWith => __$TaxCopyWithImpl<_Tax>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TaxToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Tax&&(identical(other.taxId, taxId) || other.taxId == taxId)&&(identical(other.businessId, businessId) || other.businessId == businessId)&&(identical(other.name, name) || other.name == name)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,taxId,businessId,name,rate,type);

@override
String toString() {
  return 'Tax(taxId: $taxId, businessId: $businessId, name: $name, rate: $rate, type: $type)';
}


}

/// @nodoc
abstract mixin class _$TaxCopyWith<$Res> implements $TaxCopyWith<$Res> {
  factory _$TaxCopyWith(_Tax value, $Res Function(_Tax) _then) = __$TaxCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'tax_id') String? taxId,@JsonKey(name: 'business_id') String? businessId,@JsonKey(name: 'name') String name,@JsonKey(name: 'rate') double rate,@JsonKey(name: 'type') String? type
});




}
/// @nodoc
class __$TaxCopyWithImpl<$Res>
    implements _$TaxCopyWith<$Res> {
  __$TaxCopyWithImpl(this._self, this._then);

  final _Tax _self;
  final $Res Function(_Tax) _then;

/// Create a copy of Tax
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? taxId = freezed,Object? businessId = freezed,Object? name = null,Object? rate = null,Object? type = freezed,}) {
  return _then(_Tax(
taxId: freezed == taxId ? _self.taxId : taxId // ignore: cast_nullable_to_non_nullable
as String?,businessId: freezed == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as double,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
