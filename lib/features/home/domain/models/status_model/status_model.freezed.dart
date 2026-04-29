// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Status {

@JsonKey(name: 'status_id') String get statusId;@JsonKey(name: 'business_id') String get businessId;@JsonKey(name: 'name') String get name;@JsonKey(name: 'sequence_order') int get sequenceOrder;@JsonKey(name: 'moving_order') int? get movingOrder;
/// Create a copy of Status
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatusCopyWith<Status> get copyWith => _$StatusCopyWithImpl<Status>(this as Status, _$identity);

  /// Serializes this Status to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Status&&(identical(other.statusId, statusId) || other.statusId == statusId)&&(identical(other.businessId, businessId) || other.businessId == businessId)&&(identical(other.name, name) || other.name == name)&&(identical(other.sequenceOrder, sequenceOrder) || other.sequenceOrder == sequenceOrder)&&(identical(other.movingOrder, movingOrder) || other.movingOrder == movingOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusId,businessId,name,sequenceOrder,movingOrder);

@override
String toString() {
  return 'Status(statusId: $statusId, businessId: $businessId, name: $name, sequenceOrder: $sequenceOrder, movingOrder: $movingOrder)';
}


}

/// @nodoc
abstract mixin class $StatusCopyWith<$Res>  {
  factory $StatusCopyWith(Status value, $Res Function(Status) _then) = _$StatusCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'status_id') String statusId,@JsonKey(name: 'business_id') String businessId,@JsonKey(name: 'name') String name,@JsonKey(name: 'sequence_order') int sequenceOrder,@JsonKey(name: 'moving_order') int? movingOrder
});




}
/// @nodoc
class _$StatusCopyWithImpl<$Res>
    implements $StatusCopyWith<$Res> {
  _$StatusCopyWithImpl(this._self, this._then);

  final Status _self;
  final $Res Function(Status) _then;

/// Create a copy of Status
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusId = null,Object? businessId = null,Object? name = null,Object? sequenceOrder = null,Object? movingOrder = freezed,}) {
  return _then(_self.copyWith(
statusId: null == statusId ? _self.statusId : statusId // ignore: cast_nullable_to_non_nullable
as String,businessId: null == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sequenceOrder: null == sequenceOrder ? _self.sequenceOrder : sequenceOrder // ignore: cast_nullable_to_non_nullable
as int,movingOrder: freezed == movingOrder ? _self.movingOrder : movingOrder // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Status].
extension StatusPatterns on Status {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Status value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Status() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Status value)  $default,){
final _that = this;
switch (_that) {
case _Status():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Status value)?  $default,){
final _that = this;
switch (_that) {
case _Status() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'status_id')  String statusId, @JsonKey(name: 'business_id')  String businessId, @JsonKey(name: 'name')  String name, @JsonKey(name: 'sequence_order')  int sequenceOrder, @JsonKey(name: 'moving_order')  int? movingOrder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Status() when $default != null:
return $default(_that.statusId,_that.businessId,_that.name,_that.sequenceOrder,_that.movingOrder);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'status_id')  String statusId, @JsonKey(name: 'business_id')  String businessId, @JsonKey(name: 'name')  String name, @JsonKey(name: 'sequence_order')  int sequenceOrder, @JsonKey(name: 'moving_order')  int? movingOrder)  $default,) {final _that = this;
switch (_that) {
case _Status():
return $default(_that.statusId,_that.businessId,_that.name,_that.sequenceOrder,_that.movingOrder);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'status_id')  String statusId, @JsonKey(name: 'business_id')  String businessId, @JsonKey(name: 'name')  String name, @JsonKey(name: 'sequence_order')  int sequenceOrder, @JsonKey(name: 'moving_order')  int? movingOrder)?  $default,) {final _that = this;
switch (_that) {
case _Status() when $default != null:
return $default(_that.statusId,_that.businessId,_that.name,_that.sequenceOrder,_that.movingOrder);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Status implements Status {
  const _Status({@JsonKey(name: 'status_id') required this.statusId, @JsonKey(name: 'business_id') required this.businessId, @JsonKey(name: 'name') required this.name, @JsonKey(name: 'sequence_order') required this.sequenceOrder, @JsonKey(name: 'moving_order') this.movingOrder});
  factory _Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);

@override@JsonKey(name: 'status_id') final  String statusId;
@override@JsonKey(name: 'business_id') final  String businessId;
@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'sequence_order') final  int sequenceOrder;
@override@JsonKey(name: 'moving_order') final  int? movingOrder;

/// Create a copy of Status
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatusCopyWith<_Status> get copyWith => __$StatusCopyWithImpl<_Status>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StatusToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Status&&(identical(other.statusId, statusId) || other.statusId == statusId)&&(identical(other.businessId, businessId) || other.businessId == businessId)&&(identical(other.name, name) || other.name == name)&&(identical(other.sequenceOrder, sequenceOrder) || other.sequenceOrder == sequenceOrder)&&(identical(other.movingOrder, movingOrder) || other.movingOrder == movingOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusId,businessId,name,sequenceOrder,movingOrder);

@override
String toString() {
  return 'Status(statusId: $statusId, businessId: $businessId, name: $name, sequenceOrder: $sequenceOrder, movingOrder: $movingOrder)';
}


}

/// @nodoc
abstract mixin class _$StatusCopyWith<$Res> implements $StatusCopyWith<$Res> {
  factory _$StatusCopyWith(_Status value, $Res Function(_Status) _then) = __$StatusCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'status_id') String statusId,@JsonKey(name: 'business_id') String businessId,@JsonKey(name: 'name') String name,@JsonKey(name: 'sequence_order') int sequenceOrder,@JsonKey(name: 'moving_order') int? movingOrder
});




}
/// @nodoc
class __$StatusCopyWithImpl<$Res>
    implements _$StatusCopyWith<$Res> {
  __$StatusCopyWithImpl(this._self, this._then);

  final _Status _self;
  final $Res Function(_Status) _then;

/// Create a copy of Status
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusId = null,Object? businessId = null,Object? name = null,Object? sequenceOrder = null,Object? movingOrder = freezed,}) {
  return _then(_Status(
statusId: null == statusId ? _self.statusId : statusId // ignore: cast_nullable_to_non_nullable
as String,businessId: null == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sequenceOrder: null == sequenceOrder ? _self.sequenceOrder : sequenceOrder // ignore: cast_nullable_to_non_nullable
as int,movingOrder: freezed == movingOrder ? _self.movingOrder : movingOrder // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
