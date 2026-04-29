// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_field_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomFieldDefinition {

 String get fieldId; String get fieldName; CustomFieldType get fieldType; bool get isRequired; bool get isActive;// <<< ADDED THIS
 DateTime get createdAt; String? get defaultValue;// validation_rules is a JSON object, so we map it to Map<String, dynamic>
 Map<String, dynamic>? get validationRules;
/// Create a copy of CustomFieldDefinition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomFieldDefinitionCopyWith<CustomFieldDefinition> get copyWith => _$CustomFieldDefinitionCopyWithImpl<CustomFieldDefinition>(this as CustomFieldDefinition, _$identity);

  /// Serializes this CustomFieldDefinition to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomFieldDefinition&&(identical(other.fieldId, fieldId) || other.fieldId == fieldId)&&(identical(other.fieldName, fieldName) || other.fieldName == fieldName)&&(identical(other.fieldType, fieldType) || other.fieldType == fieldType)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.defaultValue, defaultValue) || other.defaultValue == defaultValue)&&const DeepCollectionEquality().equals(other.validationRules, validationRules));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fieldId,fieldName,fieldType,isRequired,isActive,createdAt,defaultValue,const DeepCollectionEquality().hash(validationRules));

@override
String toString() {
  return 'CustomFieldDefinition(fieldId: $fieldId, fieldName: $fieldName, fieldType: $fieldType, isRequired: $isRequired, isActive: $isActive, createdAt: $createdAt, defaultValue: $defaultValue, validationRules: $validationRules)';
}


}

