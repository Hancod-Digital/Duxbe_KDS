// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crm_ticket_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CrmTicket {

@JsonKey(name: 'id') String? get id;@JsonKey(name: 'crm_identifier') String? get crmIdentifier;@JsonKey(name: 'business_id') String? get businessId;@JsonKey(name: 'created_by') String? get createdBy;@JsonKey(name: 'title') String? get title;@JsonKey(name: 'description') String? get description;@JsonKey(name: 'issue_type') String? get issueType;@JsonKey(name: 'priority', fromJson: _priorityFromJson) String get priority;@JsonKey(name: 'status', fromJson: _statusFromJson) String get status;@JsonKey(name: 'assigned_to') String? get assignedTo;@JsonKey(name: 'created_at', fromJson: _dateTimeFromJson) DateTime? get createdAt;@JsonKey(name: 'updated_at', fromJson: _dateTimeFromJson) DateTime? get updatedAt;@JsonKey(name: 'message_count', fromJson: _intFromJson) int get messageCount;
/// Create a copy of CrmTicket
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CrmTicketCopyWith<CrmTicket> get copyWith => _$CrmTicketCopyWithImpl<CrmTicket>(this as CrmTicket, _$identity);

  /// Serializes this CrmTicket to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CrmTicket&&(identical(other.id, id) || other.id == id)&&(identical(other.crmIdentifier, crmIdentifier) || other.crmIdentifier == crmIdentifier)&&(identical(other.businessId, businessId) || other.businessId == businessId)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.issueType, issueType) || other.issueType == issueType)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.status, status) || other.status == status)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.messageCount, messageCount) || other.messageCount == messageCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,crmIdentifier,businessId,createdBy,title,description,issueType,priority,status,assignedTo,createdAt,updatedAt,messageCount);

@override
String toString() {
  return 'CrmTicket(id: $id, crmIdentifier: $crmIdentifier, businessId: $businessId, createdBy: $createdBy, title: $title, description: $description, issueType: $issueType, priority: $priority, status: $status, assignedTo: $assignedTo, createdAt: $createdAt, updatedAt: $updatedAt, messageCount: $messageCount)';
}


}

