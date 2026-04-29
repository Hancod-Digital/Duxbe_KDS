// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EmployeeModel {

@JsonKey(name: 'employee_id') String get employeeId; String get name;@JsonKey(name: 'org_id') String get orgId; String? get email; String? get inviteToken; String? get phone; String? get code; String? get image; Role? get role; bool get isInvite;@JsonKey(name: 'employee_roles', includeToJson: false) List<EmployeeRoleModel> get employeeRoles;@JsonKey(name: 'business_ids', includeToJson: false) List<String> get businessIds;@JsonKey(name: 'employee_branches_view', includeToJson: false) List<EmployeeAccessModel> get accessedBrances;
/// Create a copy of EmployeeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeModelCopyWith<EmployeeModel> get copyWith => _$EmployeeModelCopyWithImpl<EmployeeModel>(this as EmployeeModel, _$identity);

  /// Serializes this EmployeeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeModel&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.name, name) || other.name == name)&&(identical(other.orgId, orgId) || other.orgId == orgId)&&(identical(other.email, email) || other.email == email)&&(identical(other.inviteToken, inviteToken) || other.inviteToken == inviteToken)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.code, code) || other.code == code)&&(identical(other.image, image) || other.image == image)&&(identical(other.role, role) || other.role == role)&&(identical(other.isInvite, isInvite) || other.isInvite == isInvite)&&const DeepCollectionEquality().equals(other.employeeRoles, employeeRoles)&&const DeepCollectionEquality().equals(other.businessIds, businessIds)&&const DeepCollectionEquality().equals(other.accessedBrances, accessedBrances));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,employeeId,name,orgId,email,inviteToken,phone,code,image,role,isInvite,const DeepCollectionEquality().hash(employeeRoles),const DeepCollectionEquality().hash(businessIds),const DeepCollectionEquality().hash(accessedBrances));

@override
String toString() {
  return 'EmployeeModel(employeeId: $employeeId, name: $name, orgId: $orgId, email: $email, inviteToken: $inviteToken, phone: $phone, code: $code, image: $image, role: $role, isInvite: $isInvite, employeeRoles: $employeeRoles, businessIds: $businessIds, accessedBrances: $accessedBrances)';
}


}

/// @nodoc
abstract mixin class $EmployeeModelCopyWith<$Res>  {
  factory $EmployeeModelCopyWith(EmployeeModel value, $Res Function(EmployeeModel) _then) = _$EmployeeModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'employee_id') String employeeId, String name,@JsonKey(name: 'org_id') String orgId, String? email, String? inviteToken, String? phone, String? code, String? image, Role? role, bool isInvite,@JsonKey(name: 'employee_roles', includeToJson: false) List<EmployeeRoleModel> employeeRoles,@JsonKey(name: 'business_ids', includeToJson: false) List<String> businessIds,@JsonKey(name: 'employee_branches_view', includeToJson: false) List<EmployeeAccessModel> accessedBrances
});




}
/// @nodoc
class _$EmployeeModelCopyWithImpl<$Res>
    implements $EmployeeModelCopyWith<$Res> {
  _$EmployeeModelCopyWithImpl(this._self, this._then);

  final EmployeeModel _self;
  final $Res Function(EmployeeModel) _then;

/// Create a copy of EmployeeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? employeeId = null,Object? name = null,Object? orgId = null,Object? email = freezed,Object? inviteToken = freezed,Object? phone = freezed,Object? code = freezed,Object? image = freezed,Object? role = freezed,Object? isInvite = null,Object? employeeRoles = null,Object? businessIds = null,Object? accessedBrances = null,}) {
  return _then(_self.copyWith(
employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,orgId: null == orgId ? _self.orgId : orgId // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,inviteToken: freezed == inviteToken ? _self.inviteToken : inviteToken // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as Role?,isInvite: null == isInvite ? _self.isInvite : isInvite // ignore: cast_nullable_to_non_nullable
as bool,employeeRoles: null == employeeRoles ? _self.employeeRoles : employeeRoles // ignore: cast_nullable_to_non_nullable
as List<EmployeeRoleModel>,businessIds: null == businessIds ? _self.businessIds : businessIds // ignore: cast_nullable_to_non_nullable
as List<String>,accessedBrances: null == accessedBrances ? _self.accessedBrances : accessedBrances // ignore: cast_nullable_to_non_nullable
as List<EmployeeAccessModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [EmployeeModel].
extension EmployeeModelPatterns on EmployeeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmployeeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmployeeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmployeeModel value)  $default,){
final _that = this;
switch (_that) {
case _EmployeeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmployeeModel value)?  $default,){
final _that = this;
switch (_that) {
case _EmployeeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'employee_id')  String employeeId,  String name, @JsonKey(name: 'org_id')  String orgId,  String? email,  String? inviteToken,  String? phone,  String? code,  String? image,  Role? role,  bool isInvite, @JsonKey(name: 'employee_roles', includeToJson: false)  List<EmployeeRoleModel> employeeRoles, @JsonKey(name: 'business_ids', includeToJson: false)  List<String> businessIds, @JsonKey(name: 'employee_branches_view', includeToJson: false)  List<EmployeeAccessModel> accessedBrances)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmployeeModel() when $default != null:
return $default(_that.employeeId,_that.name,_that.orgId,_that.email,_that.inviteToken,_that.phone,_that.code,_that.image,_that.role,_that.isInvite,_that.employeeRoles,_that.businessIds,_that.accessedBrances);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'employee_id')  String employeeId,  String name, @JsonKey(name: 'org_id')  String orgId,  String? email,  String? inviteToken,  String? phone,  String? code,  String? image,  Role? role,  bool isInvite, @JsonKey(name: 'employee_roles', includeToJson: false)  List<EmployeeRoleModel> employeeRoles, @JsonKey(name: 'business_ids', includeToJson: false)  List<String> businessIds, @JsonKey(name: 'employee_branches_view', includeToJson: false)  List<EmployeeAccessModel> accessedBrances)  $default,) {final _that = this;
switch (_that) {
case _EmployeeModel():
return $default(_that.employeeId,_that.name,_that.orgId,_that.email,_that.inviteToken,_that.phone,_that.code,_that.image,_that.role,_that.isInvite,_that.employeeRoles,_that.businessIds,_that.accessedBrances);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'employee_id')  String employeeId,  String name, @JsonKey(name: 'org_id')  String orgId,  String? email,  String? inviteToken,  String? phone,  String? code,  String? image,  Role? role,  bool isInvite, @JsonKey(name: 'employee_roles', includeToJson: false)  List<EmployeeRoleModel> employeeRoles, @JsonKey(name: 'business_ids', includeToJson: false)  List<String> businessIds, @JsonKey(name: 'employee_branches_view', includeToJson: false)  List<EmployeeAccessModel> accessedBrances)?  $default,) {final _that = this;
switch (_that) {
case _EmployeeModel() when $default != null:
return $default(_that.employeeId,_that.name,_that.orgId,_that.email,_that.inviteToken,_that.phone,_that.code,_that.image,_that.role,_that.isInvite,_that.employeeRoles,_that.businessIds,_that.accessedBrances);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _EmployeeModel implements EmployeeModel {
  const _EmployeeModel({@JsonKey(name: 'employee_id') required this.employeeId, required this.name, @JsonKey(name: 'org_id') required this.orgId, this.email, this.inviteToken, this.phone, this.code, this.image, this.role, this.isInvite = false, @JsonKey(name: 'employee_roles', includeToJson: false) final  List<EmployeeRoleModel> employeeRoles = const [], @JsonKey(name: 'business_ids', includeToJson: false) final  List<String> businessIds = const [], @JsonKey(name: 'employee_branches_view', includeToJson: false) final  List<EmployeeAccessModel> accessedBrances = const []}): _employeeRoles = employeeRoles,_businessIds = businessIds,_accessedBrances = accessedBrances;
  factory _EmployeeModel.fromJson(Map<String, dynamic> json) => _$EmployeeModelFromJson(json);

@override@JsonKey(name: 'employee_id') final  String employeeId;
@override final  String name;
@override@JsonKey(name: 'org_id') final  String orgId;
@override final  String? email;
@override final  String? inviteToken;
@override final  String? phone;
@override final  String? code;
@override final  String? image;
@override final  Role? role;
@override@JsonKey() final  bool isInvite;
 final  List<EmployeeRoleModel> _employeeRoles;
@override@JsonKey(name: 'employee_roles', includeToJson: false) List<EmployeeRoleModel> get employeeRoles {
  if (_employeeRoles is EqualUnmodifiableListView) return _employeeRoles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_employeeRoles);
}

 final  List<String> _businessIds;
@override@JsonKey(name: 'business_ids', includeToJson: false) List<String> get businessIds {
  if (_businessIds is EqualUnmodifiableListView) return _businessIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_businessIds);
}

 final  List<EmployeeAccessModel> _accessedBrances;
@override@JsonKey(name: 'employee_branches_view', includeToJson: false) List<EmployeeAccessModel> get accessedBrances {
  if (_accessedBrances is EqualUnmodifiableListView) return _accessedBrances;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_accessedBrances);
}