/// @nodoc
abstract mixin class $CustomFieldDefinitionCopyWith<$Res>  {
  factory $CustomFieldDefinitionCopyWith(CustomFieldDefinition value, $Res Function(CustomFieldDefinition) _then) = _$CustomFieldDefinitionCopyWithImpl;
@useResult
$Res call({
 String fieldId, String fieldName, CustomFieldType fieldType, bool isRequired, bool isActive, DateTime createdAt, String? defaultValue, Map<String, dynamic>? validationRules
});




}
/// @nodoc
class _$CustomFieldDefinitionCopyWithImpl<$Res>
    implements $CustomFieldDefinitionCopyWith<$Res> {
  _$CustomFieldDefinitionCopyWithImpl(this._self, this._then);

  final CustomFieldDefinition _self;
  final $Res Function(CustomFieldDefinition) _then;

/// Create a copy of CustomFieldDefinition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fieldId = null,Object? fieldName = null,Object? fieldType = null,Object? isRequired = null,Object? isActive = null,Object? createdAt = null,Object? defaultValue = freezed,Object? validationRules = freezed,}) {
  return _then(_self.copyWith(
fieldId: null == fieldId ? _self.fieldId : fieldId // ignore: cast_nullable_to_non_nullable
as String,fieldName: null == fieldName ? _self.fieldName : fieldName // ignore: cast_nullable_to_non_nullable
as String,fieldType: null == fieldType ? _self.fieldType : fieldType // ignore: cast_nullable_to_non_nullable
as CustomFieldType,isRequired: null == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,defaultValue: freezed == defaultValue ? _self.defaultValue : defaultValue // ignore: cast_nullable_to_non_nullable
as String?,validationRules: freezed == validationRules ? _self.validationRules : validationRules // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomFieldDefinition].
extension CustomFieldDefinitionPatterns on CustomFieldDefinition {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomFieldDefinition value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomFieldDefinition() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomFieldDefinition value)  $default,){
final _that = this;
switch (_that) {
case _CustomFieldDefinition():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomFieldDefinition value)?  $default,){
final _that = this;
switch (_that) {
case _CustomFieldDefinition() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String fieldId,  String fieldName,  CustomFieldType fieldType,  bool isRequired,  bool isActive,  DateTime createdAt,  String? defaultValue,  Map<String, dynamic>? validationRules)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomFieldDefinition() when $default != null:
return $default(_that.fieldId,_that.fieldName,_that.fieldType,_that.isRequired,_that.isActive,_that.createdAt,_that.defaultValue,_that.validationRules);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String fieldId,  String fieldName,  CustomFieldType fieldType,  bool isRequired,  bool isActive,  DateTime createdAt,  String? defaultValue,  Map<String, dynamic>? validationRules)  $default,) {final _that = this;
switch (_that) {
case _CustomFieldDefinition():
return $default(_that.fieldId,_that.fieldName,_that.fieldType,_that.isRequired,_that.isActive,_that.createdAt,_that.defaultValue,_that.validationRules);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String fieldId,  String fieldName,  CustomFieldType fieldType,  bool isRequired,  bool isActive,  DateTime createdAt,  String? defaultValue,  Map<String, dynamic>? validationRules)?  $default,) {final _that = this;
switch (_that) {
case _CustomFieldDefinition() when $default != null:
return $default(_that.fieldId,_that.fieldName,_that.fieldType,_that.isRequired,_that.isActive,_that.createdAt,_that.defaultValue,_that.validationRules);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _CustomFieldDefinition implements CustomFieldDefinition {
  const _CustomFieldDefinition({required this.fieldId, required this.fieldName, required this.fieldType, required this.isRequired, required this.isActive, required this.createdAt, this.defaultValue, final  Map<String, dynamic>? validationRules}): _validationRules = validationRules;
  factory _CustomFieldDefinition.fromJson(Map<String, dynamic> json) => _$CustomFieldDefinitionFromJson(json);

@override final  String fieldId;
@override final  String fieldName;
@override final  CustomFieldType fieldType;
@override final  bool isRequired;
@override final  bool isActive;
// <<< ADDED THIS
@override final  DateTime createdAt;
@override final  String? defaultValue;
// validation_rules is a JSON object, so we map it to Map<String, dynamic>
 final  Map<String, dynamic>? _validationRules;
// validation_rules is a JSON object, so we map it to Map<String, dynamic>
@override Map<String, dynamic>? get validationRules {
  final value = _validationRules;
  if (value == null) return null;
  if (_validationRules is EqualUnmodifiableMapView) return _validationRules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of CustomFieldDefinition
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomFieldDefinitionCopyWith<_CustomFieldDefinition> get copyWith => __$CustomFieldDefinitionCopyWithImpl<_CustomFieldDefinition>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomFieldDefinitionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomFieldDefinition&&(identical(other.fieldId, fieldId) || other.fieldId == fieldId)&&(identical(other.fieldName, fieldName) || other.fieldName == fieldName)&&(identical(other.fieldType, fieldType) || other.fieldType == fieldType)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.defaultValue, defaultValue) || other.defaultValue == defaultValue)&&const DeepCollectionEquality().equals(other._validationRules, _validationRules));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fieldId,fieldName,fieldType,isRequired,isActive,createdAt,defaultValue,const DeepCollectionEquality().hash(_validationRules));

@override
String toString() {
  return 'CustomFieldDefinition(fieldId: $fieldId, fieldName: $fieldName, fieldType: $fieldType, isRequired: $isRequired, isActive: $isActive, createdAt: $createdAt, defaultValue: $defaultValue, validationRules: $validationRules)';
}


}