/// @nodoc
abstract mixin class $CrmTicketCopyWith<$Res>  {
  factory $CrmTicketCopyWith(CrmTicket value, $Res Function(CrmTicket) _then) = _$CrmTicketCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'crm_identifier') String? crmIdentifier,@JsonKey(name: 'business_id') String? businessId,@JsonKey(name: 'created_by') String? createdBy,@JsonKey(name: 'title') String? title,@JsonKey(name: 'description') String? description,@JsonKey(name: 'issue_type') String? issueType,@JsonKey(name: 'priority', fromJson: _priorityFromJson) String priority,@JsonKey(name: 'status', fromJson: _statusFromJson) String status,@JsonKey(name: 'assigned_to') String? assignedTo,@JsonKey(name: 'created_at', fromJson: _dateTimeFromJson) DateTime? createdAt,@JsonKey(name: 'updated_at', fromJson: _dateTimeFromJson) DateTime? updatedAt,@JsonKey(name: 'message_count', fromJson: _intFromJson) int messageCount
});




}
/// @nodoc
class _$CrmTicketCopyWithImpl<$Res>
    implements $CrmTicketCopyWith<$Res> {
  _$CrmTicketCopyWithImpl(this._self, this._then);

  final CrmTicket _self;
  final $Res Function(CrmTicket) _then;

/// Create a copy of CrmTicket
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? crmIdentifier = freezed,Object? businessId = freezed,Object? createdBy = freezed,Object? title = freezed,Object? description = freezed,Object? issueType = freezed,Object? priority = null,Object? status = null,Object? assignedTo = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? messageCount = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,crmIdentifier: freezed == crmIdentifier ? _self.crmIdentifier : crmIdentifier // ignore: cast_nullable_to_non_nullable
as String?,businessId: freezed == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,issueType: freezed == issueType ? _self.issueType : issueType // ignore: cast_nullable_to_non_nullable
as String?,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,assignedTo: freezed == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,messageCount: null == messageCount ? _self.messageCount : messageCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CrmTicket].
extension CrmTicketPatterns on CrmTicket {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CrmTicket value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CrmTicket() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CrmTicket value)  $default,){
final _that = this;
switch (_that) {
case _CrmTicket():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CrmTicket value)?  $default,){
final _that = this;
switch (_that) {
case _CrmTicket() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'crm_identifier')  String? crmIdentifier, @JsonKey(name: 'business_id')  String? businessId, @JsonKey(name: 'created_by')  String? createdBy, @JsonKey(name: 'title')  String? title, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'issue_type')  String? issueType, @JsonKey(name: 'priority', fromJson: _priorityFromJson)  String priority, @JsonKey(name: 'status', fromJson: _statusFromJson)  String status, @JsonKey(name: 'assigned_to')  String? assignedTo, @JsonKey(name: 'created_at', fromJson: _dateTimeFromJson)  DateTime? createdAt, @JsonKey(name: 'updated_at', fromJson: _dateTimeFromJson)  DateTime? updatedAt, @JsonKey(name: 'message_count', fromJson: _intFromJson)  int messageCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CrmTicket() when $default != null:
return $default(_that.id,_that.crmIdentifier,_that.businessId,_that.createdBy,_that.title,_that.description,_that.issueType,_that.priority,_that.status,_that.assignedTo,_that.createdAt,_that.updatedAt,_that.messageCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'crm_identifier')  String? crmIdentifier, @JsonKey(name: 'business_id')  String? businessId, @JsonKey(name: 'created_by')  String? createdBy, @JsonKey(name: 'title')  String? title, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'issue_type')  String? issueType, @JsonKey(name: 'priority', fromJson: _priorityFromJson)  String priority, @JsonKey(name: 'status', fromJson: _statusFromJson)  String status, @JsonKey(name: 'assigned_to')  String? assignedTo, @JsonKey(name: 'created_at', fromJson: _dateTimeFromJson)  DateTime? createdAt, @JsonKey(name: 'updated_at', fromJson: _dateTimeFromJson)  DateTime? updatedAt, @JsonKey(name: 'message_count', fromJson: _intFromJson)  int messageCount)  $default,) {final _that = this;
switch (_that) {
case _CrmTicket():
return $default(_that.id,_that.crmIdentifier,_that.businessId,_that.createdBy,_that.title,_that.description,_that.issueType,_that.priority,_that.status,_that.assignedTo,_that.createdAt,_that.updatedAt,_that.messageCount);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'crm_identifier')  String? crmIdentifier, @JsonKey(name: 'business_id')  String? businessId, @JsonKey(name: 'created_by')  String? createdBy, @JsonKey(name: 'title')  String? title, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'issue_type')  String? issueType, @JsonKey(name: 'priority', fromJson: _priorityFromJson)  String priority, @JsonKey(name: 'status', fromJson: _statusFromJson)  String status, @JsonKey(name: 'assigned_to')  String? assignedTo, @JsonKey(name: 'created_at', fromJson: _dateTimeFromJson)  DateTime? createdAt, @JsonKey(name: 'updated_at', fromJson: _dateTimeFromJson)  DateTime? updatedAt, @JsonKey(name: 'message_count', fromJson: _intFromJson)  int messageCount)?  $default,) {final _that = this;
switch (_that) {
case _CrmTicket() when $default != null:
return $default(_that.id,_that.crmIdentifier,_that.businessId,_that.createdBy,_that.title,_that.description,_that.issueType,_that.priority,_that.status,_that.assignedTo,_that.createdAt,_that.updatedAt,_that.messageCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CrmTicket implements CrmTicket {
  const _CrmTicket({@JsonKey(name: 'id') this.id, @JsonKey(name: 'crm_identifier') this.crmIdentifier, @JsonKey(name: 'business_id') this.businessId, @JsonKey(name: 'created_by') this.createdBy, @JsonKey(name: 'title') this.title, @JsonKey(name: 'description') this.description, @JsonKey(name: 'issue_type') this.issueType, @JsonKey(name: 'priority', fromJson: _priorityFromJson) this.priority = 'medium', @JsonKey(name: 'status', fromJson: _statusFromJson) this.status = 'open', @JsonKey(name: 'assigned_to') this.assignedTo, @JsonKey(name: 'created_at', fromJson: _dateTimeFromJson) this.createdAt, @JsonKey(name: 'updated_at', fromJson: _dateTimeFromJson) this.updatedAt, @JsonKey(name: 'message_count', fromJson: _intFromJson) this.messageCount = 0});
  factory _CrmTicket.fromJson(Map<String, dynamic> json) => _$CrmTicketFromJson(json);

@override@JsonKey(name: 'id') final  String? id;
@override@JsonKey(name: 'crm_identifier') final  String? crmIdentifier;
@override@JsonKey(name: 'business_id') final  String? businessId;
@override@JsonKey(name: 'created_by') final  String? createdBy;
@override@JsonKey(name: 'title') final  String? title;
@override@JsonKey(name: 'description') final  String? description;
@override@JsonKey(name: 'issue_type') final  String? issueType;
@override@JsonKey(name: 'priority', fromJson: _priorityFromJson) final  String priority;
@override@JsonKey(name: 'status', fromJson: _statusFromJson) final  String status;
@override@JsonKey(name: 'assigned_to') final  String? assignedTo;
@override@JsonKey(name: 'created_at', fromJson: _dateTimeFromJson) final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at', fromJson: _dateTimeFromJson) final  DateTime? updatedAt;
@override@JsonKey(name: 'message_count', fromJson: _intFromJson) final  int messageCount;

/// Create a copy of CrmTicket
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CrmTicketCopyWith<_CrmTicket> get copyWith => __$CrmTicketCopyWithImpl<_CrmTicket>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CrmTicketToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CrmTicket&&(identical(other.id, id) || other.id == id)&&(identical(other.crmIdentifier, crmIdentifier) || other.crmIdentifier == crmIdentifier)&&(identical(other.businessId, businessId) || other.businessId == businessId)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.issueType, issueType) || other.issueType == issueType)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.status, status) || other.status == status)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.messageCount, messageCount) || other.messageCount == messageCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,crmIdentifier,businessId,createdBy,title,description,issueType,priority,status,assignedTo,createdAt,updatedAt,messageCount);