/// Create a copy of EmployeeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmployeeModelCopyWith<_EmployeeModel> get copyWith => __$EmployeeModelCopyWithImpl<_EmployeeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmployeeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmployeeModel&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.name, name) || other.name == name)&&(identical(other.orgId, orgId) || other.orgId == orgId)&&(identical(other.email, email) || other.email == email)&&(identical(other.inviteToken, inviteToken) || other.inviteToken == inviteToken)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.code, code) || other.code == code)&&(identical(other.image, image) || other.image == image)&&(identical(other.role, role) || other.role == role)&&(identical(other.isInvite, isInvite) || other.isInvite == isInvite)&&const DeepCollectionEquality().equals(other._employeeRoles, _employeeRoles)&&const DeepCollectionEquality().equals(other._businessIds, _businessIds)&&const DeepCollectionEquality().equals(other._accessedBrances, _accessedBrances));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,employeeId,name,orgId,email,inviteToken,phone,code,image,role,isInvite,const DeepCollectionEquality().hash(_employeeRoles),const DeepCollectionEquality().hash(_businessIds),const DeepCollectionEquality().hash(_accessedBrances));

@override
String toString() {
  return 'EmployeeModel(employeeId: $employeeId, name: $name, orgId: $orgId, email: $email, inviteToken: $inviteToken, phone: $phone, code: $code, image: $image, role: $role, isInvite: $isInvite, employeeRoles: $employeeRoles, businessIds: $businessIds, accessedBrances: $accessedBrances)';
}


}