/// @nodoc
abstract mixin class _$CustomFieldDefinitionCopyWith<$Res> implements $CustomFieldDefinitionCopyWith<$Res> {
  factory _$CustomFieldDefinitionCopyWith(_CustomFieldDefinition value, $Res Function(_CustomFieldDefinition) _then) = __$CustomFieldDefinitionCopyWithImpl;
@override @useResult
$Res call({
 String fieldId, String fieldName, CustomFieldType fieldType, bool isRequired, bool isActive, DateTime createdAt, String? defaultValue, Map<String, dynamic>? validationRules
});




}
/// @nodoc
class __$CustomFieldDefinitionCopyWithImpl<$Res>
    implements _$CustomFieldDefinitionCopyWith<$Res> {
  __$CustomFieldDefinitionCopyWithImpl(this._self, this._then);

  final _CustomFieldDefinition _self;
  final $Res Function(_CustomFieldDefinition) _then;

/// Create a copy of CustomFieldDefinition
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fieldId = null,Object? fieldName = null,Object? fieldType = null,Object? isRequired = null,Object? isActive = null,Object? createdAt = null,Object? defaultValue = freezed,Object? validationRules = freezed,}) {
  return _then(_CustomFieldDefinition(
fieldId: null == fieldId ? _self.fieldId : fieldId // ignore: cast_nullable_to_non_nullable
as String,fieldName: null == fieldName ? _self.fieldName : fieldName // ignore: cast_nullable_to_non_nullable
as String,fieldType: null == fieldType ? _self.fieldType : fieldType // ignore: cast_nullable_to_non_nullable
as CustomFieldType,isRequired: null == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,defaultValue: freezed == defaultValue ? _self.defaultValue : defaultValue // ignore: cast_nullable_to_non_nullable
as String?,validationRules: freezed == validationRules ? _self._validationRules : validationRules // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}


/// @nodoc
mixin _$CustomFieldWithValue {

// --- Definition Properties ---
 String get fieldId; String get fieldName; CustomFieldType get fieldType; bool get isRequired;// --- Value Properties (can be null due to LEFT JOIN) ---
 String? get entityId; String? get entityName; String? get fieldValue; DateTime? get updatedAt;
/// Create a copy of CustomFieldWithValue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomFieldWithValueCopyWith<CustomFieldWithValue> get copyWith => _$CustomFieldWithValueCopyWithImpl<CustomFieldWithValue>(this as CustomFieldWithValue, _$identity);

  /// Serializes this CustomFieldWithValue to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomFieldWithValue&&(identical(other.fieldId, fieldId) || other.fieldId == fieldId)&&(identical(other.fieldName, fieldName) || other.fieldName == fieldName)&&(identical(other.fieldType, fieldType) || other.fieldType == fieldType)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.entityId, entityId) || other.entityId == entityId)&&(identical(other.entityName, entityName) || other.entityName == entityName)&&(identical(other.fieldValue, fieldValue) || other.fieldValue == fieldValue)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fieldId,fieldName,fieldType,isRequired,entityId,entityName,fieldValue,updatedAt);

@override
String toString() {
  return 'CustomFieldWithValue(fieldId: $fieldId, fieldName: $fieldName, fieldType: $fieldType, isRequired: $isRequired, entityId: $entityId, entityName: $entityName, fieldValue: $fieldValue, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $CustomFieldWithValueCopyWith<$Res>  {
  factory $CustomFieldWithValueCopyWith(CustomFieldWithValue value, $Res Function(CustomFieldWithValue) _then) = _$CustomFieldWithValueCopyWithImpl;
@useResult
$Res call({
 String fieldId, String fieldName, CustomFieldType fieldType, bool isRequired, String? entityId, String? entityName, String? fieldValue, DateTime? updatedAt
});




}
/// @nodoc
class _$CustomFieldWithValueCopyWithImpl<$Res>
    implements $CustomFieldWithValueCopyWith<$Res> {
  _$CustomFieldWithValueCopyWithImpl(this._self, this._then);

  final CustomFieldWithValue _self;
  final $Res Function(CustomFieldWithValue) _then;

/// Create a copy of CustomFieldWithValue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fieldId = null,Object? fieldName = null,Object? fieldType = null,Object? isRequired = null,Object? entityId = freezed,Object? entityName = freezed,Object? fieldValue = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
fieldId: null == fieldId ? _self.fieldId : fieldId // ignore: cast_nullable_to_non_nullable
as String,fieldName: null == fieldName ? _self.fieldName : fieldName // ignore: cast_nullable_to_non_nullable
as String,fieldType: null == fieldType ? _self.fieldType : fieldType // ignore: cast_nullable_to_non_nullable
as CustomFieldType,isRequired: null == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool,entityId: freezed == entityId ? _self.entityId : entityId // ignore: cast_nullable_to_non_nullable
as String?,entityName: freezed == entityName ? _self.entityName : entityName // ignore: cast_nullable_to_non_nullable
as String?,fieldValue: freezed == fieldValue ? _self.fieldValue : fieldValue // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomFieldWithValue].
extension CustomFieldWithValuePatterns on CustomFieldWithValue {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomFieldWithValue value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomFieldWithValue() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomFieldWithValue value)  $default,){
final _that = this;
switch (_that) {
case _CustomFieldWithValue():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomFieldWithValue value)?  $default,){
final _that = this;
switch (_that) {
case _CustomFieldWithValue() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String fieldId,  String fieldName,  CustomFieldType fieldType,  bool isRequired,  String? entityId,  String? entityName,  String? fieldValue,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomFieldWithValue() when $default != null:
return $default(_that.fieldId,_that.fieldName,_that.fieldType,_that.isRequired,_that.entityId,_that.entityName,_that.fieldValue,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String fieldId,  String fieldName,  CustomFieldType fieldType,  bool isRequired,  String? entityId,  String? entityName,  String? fieldValue,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _CustomFieldWithValue():
return $default(_that.fieldId,_that.fieldName,_that.fieldType,_that.isRequired,_that.entityId,_that.entityName,_that.fieldValue,_that.updatedAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String fieldId,  String fieldName,  CustomFieldType fieldType,  bool isRequired,  String? entityId,  String? entityName,  String? fieldValue,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _CustomFieldWithValue() when $default != null:
return $default(_that.fieldId,_that.fieldName,_that.fieldType,_that.isRequired,_that.entityId,_that.entityName,_that.fieldValue,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _CustomFieldWithValue implements CustomFieldWithValue {
  const _CustomFieldWithValue({required this.fieldId, required this.fieldName, required this.fieldType, required this.isRequired, this.entityId, this.entityName, this.fieldValue, this.updatedAt});
  factory _CustomFieldWithValue.fromJson(Map<String, dynamic> json) => _$CustomFieldWithValueFromJson(json);

// --- Definition Properties ---
@override final  String fieldId;
@override final  String fieldName;
@override final  CustomFieldType fieldType;
@override final  bool isRequired;
// --- Value Properties (can be null due to LEFT JOIN) ---
@override final  String? entityId;
@override final  String? entityName;
@override final  String? fieldValue;
@override final  DateTime? updatedAt;

/// Create a copy of CustomFieldWithValue
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomFieldWithValueCopyWith<_CustomFieldWithValue> get copyWith => __$CustomFieldWithValueCopyWithImpl<_CustomFieldWithValue>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomFieldWithValueToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomFieldWithValue&&(identical(other.fieldId, fieldId) || other.fieldId == fieldId)&&(identical(other.fieldName, fieldName) || other.fieldName == fieldName)&&(identical(other.fieldType, fieldType) || other.fieldType == fieldType)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.entityId, entityId) || other.entityId == entityId)&&(identical(other.entityName, entityName) || other.entityName == entityName)&&(identical(other.fieldValue, fieldValue) || other.fieldValue == fieldValue)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fieldId,fieldName,fieldType,isRequired,entityId,entityName,fieldValue,updatedAt);

@override
String toString() {
  return 'CustomFieldWithValue(fieldId: $fieldId, fieldName: $fieldName, fieldType: $fieldType, isRequired: $isRequired, entityId: $entityId, entityName: $entityName, fieldValue: $fieldValue, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$CustomFieldWithValueCopyWith<$Res> implements $CustomFieldWithValueCopyWith<$Res> {
  factory _$CustomFieldWithValueCopyWith(_CustomFieldWithValue value, $Res Function(_CustomFieldWithValue) _then) = __$CustomFieldWithValueCopyWithImpl;
@override @useResult
$Res call({
 String fieldId, String fieldName, CustomFieldType fieldType, bool isRequired, String? entityId, String? entityName, String? fieldValue, DateTime? updatedAt
});




}
/// @nodoc
class __$CustomFieldWithValueCopyWithImpl<$Res>
    implements _$CustomFieldWithValueCopyWith<$Res> {
  __$CustomFieldWithValueCopyWithImpl(this._self, this._then);

  final _CustomFieldWithValue _self;
  final $Res Function(_CustomFieldWithValue) _then;

/// Create a copy of CustomFieldWithValue
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fieldId = null,Object? fieldName = null,Object? fieldType = null,Object? isRequired = null,Object? entityId = freezed,Object? entityName = freezed,Object? fieldValue = freezed,Object? updatedAt = freezed,}) {
  return _then(_CustomFieldWithValue(
fieldId: null == fieldId ? _self.fieldId : fieldId // ignore: cast_nullable_to_non_nullable
as String,fieldName: null == fieldName ? _self.fieldName : fieldName // ignore: cast_nullable_to_non_nullable
as String,fieldType: null == fieldType ? _self.fieldType : fieldType // ignore: cast_nullable_to_non_nullable
as CustomFieldType,isRequired: null == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool,entityId: freezed == entityId ? _self.entityId : entityId // ignore: cast_nullable_to_non_nullable
as String?,entityName: freezed == entityName ? _self.entityName : entityName // ignore: cast_nullable_to_non_nullable
as String?,fieldValue: freezed == fieldValue ? _self.fieldValue : fieldValue // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
