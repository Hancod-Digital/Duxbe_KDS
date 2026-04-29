// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_category_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ItemCategory {

@JsonKey(name: 'item_category_id') String? get itemCategoryId;@JsonKey(name: 'name') String get name;@JsonKey(name: 'business_id') String? get businessId;
/// Create a copy of ItemCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemCategoryCopyWith<ItemCategory> get copyWith => _$ItemCategoryCopyWithImpl<ItemCategory>(this as ItemCategory, _$identity);

  /// Serializes this ItemCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemCategory&&(identical(other.itemCategoryId, itemCategoryId) || other.itemCategoryId == itemCategoryId)&&(identical(other.name, name) || other.name == name)&&(identical(other.businessId, businessId) || other.businessId == businessId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,itemCategoryId,name,businessId);

@override
String toString() {
  return 'ItemCategory(itemCategoryId: $itemCategoryId, name: $name, businessId: $businessId)';
}


}

/// @nodoc
abstract mixin class $ItemCategoryCopyWith<$Res>  {
  factory $ItemCategoryCopyWith(ItemCategory value, $Res Function(ItemCategory) _then) = _$ItemCategoryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'item_category_id') String? itemCategoryId,@JsonKey(name: 'name') String name,@JsonKey(name: 'business_id') String? businessId
});




}
/// @nodoc
class _$ItemCategoryCopyWithImpl<$Res>
    implements $ItemCategoryCopyWith<$Res> {
  _$ItemCategoryCopyWithImpl(this._self, this._then);

  final ItemCategory _self;
  final $Res Function(ItemCategory) _then;

/// Create a copy of ItemCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? itemCategoryId = freezed,Object? name = null,Object? businessId = freezed,}) {
  return _then(_self.copyWith(
itemCategoryId: freezed == itemCategoryId ? _self.itemCategoryId : itemCategoryId // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,businessId: freezed == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ItemCategory].
extension ItemCategoryPatterns on ItemCategory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemCategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemCategory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemCategory value)  $default,){
final _that = this;
switch (_that) {
case _ItemCategory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemCategory value)?  $default,){
final _that = this;
switch (_that) {
case _ItemCategory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'item_category_id')  String? itemCategoryId, @JsonKey(name: 'name')  String name, @JsonKey(name: 'business_id')  String? businessId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemCategory() when $default != null:
return $default(_that.itemCategoryId,_that.name,_that.businessId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'item_category_id')  String? itemCategoryId, @JsonKey(name: 'name')  String name, @JsonKey(name: 'business_id')  String? businessId)  $default,) {final _that = this;
switch (_that) {
case _ItemCategory():
return $default(_that.itemCategoryId,_that.name,_that.businessId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'item_category_id')  String? itemCategoryId, @JsonKey(name: 'name')  String name, @JsonKey(name: 'business_id')  String? businessId)?  $default,) {final _that = this;
switch (_that) {
case _ItemCategory() when $default != null:
return $default(_that.itemCategoryId,_that.name,_that.businessId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ItemCategory implements ItemCategory {
  const _ItemCategory({@JsonKey(name: 'item_category_id') this.itemCategoryId, @JsonKey(name: 'name') required this.name, @JsonKey(name: 'business_id') this.businessId});
  factory _ItemCategory.fromJson(Map<String, dynamic> json) => _$ItemCategoryFromJson(json);

@override@JsonKey(name: 'item_category_id') final  String? itemCategoryId;
@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'business_id') final  String? businessId;

/// Create a copy of ItemCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemCategoryCopyWith<_ItemCategory> get copyWith => __$ItemCategoryCopyWithImpl<_ItemCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemCategory&&(identical(other.itemCategoryId, itemCategoryId) || other.itemCategoryId == itemCategoryId)&&(identical(other.name, name) || other.name == name)&&(identical(other.businessId, businessId) || other.businessId == businessId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,itemCategoryId,name,businessId);

@override
String toString() {
  return 'ItemCategory(itemCategoryId: $itemCategoryId, name: $name, businessId: $businessId)';
}


}

/// @nodoc
abstract mixin class _$ItemCategoryCopyWith<$Res> implements $ItemCategoryCopyWith<$Res> {
  factory _$ItemCategoryCopyWith(_ItemCategory value, $Res Function(_ItemCategory) _then) = __$ItemCategoryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'item_category_id') String? itemCategoryId,@JsonKey(name: 'name') String name,@JsonKey(name: 'business_id') String? businessId
});




}
/// @nodoc
class __$ItemCategoryCopyWithImpl<$Res>
    implements _$ItemCategoryCopyWith<$Res> {
  __$ItemCategoryCopyWithImpl(this._self, this._then);

  final _ItemCategory _self;
  final $Res Function(_ItemCategory) _then;

/// Create a copy of ItemCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? itemCategoryId = freezed,Object? name = null,Object? businessId = freezed,}) {
  return _then(_ItemCategory(
itemCategoryId: freezed == itemCategoryId ? _self.itemCategoryId : itemCategoryId // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,businessId: freezed == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