/// @nodoc
abstract mixin class _$EmployeeModelCopyWith<$Res> implements $EmployeeModelCopyWith<$Res> {
  factory _$EmployeeModelCopyWith(_EmployeeModel value, $Res Function(_EmployeeModel) _then) = __$EmployeeModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'employee_id') String employeeId, String name,@JsonKey(name: 'org_id') String orgId, String? email, String? inviteToken, String? phone, String? code, String? image, Role? role, bool isInvite,@JsonKey(name: 'employee_roles', includeToJson: false) List<EmployeeRoleModel> employeeRoles,@JsonKey(name: 'business_ids', includeToJson: false) List<String> businessIds,@JsonKey(name: 'employee_branches_view', includeToJson: false) List<EmployeeAccessModel> accessedBrances
});




}
/// @nodoc
class __$EmployeeModelCopyWithImpl<$Res>
    implements _$EmployeeModelCopyWith<$Res> {
  __$EmployeeModelCopyWithImpl(this._self, this._then);

  final _EmployeeModel _self;
  final $Res Function(_EmployeeModel) _then;

/// Create a copy of EmployeeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? employeeId = null,Object? name = null,Object? orgId = null,Object? email = freezed,Object? inviteToken = freezed,Object? phone = freezed,Object? code = freezed,Object? image = freezed,Object? role = freezed,Object? isInvite = null,Object? employeeRoles = null,Object? businessIds = null,Object? accessedBrances = null,}) {
  return _then(_EmployeeModel(
employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,orgId: null == orgId ? _self.orgId : orgId // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,inviteToken: freezed == inviteToken ? _self.inviteToken : inviteToken // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as Role?,isInvite: null == isInvite ? _self.isInvite : isInvite // ignore: cast_nullable_to_non_nullable
as bool,employeeRoles: null == employeeRoles ? _self._employeeRoles : employeeRoles // ignore: cast_nullable_to_non_nullable
as List<EmployeeRoleModel>,businessIds: null == businessIds ? _self._businessIds : businessIds // ignore: cast_nullable_to_non_nullable
as List<String>,accessedBrances: null == accessedBrances ? _self._accessedBrances : accessedBrances // ignore: cast_nullable_to_non_nullable
as List<EmployeeAccessModel>,
  ));
}


}


/// @nodoc
mixin _$EmployeeAccessModel {

@JsonKey(name: 'employee_id') String get employeeId;@JsonKey(name: 'business_id') String get businessId;@JsonKey(name: 'org_id') String get orgId;@JsonKey(name: 'name') String get name;@JsonKey(name: 'business_type') BusinessType get businessType; Business? get business;
/// Create a copy of EmployeeAccessModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeAccessModelCopyWith<EmployeeAccessModel> get copyWith => _$EmployeeAccessModelCopyWithImpl<EmployeeAccessModel>(this as EmployeeAccessModel, _$identity);

  /// Serializes this EmployeeAccessModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeAccessModel&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.businessId, businessId) || other.businessId == businessId)&&(identical(other.orgId, orgId) || other.orgId == orgId)&&(identical(other.name, name) || other.name == name)&&(identical(other.businessType, businessType) || other.businessType == businessType)&&(identical(other.business, business) || other.business == business));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,employeeId,businessId,orgId,name,businessType,business);

@override
String toString() {
  return 'EmployeeAccessModel(employeeId: $employeeId, businessId: $businessId, orgId: $orgId, name: $name, businessType: $businessType, business: $business)';
}


}

/// @nodoc
abstract mixin class $EmployeeAccessModelCopyWith<$Res>  {
  factory $EmployeeAccessModelCopyWith(EmployeeAccessModel value, $Res Function(EmployeeAccessModel) _then) = _$EmployeeAccessModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'employee_id') String employeeId,@JsonKey(name: 'business_id') String businessId,@JsonKey(name: 'org_id') String orgId,@JsonKey(name: 'name') String name,@JsonKey(name: 'business_type') BusinessType businessType, Business? business
});


$BusinessCopyWith<$Res>? get business;

}
/// @nodoc
class _$EmployeeAccessModelCopyWithImpl<$Res>
    implements $EmployeeAccessModelCopyWith<$Res> {
  _$EmployeeAccessModelCopyWithImpl(this._self, this._then);

  final EmployeeAccessModel _self;
  final $Res Function(EmployeeAccessModel) _then;

/// Create a copy of EmployeeAccessModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? employeeId = null,Object? businessId = null,Object? orgId = null,Object? name = null,Object? businessType = null,Object? business = freezed,}) {
  return _then(_self.copyWith(
employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,businessId: null == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as String,orgId: null == orgId ? _self.orgId : orgId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,businessType: null == businessType ? _self.businessType : businessType // ignore: cast_nullable_to_non_nullable
as BusinessType,business: freezed == business ? _self.business : business // ignore: cast_nullable_to_non_nullable
as Business?,
  ));
}
/// Create a copy of EmployeeAccessModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BusinessCopyWith<$Res>? get business {
    if (_self.business == null) {
    return null;
  }

  return $BusinessCopyWith<$Res>(_self.business!, (value) {
    return _then(_self.copyWith(business: value));
  });
}
}