@override
String toString() {
  return 'CrmTicket(id: $id, crmIdentifier: $crmIdentifier, businessId: $businessId, createdBy: $createdBy, title: $title, description: $description, issueType: $issueType, priority: $priority, status: $status, assignedTo: $assignedTo, createdAt: $createdAt, updatedAt: $updatedAt, messageCount: $messageCount)';
}


}

/// @nodoc
abstract mixin class _$CrmTicketCopyWith<$Res> implements $CrmTicketCopyWith<$Res> {
  factory _$CrmTicketCopyWith(_CrmTicket value, $Res Function(_CrmTicket) _then) = __$CrmTicketCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'crm_identifier') String? crmIdentifier,@JsonKey(name: 'business_id') String? businessId,@JsonKey(name: 'created_by') String? createdBy,@JsonKey(name: 'title') String? title,@JsonKey(name: 'description') String? description,@JsonKey(name: 'issue_type') String? issueType,@JsonKey(name: 'priority', fromJson: _priorityFromJson) String priority,@JsonKey(name: 'status', fromJson: _statusFromJson) String status,@JsonKey(name: 'assigned_to') String? assignedTo,@JsonKey(name: 'created_at', fromJson: _dateTimeFromJson) DateTime? createdAt,@JsonKey(name: 'updated_at', fromJson: _dateTimeFromJson) DateTime? updatedAt,@JsonKey(name: 'message_count', fromJson: _intFromJson) int messageCount
});




}
/// @nodoc
class __$CrmTicketCopyWithImpl<$Res>
    implements _$CrmTicketCopyWith<$Res> {
  __$CrmTicketCopyWithImpl(this._self, this._then);

  final _CrmTicket _self;
  final $Res Function(_CrmTicket) _then;

/// Create a copy of CrmTicket
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? crmIdentifier = freezed,Object? businessId = freezed,Object? createdBy = freezed,Object? title = freezed,Object? description = freezed,Object? issueType = freezed,Object? priority = null,Object? status = null,Object? assignedTo = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? messageCount = null,}) {
  return _then(_CrmTicket(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,crmIdentifier: freezed == crmIdentifier ? _self.crmIdentifier : crmIdentifier // ignore: cast_nullable_to_non_nullable
as String?,businessId: freezed == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,issueType: freezed == issueType ? _self.issueType : issueType // ignore: cast_nullable_to_non_nullable
as String?,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,assignedTo: freezed == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,messageCount: null == messageCount ? _self.messageCount : messageCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
