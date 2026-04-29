// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fiscal_year_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FiscalYear {

@JsonKey(name: 'fiscal_id') String get fiscalId; String get name;@JsonKey(name: 'start_month') int get startMonth;@JsonKey(name: 'end_month') int get endMonth;
/// Create a copy of FiscalYear
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FiscalYearCopyWith<FiscalYear> get copyWith => _$FiscalYearCopyWithImpl<FiscalYear>(this as FiscalYear, _$identity);

  /// Serializes this FiscalYear to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FiscalYear&&(identical(other.fiscalId, fiscalId) || other.fiscalId == fiscalId)&&(identical(other.name, name) || other.name == name)&&(identical(other.startMonth, startMonth) || other.startMonth == startMonth)&&(identical(other.endMonth, endMonth) || other.endMonth == endMonth));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fiscalId,name,startMonth,endMonth);

@override
String toString() {
  return 'FiscalYear(fiscalId: $fiscalId, name: $name, startMonth: $startMonth, endMonth: $endMonth)';
}


}

/// @nodoc
abstract mixin class $FiscalYearCopyWith<$Res>  {
  factory $FiscalYearCopyWith(FiscalYear value, $Res Function(FiscalYear) _then) = _$FiscalYearCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'fiscal_id') String fiscalId, String name,@JsonKey(name: 'start_month') int startMonth,@JsonKey(name: 'end_month') int endMonth
});




}
/// @nodoc
class _$FiscalYearCopyWithImpl<$Res>
    implements $FiscalYearCopyWith<$Res> {
  _$FiscalYearCopyWithImpl(this._self, this._then);

  final FiscalYear _self;
  final $Res Function(FiscalYear) _then;

/// Create a copy of FiscalYear
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fiscalId = null,Object? name = null,Object? startMonth = null,Object? endMonth = null,}) {
  return _then(_self.copyWith(
fiscalId: null == fiscalId ? _self.fiscalId : fiscalId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,startMonth: null == startMonth ? _self.startMonth : startMonth // ignore: cast_nullable_to_non_nullable
as int,endMonth: null == endMonth ? _self.endMonth : endMonth // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [FiscalYear].
extension FiscalYearPatterns on FiscalYear {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FiscalYear value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FiscalYear() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FiscalYear value)  $default,){
final _that = this;
switch (_that) {
case _FiscalYear():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FiscalYear value)?  $default,){
final _that = this;
switch (_that) {
case _FiscalYear() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'fiscal_id')  String fiscalId,  String name, @JsonKey(name: 'start_month')  int startMonth, @JsonKey(name: 'end_month')  int endMonth)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FiscalYear() when $default != null:
return $default(_that.fiscalId,_that.name,_that.startMonth,_that.endMonth);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'fiscal_id')  String fiscalId,  String name, @JsonKey(name: 'start_month')  int startMonth, @JsonKey(name: 'end_month')  int endMonth)  $default,) {final _that = this;
switch (_that) {
case _FiscalYear():
return $default(_that.fiscalId,_that.name,_that.startMonth,_that.endMonth);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'fiscal_id')  String fiscalId,  String name, @JsonKey(name: 'start_month')  int startMonth, @JsonKey(name: 'end_month')  int endMonth)?  $default,) {final _that = this;
switch (_that) {
case _FiscalYear() when $default != null:
return $default(_that.fiscalId,_that.name,_that.startMonth,_that.endMonth);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FiscalYear implements FiscalYear {
  const _FiscalYear({@JsonKey(name: 'fiscal_id') required this.fiscalId, required this.name, @JsonKey(name: 'start_month') required this.startMonth, @JsonKey(name: 'end_month') required this.endMonth});
  factory _FiscalYear.fromJson(Map<String, dynamic> json) => _$FiscalYearFromJson(json);

@override@JsonKey(name: 'fiscal_id') final  String fiscalId;
@override final  String name;
@override@JsonKey(name: 'start_month') final  int startMonth;
@override@JsonKey(name: 'end_month') final  int endMonth;

/// Create a copy of FiscalYear
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FiscalYearCopyWith<_FiscalYear> get copyWith => __$FiscalYearCopyWithImpl<_FiscalYear>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FiscalYearToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FiscalYear&&(identical(other.fiscalId, fiscalId) || other.fiscalId == fiscalId)&&(identical(other.name, name) || other.name == name)&&(identical(other.startMonth, startMonth) || other.startMonth == startMonth)&&(identical(other.endMonth, endMonth) || other.endMonth == endMonth));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fiscalId,name,startMonth,endMonth);

@override
String toString() {
  return 'FiscalYear(fiscalId: $fiscalId, name: $name, startMonth: $startMonth, endMonth: $endMonth)';
}


}

/// @nodoc
abstract mixin class _$FiscalYearCopyWith<$Res> implements $FiscalYearCopyWith<$Res> {
  factory _$FiscalYearCopyWith(_FiscalYear value, $Res Function(_FiscalYear) _then) = __$FiscalYearCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'fiscal_id') String fiscalId, String name,@JsonKey(name: 'start_month') int startMonth,@JsonKey(name: 'end_month') int endMonth
});




}
/// @nodoc
class __$FiscalYearCopyWithImpl<$Res>
    implements _$FiscalYearCopyWith<$Res> {
  __$FiscalYearCopyWithImpl(this._self, this._then);

  final _FiscalYear _self;
  final $Res Function(_FiscalYear) _then;

/// Create a copy of FiscalYear
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fiscalId = null,Object? name = null,Object? startMonth = null,Object? endMonth = null,}) {
  return _then(_FiscalYear(
fiscalId: null == fiscalId ? _self.fiscalId : fiscalId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,startMonth: null == startMonth ? _self.startMonth : startMonth // ignore: cast_nullable_to_non_nullable
as int,endMonth: null == endMonth ? _self.endMonth : endMonth // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