/// Adds pattern-matching-related methods to [EmployeeAccessModel].
extension EmployeeAccessModelPatterns on EmployeeAccessModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmployeeAccessModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmployeeAccessModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmployeeAccessModel value)  $default,){
final _that = this;
switch (_that) {
case _EmployeeAccessModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmployeeAccessModel value)?  $default,){
final _that = this;
switch (_that) {
case _EmployeeAccessModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'employee_id')  String employeeId, @JsonKey(name: 'business_id')  String businessId, @JsonKey(name: 'org_id')  String orgId, @JsonKey(name: 'name')  String name, @JsonKey(name: 'business_type')  BusinessType businessType,  Business? business)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmployeeAccessModel() when $default != null:
return $default(_that.employeeId,_that.businessId,_that.orgId,_that.name,_that.businessType,_that.business);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'employee_id')  String employeeId, @JsonKey(name: 'business_id')  String businessId, @JsonKey(name: 'org_id')  String orgId, @JsonKey(name: 'name')  String name, @JsonKey(name: 'business_type')  BusinessType businessType,  Business? business)  $default,) {final _that = this;
switch (_that) {
case _EmployeeAccessModel():
return $default(_that.employeeId,_that.businessId,_that.orgId,_that.name,_that.businessType,_that.business);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'employee_id')  String employeeId, @JsonKey(name: 'business_id')  String businessId, @JsonKey(name: 'org_id')  String orgId, @JsonKey(name: 'name')  String name, @JsonKey(name: 'business_type')  BusinessType businessType,  Business? business)?  $default,) {final _that = this;
switch (_that) {
case _EmployeeAccessModel() when $default != null:
return $default(_that.employeeId,_that.businessId,_that.orgId,_that.name,_that.businessType,_that.business);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _EmployeeAccessModel implements EmployeeAccessModel {
  const _EmployeeAccessModel({@JsonKey(name: 'employee_id') required this.employeeId, @JsonKey(name: 'business_id') required this.businessId, @JsonKey(name: 'org_id') required this.orgId, @JsonKey(name: 'name') required this.name, @JsonKey(name: 'business_type') required this.businessType, this.business});
  factory _EmployeeAccessModel.fromJson(Map<String, dynamic> json) => _$EmployeeAccessModelFromJson(json);

@override@JsonKey(name: 'employee_id') final  String employeeId;
@override@JsonKey(name: 'business_id') final  String businessId;
@override@JsonKey(name: 'org_id') final  String orgId;
@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'business_type') final  BusinessType businessType;
@override final  Business? business;

/// Create a copy of EmployeeAccessModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmployeeAccessModelCopyWith<_EmployeeAccessModel> get copyWith => __$EmployeeAccessModelCopyWithImpl<_EmployeeAccessModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmployeeAccessModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmployeeAccessModel&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.businessId, businessId) || other.businessId == businessId)&&(identical(other.orgId, orgId) || other.orgId == orgId)&&(identical(other.name, name) || other.name == name)&&(identical(other.businessType, businessType) || other.businessType == businessType)&&(identical(other.business, business) || other.business == business));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,employeeId,businessId,orgId,name,businessType,business);

@override
String toString() {
  return 'EmployeeAccessModel(employeeId: $employeeId, businessId: $businessId, orgId: $orgId, name: $name, businessType: $businessType, business: $business)';
}


}

/// @nodoc
abstract mixin class _$EmployeeAccessModelCopyWith<$Res> implements $EmployeeAccessModelCopyWith<$Res> {
  factory _$EmployeeAccessModelCopyWith(_EmployeeAccessModel value, $Res Function(_EmployeeAccessModel) _then) = __$EmployeeAccessModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'employee_id') String employeeId,@JsonKey(name: 'business_id') String businessId,@JsonKey(name: 'org_id') String orgId,@JsonKey(name: 'name') String name,@JsonKey(name: 'business_type') BusinessType businessType, Business? business
});


@override $BusinessCopyWith<$Res>? get business;

}
/// @nodoc
class __$EmployeeAccessModelCopyWithImpl<$Res>
    implements _$EmployeeAccessModelCopyWith<$Res> {
  __$EmployeeAccessModelCopyWithImpl(this._self, this._then);

  final _EmployeeAccessModel _self;
  final $Res Function(_EmployeeAccessModel) _then;

/// Create a copy of EmployeeAccessModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? employeeId = null,Object? businessId = null,Object? orgId = null,Object? name = null,Object? businessType = null,Object? business = freezed,}) {
  return _then(_EmployeeAccessModel(
employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,businessId: null == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as String,orgId: null == orgId ? _self.orgId : orgId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,businessType: null == businessType ? _self.businessType : businessType // ignore: cast_nullable_to_non_nullable
as BusinessType,business: freezed == business ? _self.business : business // ignore: cast_nullable_to_non_nullable
as Business?,
  ));
}

/// Create a copy of EmployeeAccessModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BusinessCopyWith<$Res>? get business {
    if (_self.business == null) {
    return null;
  }

  return $BusinessCopyWith<$Res>(_self.business!, (value) {
    return _then(_self.copyWith(business: value));
  });
}
}


/// @nodoc
mixin _$EmployeeRoleModel {

@JsonKey(name: 'role_id') String get roleId;@JsonKey(name: 'role_name') String get name;@JsonKey(name: 'business_id') String? get businessId;
/// Create a copy of EmployeeRoleModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeRoleModelCopyWith<EmployeeRoleModel> get copyWith => _$EmployeeRoleModelCopyWithImpl<EmployeeRoleModel>(this as EmployeeRoleModel, _$identity);

  /// Serializes this EmployeeRoleModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeRoleModel&&(identical(other.roleId, roleId) || other.roleId == roleId)&&(identical(other.name, name) || other.name == name)&&(identical(other.businessId, businessId) || other.businessId == businessId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,roleId,name,businessId);

@override
String toString() {
  return 'EmployeeRoleModel(roleId: $roleId, name: $name, businessId: $businessId)';
}


}

/// @nodoc
abstract mixin class $EmployeeRoleModelCopyWith<$Res>  {
  factory $EmployeeRoleModelCopyWith(EmployeeRoleModel value, $Res Function(EmployeeRoleModel) _then) = _$EmployeeRoleModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'role_id') String roleId,@JsonKey(name: 'role_name') String name,@JsonKey(name: 'business_id') String? businessId
});




}
/// @nodoc
class _$EmployeeRoleModelCopyWithImpl<$Res>
    implements $EmployeeRoleModelCopyWith<$Res> {
  _$EmployeeRoleModelCopyWithImpl(this._self, this._then);

  final EmployeeRoleModel _self;
  final $Res Function(EmployeeRoleModel) _then;

/// Create a copy of EmployeeRoleModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? roleId = null,Object? name = null,Object? businessId = freezed,}) {
  return _then(_self.copyWith(
roleId: null == roleId ? _self.roleId : roleId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,businessId: freezed == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [EmployeeRoleModel].
extension EmployeeRoleModelPatterns on EmployeeRoleModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmployeeRoleModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmployeeRoleModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmployeeRoleModel value)  $default,){
final _that = this;
switch (_that) {
case _EmployeeRoleModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmployeeRoleModel value)?  $default,){
final _that = this;
switch (_that) {
case _EmployeeRoleModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'role_id')  String roleId, @JsonKey(name: 'role_name')  String name, @JsonKey(name: 'business_id')  String? businessId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmployeeRoleModel() when $default != null:
return $default(_that.roleId,_that.name,_that.businessId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'role_id')  String roleId, @JsonKey(name: 'role_name')  String name, @JsonKey(name: 'business_id')  String? businessId)  $default,) {final _that = this;
switch (_that) {
case _EmployeeRoleModel():
return $default(_that.roleId,_that.name,_that.businessId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'role_id')  String roleId, @JsonKey(name: 'role_name')  String name, @JsonKey(name: 'business_id')  String? businessId)?  $default,) {final _that = this;
switch (_that) {
case _EmployeeRoleModel() when $default != null:
return $default(_that.roleId,_that.name,_that.businessId);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _EmployeeRoleModel implements EmployeeRoleModel {
  const _EmployeeRoleModel({@JsonKey(name: 'role_id') required this.roleId, @JsonKey(name: 'role_name') required this.name, @JsonKey(name: 'business_id') this.businessId});
  factory _EmployeeRoleModel.fromJson(Map<String, dynamic> json) => _$EmployeeRoleModelFromJson(json);

@override@JsonKey(name: 'role_id') final  String roleId;
@override@JsonKey(name: 'role_name') final  String name;
@override@JsonKey(name: 'business_id') final  String? businessId;

/// Create a copy of EmployeeRoleModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmployeeRoleModelCopyWith<_EmployeeRoleModel> get copyWith => __$EmployeeRoleModelCopyWithImpl<_EmployeeRoleModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmployeeRoleModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmployeeRoleModel&&(identical(other.roleId, roleId) || other.roleId == roleId)&&(identical(other.name, name) || other.name == name)&&(identical(other.businessId, businessId) || other.businessId == businessId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,roleId,name,businessId);

@override
String toString() {
  return 'EmployeeRoleModel(roleId: $roleId, name: $name, businessId: $businessId)';
}


}

/// @nodoc
abstract mixin class _$EmployeeRoleModelCopyWith<$Res> implements $EmployeeRoleModelCopyWith<$Res> {
  factory _$EmployeeRoleModelCopyWith(_EmployeeRoleModel value, $Res Function(_EmployeeRoleModel) _then) = __$EmployeeRoleModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'role_id') String roleId,@JsonKey(name: 'role_name') String name,@JsonKey(name: 'business_id') String? businessId
});




}
/// @nodoc
class __$EmployeeRoleModelCopyWithImpl<$Res>
    implements _$EmployeeRoleModelCopyWith<$Res> {
  __$EmployeeRoleModelCopyWithImpl(this._self, this._then);

  final _EmployeeRoleModel _self;
  final $Res Function(_EmployeeRoleModel) _then;

/// Create a copy of EmployeeRoleModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? roleId = null,Object? name = null,Object? businessId = freezed,}) {
  return _then(_EmployeeRoleModel(
roleId: null == roleId ? _self.roleId : roleId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,businessId: freezed == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$BusinessTeamMember {

 String get id; String get name;@JsonKey(name: 'system_role') String get systemRole; String get status;@JsonKey(name: 'business_id') String get businessId;@JsonKey(name: 'created_at') DateTime get createdAt; String? get email; String? get phone; String? get image;@JsonKey(name: 'invite_token') String? get inviteToken;@JsonKey(name: 'employee_roles') List<String> get employeeRoles;
/// Create a copy of BusinessTeamMember
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BusinessTeamMemberCopyWith<BusinessTeamMember> get copyWith => _$BusinessTeamMemberCopyWithImpl<BusinessTeamMember>(this as BusinessTeamMember, _$identity);

  /// Serializes this BusinessTeamMember to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BusinessTeamMember&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.systemRole, systemRole) || other.systemRole == systemRole)&&(identical(other.status, status) || other.status == status)&&(identical(other.businessId, businessId) || other.businessId == businessId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.image, image) || other.image == image)&&(identical(other.inviteToken, inviteToken) || other.inviteToken == inviteToken)&&const DeepCollectionEquality().equals(other.employeeRoles, employeeRoles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,systemRole,status,businessId,createdAt,email,phone,image,inviteToken,const DeepCollectionEquality().hash(employeeRoles));

@override
String toString() {
  return 'BusinessTeamMember(id: $id, name: $name, systemRole: $systemRole, status: $status, businessId: $businessId, createdAt: $createdAt, email: $email, phone: $phone, image: $image, inviteToken: $inviteToken, employeeRoles: $employeeRoles)';
}


}

/// @nodoc
abstract mixin class $BusinessTeamMemberCopyWith<$Res>  {
  factory $BusinessTeamMemberCopyWith(BusinessTeamMember value, $Res Function(BusinessTeamMember) _then) = _$BusinessTeamMemberCopyWithImpl;
@useResult
$Res call({
 String id, String name,@JsonKey(name: 'system_role') String systemRole, String status,@JsonKey(name: 'business_id') String businessId,@JsonKey(name: 'created_at') DateTime createdAt, String? email, String? phone, String? image,@JsonKey(name: 'invite_token') String? inviteToken,@JsonKey(name: 'employee_roles') List<String> employeeRoles
});




}
/// @nodoc
class _$BusinessTeamMemberCopyWithImpl<$Res>
    implements $BusinessTeamMemberCopyWith<$Res> {
  _$BusinessTeamMemberCopyWithImpl(this._self, this._then);

  final BusinessTeamMember _self;
  final $Res Function(BusinessTeamMember) _then;

/// Create a copy of BusinessTeamMember
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? systemRole = null,Object? status = null,Object? businessId = null,Object? createdAt = null,Object? email = freezed,Object? phone = freezed,Object? image = freezed,Object? inviteToken = freezed,Object? employeeRoles = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,systemRole: null == systemRole ? _self.systemRole : systemRole // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,businessId: null == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,inviteToken: freezed == inviteToken ? _self.inviteToken : inviteToken // ignore: cast_nullable_to_non_nullable
as String?,employeeRoles: null == employeeRoles ? _self.employeeRoles : employeeRoles // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [BusinessTeamMember].
extension BusinessTeamMemberPatterns on BusinessTeamMember {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BusinessTeamMember value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BusinessTeamMember() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BusinessTeamMember value)  $default,){
final _that = this;
switch (_that) {
case _BusinessTeamMember():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BusinessTeamMember value)?  $default,){
final _that = this;
switch (_that) {
case _BusinessTeamMember() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(name: 'system_role')  String systemRole,  String status, @JsonKey(name: 'business_id')  String businessId, @JsonKey(name: 'created_at')  DateTime createdAt,  String? email,  String? phone,  String? image, @JsonKey(name: 'invite_token')  String? inviteToken, @JsonKey(name: 'employee_roles')  List<String> employeeRoles)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BusinessTeamMember() when $default != null:
return $default(_that.id,_that.name,_that.systemRole,_that.status,_that.businessId,_that.createdAt,_that.email,_that.phone,_that.image,_that.inviteToken,_that.employeeRoles);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(name: 'system_role')  String systemRole,  String status, @JsonKey(name: 'business_id')  String businessId, @JsonKey(name: 'created_at')  DateTime createdAt,  String? email,  String? phone,  String? image, @JsonKey(name: 'invite_token')  String? inviteToken, @JsonKey(name: 'employee_roles')  List<String> employeeRoles)  $default,) {final _that = this;
switch (_that) {
case _BusinessTeamMember():
return $default(_that.id,_that.name,_that.systemRole,_that.status,_that.businessId,_that.createdAt,_that.email,_that.phone,_that.image,_that.inviteToken,_that.employeeRoles);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name, @JsonKey(name: 'system_role')  String systemRole,  String status, @JsonKey(name: 'business_id')  String businessId, @JsonKey(name: 'created_at')  DateTime createdAt,  String? email,  String? phone,  String? image, @JsonKey(name: 'invite_token')  String? inviteToken, @JsonKey(name: 'employee_roles')  List<String> employeeRoles)?  $default,) {final _that = this;
switch (_that) {
case _BusinessTeamMember() when $default != null:
return $default(_that.id,_that.name,_that.systemRole,_that.status,_that.businessId,_that.createdAt,_that.email,_that.phone,_that.image,_that.inviteToken,_that.employeeRoles);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BusinessTeamMember extends BusinessTeamMember {
  const _BusinessTeamMember({required this.id, required this.name, @JsonKey(name: 'system_role') required this.systemRole, required this.status, @JsonKey(name: 'business_id') required this.businessId, @JsonKey(name: 'created_at') required this.createdAt, this.email, this.phone, this.image, @JsonKey(name: 'invite_token') this.inviteToken, @JsonKey(name: 'employee_roles') final  List<String> employeeRoles = const []}): _employeeRoles = employeeRoles,super._();
  factory _BusinessTeamMember.fromJson(Map<String, dynamic> json) => _$BusinessTeamMemberFromJson(json);

@override final  String id;
@override final  String name;
@override@JsonKey(name: 'system_role') final  String systemRole;
@override final  String status;
@override@JsonKey(name: 'business_id') final  String businessId;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;
@override final  String? email;
@override final  String? phone;
@override final  String? image;
@override@JsonKey(name: 'invite_token') final  String? inviteToken;
 final  List<String> _employeeRoles;
@override@JsonKey(name: 'employee_roles') List<String> get employeeRoles {
  if (_employeeRoles is EqualUnmodifiableListView) return _employeeRoles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_employeeRoles);
}


/// Create a copy of BusinessTeamMember
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BusinessTeamMemberCopyWith<_BusinessTeamMember> get copyWith => __$BusinessTeamMemberCopyWithImpl<_BusinessTeamMember>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BusinessTeamMemberToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BusinessTeamMember&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.systemRole, systemRole) || other.systemRole == systemRole)&&(identical(other.status, status) || other.status == status)&&(identical(other.businessId, businessId) || other.businessId == businessId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.image, image) || other.image == image)&&(identical(other.inviteToken, inviteToken) || other.inviteToken == inviteToken)&&const DeepCollectionEquality().equals(other._employeeRoles, _employeeRoles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,systemRole,status,businessId,createdAt,email,phone,image,inviteToken,const DeepCollectionEquality().hash(_employeeRoles));

@override
String toString() {
  return 'BusinessTeamMember(id: $id, name: $name, systemRole: $systemRole, status: $status, businessId: $businessId, createdAt: $createdAt, email: $email, phone: $phone, image: $image, inviteToken: $inviteToken, employeeRoles: $employeeRoles)';
}


}

/// @nodoc
abstract mixin class _$BusinessTeamMemberCopyWith<$Res> implements $BusinessTeamMemberCopyWith<$Res> {
  factory _$BusinessTeamMemberCopyWith(_BusinessTeamMember value, $Res Function(_BusinessTeamMember) _then) = __$BusinessTeamMemberCopyWithImpl;
@override @useResult
$Res call({
 String id, String name,@JsonKey(name: 'system_role') String systemRole, String status,@JsonKey(name: 'business_id') String businessId,@JsonKey(name: 'created_at') DateTime createdAt, String? email, String? phone, String? image,@JsonKey(name: 'invite_token') String? inviteToken,@JsonKey(name: 'employee_roles') List<String> employeeRoles
});




}
/// @nodoc
class __$BusinessTeamMemberCopyWithImpl<$Res>
    implements _$BusinessTeamMemberCopyWith<$Res> {
  __$BusinessTeamMemberCopyWithImpl(this._self, this._then);

  final _BusinessTeamMember _self;
  final $Res Function(_BusinessTeamMember) _then;

/// Create a copy of BusinessTeamMember
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? systemRole = null,Object? status = null,Object? businessId = null,Object? createdAt = null,Object? email = freezed,Object? phone = freezed,Object? image = freezed,Object? inviteToken = freezed,Object? employeeRoles = null,}) {
  return _then(_BusinessTeamMember(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,systemRole: null == systemRole ? _self.systemRole : systemRole // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,businessId: null == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,inviteToken: freezed == inviteToken ? _self.inviteToken : inviteToken // ignore: cast_nullable_to_non_nullable
as String?,employeeRoles: null == employeeRoles ? _self._employeeRoles : employeeRoles // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$TokenResponse {

@JsonKey(name: 'token') String get token;@JsonKey(name: 'org_id') String? get orgId;@JsonKey(name: 'user_id') String? get userId;
/// Create a copy of TokenResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TokenResponseCopyWith<TokenResponse> get copyWith => _$TokenResponseCopyWithImpl<TokenResponse>(this as TokenResponse, _$identity);

  /// Serializes this TokenResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TokenResponse&&(identical(other.token, token) || other.token == token)&&(identical(other.orgId, orgId) || other.orgId == orgId)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,orgId,userId);

@override
String toString() {
  return 'TokenResponse(token: $token, orgId: $orgId, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $TokenResponseCopyWith<$Res>  {
  factory $TokenResponseCopyWith(TokenResponse value, $Res Function(TokenResponse) _then) = _$TokenResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'token') String token,@JsonKey(name: 'org_id') String? orgId,@JsonKey(name: 'user_id') String? userId
});




}
/// @nodoc
class _$TokenResponseCopyWithImpl<$Res>
    implements $TokenResponseCopyWith<$Res> {
  _$TokenResponseCopyWithImpl(this._self, this._then);

  final TokenResponse _self;
  final $Res Function(TokenResponse) _then;

/// Create a copy of TokenResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,Object? orgId = freezed,Object? userId = freezed,}) {
  return _then(_self.copyWith(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,orgId: freezed == orgId ? _self.orgId : orgId // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TokenResponse].
extension TokenResponsePatterns on TokenResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TokenResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TokenResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TokenResponse value)  $default,){
final _that = this;
switch (_that) {
case _TokenResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TokenResponse value)?  $default,){
final _that = this;
switch (_that) {
case _TokenResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'token')  String token, @JsonKey(name: 'org_id')  String? orgId, @JsonKey(name: 'user_id')  String? userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TokenResponse() when $default != null:
return $default(_that.token,_that.orgId,_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'token')  String token, @JsonKey(name: 'org_id')  String? orgId, @JsonKey(name: 'user_id')  String? userId)  $default,) {final _that = this;
switch (_that) {
case _TokenResponse():
return $default(_that.token,_that.orgId,_that.userId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'token')  String token, @JsonKey(name: 'org_id')  String? orgId, @JsonKey(name: 'user_id')  String? userId)?  $default,) {final _that = this;
switch (_that) {
case _TokenResponse() when $default != null:
return $default(_that.token,_that.orgId,_that.userId);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _TokenResponse implements TokenResponse {
  const _TokenResponse({@JsonKey(name: 'token') required this.token, @JsonKey(name: 'org_id') this.orgId, @JsonKey(name: 'user_id') this.userId});
  factory _TokenResponse.fromJson(Map<String, dynamic> json) => _$TokenResponseFromJson(json);

@override@JsonKey(name: 'token') final  String token;
@override@JsonKey(name: 'org_id') final  String? orgId;
@override@JsonKey(name: 'user_id') final  String? userId;

/// Create a copy of TokenResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TokenResponseCopyWith<_TokenResponse> get copyWith => __$TokenResponseCopyWithImpl<_TokenResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TokenResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TokenResponse&&(identical(other.token, token) || other.token == token)&&(identical(other.orgId, orgId) || other.orgId == orgId)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,orgId,userId);

@override
String toString() {
  return 'TokenResponse(token: $token, orgId: $orgId, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$TokenResponseCopyWith<$Res> implements $TokenResponseCopyWith<$Res> {
  factory _$TokenResponseCopyWith(_TokenResponse value, $Res Function(_TokenResponse) _then) = __$TokenResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'token') String token,@JsonKey(name: 'org_id') String? orgId,@JsonKey(name: 'user_id') String? userId
});




}
/// @nodoc
class __$TokenResponseCopyWithImpl<$Res>
    implements _$TokenResponseCopyWith<$Res> {
  __$TokenResponseCopyWithImpl(this._self, this._then);

  final _TokenResponse _self;
  final $Res Function(_TokenResponse) _then;

/// Create a copy of TokenResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,Object? orgId = freezed,Object? userId = freezed,}) {
  return _then(_TokenResponse(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,orgId: freezed == orgId ? _self.orgId : orgId // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CreateBusinessResponse {

@JsonKey(name: 'status') String get status;@JsonKey(name: 'org_id') String get orgId;@JsonKey(name: 'business_id') String get businessId;@JsonKey(name: 'employee_code') String get employeeCode;
/// Create a copy of CreateBusinessResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateBusinessResponseCopyWith<CreateBusinessResponse> get copyWith => _$CreateBusinessResponseCopyWithImpl<CreateBusinessResponse>(this as CreateBusinessResponse, _$identity);

  /// Serializes this CreateBusinessResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateBusinessResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.orgId, orgId) || other.orgId == orgId)&&(identical(other.businessId, businessId) || other.businessId == businessId)&&(identical(other.employeeCode, employeeCode) || other.employeeCode == employeeCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,orgId,businessId,employeeCode);

@override
String toString() {
  return 'CreateBusinessResponse(status: $status, orgId: $orgId, businessId: $businessId, employeeCode: $employeeCode)';
}


}

/// @nodoc
abstract mixin class $CreateBusinessResponseCopyWith<$Res>  {
  factory $CreateBusinessResponseCopyWith(CreateBusinessResponse value, $Res Function(CreateBusinessResponse) _then) = _$CreateBusinessResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'status') String status,@JsonKey(name: 'org_id') String orgId,@JsonKey(name: 'business_id') String businessId,@JsonKey(name: 'employee_code') String employeeCode
});




}
/// @nodoc
class _$CreateBusinessResponseCopyWithImpl<$Res>
    implements $CreateBusinessResponseCopyWith<$Res> {
  _$CreateBusinessResponseCopyWithImpl(this._self, this._then);

  final CreateBusinessResponse _self;
  final $Res Function(CreateBusinessResponse) _then;

/// Create a copy of CreateBusinessResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? orgId = null,Object? businessId = null,Object? employeeCode = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,orgId: null == orgId ? _self.orgId : orgId // ignore: cast_nullable_to_non_nullable
as String,businessId: null == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as String,employeeCode: null == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateBusinessResponse].
extension CreateBusinessResponsePatterns on CreateBusinessResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateBusinessResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateBusinessResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateBusinessResponse value)  $default,){
final _that = this;
switch (_that) {
case _CreateBusinessResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateBusinessResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CreateBusinessResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'status')  String status, @JsonKey(name: 'org_id')  String orgId, @JsonKey(name: 'business_id')  String businessId, @JsonKey(name: 'employee_code')  String employeeCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateBusinessResponse() when $default != null:
return $default(_that.status,_that.orgId,_that.businessId,_that.employeeCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'status')  String status, @JsonKey(name: 'org_id')  String orgId, @JsonKey(name: 'business_id')  String businessId, @JsonKey(name: 'employee_code')  String employeeCode)  $default,) {final _that = this;
switch (_that) {
case _CreateBusinessResponse():
return $default(_that.status,_that.orgId,_that.businessId,_that.employeeCode);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'status')  String status, @JsonKey(name: 'org_id')  String orgId, @JsonKey(name: 'business_id')  String businessId, @JsonKey(name: 'employee_code')  String employeeCode)?  $default,) {final _that = this;
switch (_that) {
case _CreateBusinessResponse() when $default != null:
return $default(_that.status,_that.orgId,_that.businessId,_that.employeeCode);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _CreateBusinessResponse implements CreateBusinessResponse {
  const _CreateBusinessResponse({@JsonKey(name: 'status') required this.status, @JsonKey(name: 'org_id') required this.orgId, @JsonKey(name: 'business_id') required this.businessId, @JsonKey(name: 'employee_code') required this.employeeCode});
  factory _CreateBusinessResponse.fromJson(Map<String, dynamic> json) => _$CreateBusinessResponseFromJson(json);

@override@JsonKey(name: 'status') final  String status;
@override@JsonKey(name: 'org_id') final  String orgId;
@override@JsonKey(name: 'business_id') final  String businessId;
@override@JsonKey(name: 'employee_code') final  String employeeCode;

/// Create a copy of CreateBusinessResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateBusinessResponseCopyWith<_CreateBusinessResponse> get copyWith => __$CreateBusinessResponseCopyWithImpl<_CreateBusinessResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateBusinessResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateBusinessResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.orgId, orgId) || other.orgId == orgId)&&(identical(other.businessId, businessId) || other.businessId == businessId)&&(identical(other.employeeCode, employeeCode) || other.employeeCode == employeeCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,orgId,businessId,employeeCode);

@override
String toString() {
  return 'CreateBusinessResponse(status: $status, orgId: $orgId, businessId: $businessId, employeeCode: $employeeCode)';
}


}

/// @nodoc
abstract mixin class _$CreateBusinessResponseCopyWith<$Res> implements $CreateBusinessResponseCopyWith<$Res> {
  factory _$CreateBusinessResponseCopyWith(_CreateBusinessResponse value, $Res Function(_CreateBusinessResponse) _then) = __$CreateBusinessResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'status') String status,@JsonKey(name: 'org_id') String orgId,@JsonKey(name: 'business_id') String businessId,@JsonKey(name: 'employee_code') String employeeCode
});




}
/// @nodoc
class __$CreateBusinessResponseCopyWithImpl<$Res>
    implements _$CreateBusinessResponseCopyWith<$Res> {
  __$CreateBusinessResponseCopyWithImpl(this._self, this._then);

  final _CreateBusinessResponse _self;
  final $Res Function(_CreateBusinessResponse) _then;

/// Create a copy of CreateBusinessResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? orgId = null,Object? businessId = null,Object? employeeCode = null,}) {
  return _then(_CreateBusinessResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,orgId: null == orgId ? _self.orgId : orgId // ignore: cast_nullable_to_non_nullable
as String,businessId: null == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as String,employeeCode: null == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
