// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'role_pemissions_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Module {

@JsonKey(name: 'id') int get id;@JsonKey(name: 'id') set id(int value); String get url; set url(String value); String get name; set name(String value);@JsonKey(name: 'permissions') Permissions get permissions;@JsonKey(name: 'permissions') set permissions(Permissions value);@JsonKey(name: 'sort_order') int get sortOrder;@JsonKey(name: 'sort_order') set sortOrder(int value);@JsonKey(name: 'description') String? get description;@JsonKey(name: 'description') set description(String? value);@JsonKey(name: 'submenus') List<Submenu> get submenus;@JsonKey(name: 'submenus') set submenus(List<Submenu> value);
/// Create a copy of Module
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModuleCopyWith<Module> get copyWith => _$ModuleCopyWithImpl<Module>(this as Module, _$identity);

  /// Serializes this Module to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'Module(id: $id, url: $url, name: $name, permissions: $permissions, sortOrder: $sortOrder, description: $description, submenus: $submenus)';
}


}

/// @nodoc
abstract mixin class $ModuleCopyWith<$Res>  {
  factory $ModuleCopyWith(Module value, $Res Function(Module) _then) = _$ModuleCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int id, String url, String name,@JsonKey(name: 'permissions') Permissions permissions,@JsonKey(name: 'sort_order') int sortOrder,@JsonKey(name: 'description') String? description,@JsonKey(name: 'submenus') List<Submenu> submenus
});


$PermissionsCopyWith<$Res> get permissions;

}
/// @nodoc
class _$ModuleCopyWithImpl<$Res>
    implements $ModuleCopyWith<$Res> {
  _$ModuleCopyWithImpl(this._self, this._then);

  final Module _self;
  final $Res Function(Module) _then;

/// Create a copy of Module
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? url = null,Object? name = null,Object? permissions = null,Object? sortOrder = null,Object? description = freezed,Object? submenus = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,permissions: null == permissions ? _self.permissions : permissions // ignore: cast_nullable_to_non_nullable
as Permissions,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,submenus: null == submenus ? _self.submenus : submenus // ignore: cast_nullable_to_non_nullable
as List<Submenu>,
  ));
}
/// Create a copy of Module
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PermissionsCopyWith<$Res> get permissions {
  
  return $PermissionsCopyWith<$Res>(_self.permissions, (value) {
    return _then(_self.copyWith(permissions: value));
  });
}
}


/// Adds pattern-matching-related methods to [Module].
extension ModulePatterns on Module {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Module value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Module() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Module value)  $default,){
final _that = this;
switch (_that) {
case _Module():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Module value)?  $default,){
final _that = this;
switch (_that) {
case _Module() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id,  String url,  String name, @JsonKey(name: 'permissions')  Permissions permissions, @JsonKey(name: 'sort_order')  int sortOrder, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'submenus')  List<Submenu> submenus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Module() when $default != null:
return $default(_that.id,_that.url,_that.name,_that.permissions,_that.sortOrder,_that.description,_that.submenus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id,  String url,  String name, @JsonKey(name: 'permissions')  Permissions permissions, @JsonKey(name: 'sort_order')  int sortOrder, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'submenus')  List<Submenu> submenus)  $default,) {final _that = this;
switch (_that) {
case _Module():
return $default(_that.id,_that.url,_that.name,_that.permissions,_that.sortOrder,_that.description,_that.submenus);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int id,  String url,  String name, @JsonKey(name: 'permissions')  Permissions permissions, @JsonKey(name: 'sort_order')  int sortOrder, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'submenus')  List<Submenu> submenus)?  $default,) {final _that = this;
switch (_that) {
case _Module() when $default != null:
return $default(_that.id,_that.url,_that.name,_that.permissions,_that.sortOrder,_that.description,_that.submenus);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Module implements Module {
   _Module({@JsonKey(name: 'id') required this.id, required this.url, required this.name, @JsonKey(name: 'permissions') required this.permissions, @JsonKey(name: 'sort_order') required this.sortOrder, @JsonKey(name: 'description') this.description, @JsonKey(name: 'submenus') this.submenus = const []});
  factory _Module.fromJson(Map<String, dynamic> json) => _$ModuleFromJson(json);

@override@JsonKey(name: 'id')  int id;
@override  String url;
@override  String name;
@override@JsonKey(name: 'permissions')  Permissions permissions;
@override@JsonKey(name: 'sort_order')  int sortOrder;
@override@JsonKey(name: 'description')  String? description;
@override@JsonKey(name: 'submenus')  List<Submenu> submenus;

/// Create a copy of Module
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ModuleCopyWith<_Module> get copyWith => __$ModuleCopyWithImpl<_Module>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ModuleToJson(this, );
}



@override
String toString() {
  return 'Module(id: $id, url: $url, name: $name, permissions: $permissions, sortOrder: $sortOrder, description: $description, submenus: $submenus)';
}


}

/// @nodoc
abstract mixin class _$ModuleCopyWith<$Res> implements $ModuleCopyWith<$Res> {
  factory _$ModuleCopyWith(_Module value, $Res Function(_Module) _then) = __$ModuleCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int id, String url, String name,@JsonKey(name: 'permissions') Permissions permissions,@JsonKey(name: 'sort_order') int sortOrder,@JsonKey(name: 'description') String? description,@JsonKey(name: 'submenus') List<Submenu> submenus
});


@override $PermissionsCopyWith<$Res> get permissions;

}
/// @nodoc
class __$ModuleCopyWithImpl<$Res>
    implements _$ModuleCopyWith<$Res> {
  __$ModuleCopyWithImpl(this._self, this._then);

  final _Module _self;
  final $Res Function(_Module) _then;

/// Create a copy of Module
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? url = null,Object? name = null,Object? permissions = null,Object? sortOrder = null,Object? description = freezed,Object? submenus = null,}) {
  return _then(_Module(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,permissions: null == permissions ? _self.permissions : permissions // ignore: cast_nullable_to_non_nullable
as Permissions,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,submenus: null == submenus ? _self.submenus : submenus // ignore: cast_nullable_to_non_nullable
as List<Submenu>,
  ));
}

/// Create a copy of Module
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PermissionsCopyWith<$Res> get permissions {
  
  return $PermissionsCopyWith<$Res>(_self.permissions, (value) {
    return _then(_self.copyWith(permissions: value));
  });
}
}


/// @nodoc
mixin _$Permissions {

@JsonKey(name: 'permission_id') String? get permissionId;@JsonKey(name: 'permission_id') set permissionId(String? value);@JsonKey(name: 'add') bool get add;@JsonKey(name: 'add') set add(bool value);@JsonKey(name: 'edit') bool get edit;@JsonKey(name: 'edit') set edit(bool value);@JsonKey(name: 'view') bool get view;@JsonKey(name: 'view') set view(bool value);@JsonKey(name: 'print') bool get print;@JsonKey(name: 'print') set print(bool value);@JsonKey(name: 'delete') bool get delete;@JsonKey(name: 'delete') set delete(bool value);
/// Create a copy of Permissions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PermissionsCopyWith<Permissions> get copyWith => _$PermissionsCopyWithImpl<Permissions>(this as Permissions, _$identity);

  /// Serializes this Permissions to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'Permissions(permissionId: $permissionId, add: $add, edit: $edit, view: $view, print: $print, delete: $delete)';
}


}

/// @nodoc
abstract mixin class $PermissionsCopyWith<$Res>  {
  factory $PermissionsCopyWith(Permissions value, $Res Function(Permissions) _then) = _$PermissionsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'permission_id') String? permissionId,@JsonKey(name: 'add') bool add,@JsonKey(name: 'edit') bool edit,@JsonKey(name: 'view') bool view,@JsonKey(name: 'print') bool print,@JsonKey(name: 'delete') bool delete
});




}
/// @nodoc
class _$PermissionsCopyWithImpl<$Res>
    implements $PermissionsCopyWith<$Res> {
  _$PermissionsCopyWithImpl(this._self, this._then);

  final Permissions _self;
  final $Res Function(Permissions) _then;

/// Create a copy of Permissions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? permissionId = freezed,Object? add = null,Object? edit = null,Object? view = null,Object? print = null,Object? delete = null,}) {
  return _then(_self.copyWith(
permissionId: freezed == permissionId ? _self.permissionId : permissionId // ignore: cast_nullable_to_non_nullable
as String?,add: null == add ? _self.add : add // ignore: cast_nullable_to_non_nullable
as bool,edit: null == edit ? _self.edit : edit // ignore: cast_nullable_to_non_nullable
as bool,view: null == view ? _self.view : view // ignore: cast_nullable_to_non_nullable
as bool,print: null == print ? _self.print : print // ignore: cast_nullable_to_non_nullable
as bool,delete: null == delete ? _self.delete : delete // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Permissions].
extension PermissionsPatterns on Permissions {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Permissions value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Permissions() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Permissions value)  $default,){
final _that = this;
switch (_that) {
case _Permissions():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Permissions value)?  $default,){
final _that = this;
switch (_that) {
case _Permissions() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'permission_id')  String? permissionId, @JsonKey(name: 'add')  bool add, @JsonKey(name: 'edit')  bool edit, @JsonKey(name: 'view')  bool view, @JsonKey(name: 'print')  bool print, @JsonKey(name: 'delete')  bool delete)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Permissions() when $default != null:
return $default(_that.permissionId,_that.add,_that.edit,_that.view,_that.print,_that.delete);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'permission_id')  String? permissionId, @JsonKey(name: 'add')  bool add, @JsonKey(name: 'edit')  bool edit, @JsonKey(name: 'view')  bool view, @JsonKey(name: 'print')  bool print, @JsonKey(name: 'delete')  bool delete)  $default,) {final _that = this;
switch (_that) {
case _Permissions():
return $default(_that.permissionId,_that.add,_that.edit,_that.view,_that.print,_that.delete);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'permission_id')  String? permissionId, @JsonKey(name: 'add')  bool add, @JsonKey(name: 'edit')  bool edit, @JsonKey(name: 'view')  bool view, @JsonKey(name: 'print')  bool print, @JsonKey(name: 'delete')  bool delete)?  $default,) {final _that = this;
switch (_that) {
case _Permissions() when $default != null:
return $default(_that.permissionId,_that.add,_that.edit,_that.view,_that.print,_that.delete);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Permissions implements Permissions {
   _Permissions({@JsonKey(name: 'permission_id') this.permissionId, @JsonKey(name: 'add') this.add = false, @JsonKey(name: 'edit') this.edit = false, @JsonKey(name: 'view') this.view = false, @JsonKey(name: 'print') this.print = false, @JsonKey(name: 'delete') this.delete = false});
  factory _Permissions.fromJson(Map<String, dynamic> json) => _$PermissionsFromJson(json);

@override@JsonKey(name: 'permission_id')  String? permissionId;
@override@JsonKey(name: 'add')  bool add;
@override@JsonKey(name: 'edit')  bool edit;
@override@JsonKey(name: 'view')  bool view;
@override@JsonKey(name: 'print')  bool print;
@override@JsonKey(name: 'delete')  bool delete;

/// Create a copy of Permissions
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PermissionsCopyWith<_Permissions> get copyWith => __$PermissionsCopyWithImpl<_Permissions>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PermissionsToJson(this, );
}



@override
String toString() {
  return 'Permissions(permissionId: $permissionId, add: $add, edit: $edit, view: $view, print: $print, delete: $delete)';
}


}

/// @nodoc
abstract mixin class _$PermissionsCopyWith<$Res> implements $PermissionsCopyWith<$Res> {
  factory _$PermissionsCopyWith(_Permissions value, $Res Function(_Permissions) _then) = __$PermissionsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'permission_id') String? permissionId,@JsonKey(name: 'add') bool add,@JsonKey(name: 'edit') bool edit,@JsonKey(name: 'view') bool view,@JsonKey(name: 'print') bool print,@JsonKey(name: 'delete') bool delete
});




}
/// @nodoc
class __$PermissionsCopyWithImpl<$Res>
    implements _$PermissionsCopyWith<$Res> {
  __$PermissionsCopyWithImpl(this._self, this._then);

  final _Permissions _self;
  final $Res Function(_Permissions) _then;

/// Create a copy of Permissions
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? permissionId = freezed,Object? add = null,Object? edit = null,Object? view = null,Object? print = null,Object? delete = null,}) {
  return _then(_Permissions(
permissionId: freezed == permissionId ? _self.permissionId : permissionId // ignore: cast_nullable_to_non_nullable
as String?,add: null == add ? _self.add : add // ignore: cast_nullable_to_non_nullable
as bool,edit: null == edit ? _self.edit : edit // ignore: cast_nullable_to_non_nullable
as bool,view: null == view ? _self.view : view // ignore: cast_nullable_to_non_nullable
as bool,print: null == print ? _self.print : print // ignore: cast_nullable_to_non_nullable
as bool,delete: null == delete ? _self.delete : delete // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$Submenu {

@JsonKey(name: 'id') int get id;@JsonKey(name: 'id') set id(int value); String get url; set url(String value);@JsonKey(name: 'link_name') String get linkName;@JsonKey(name: 'link_name') set linkName(String value);@JsonKey(name: 'permissions') Permissions get permissions;@JsonKey(name: 'permissions') set permissions(Permissions value);@JsonKey(name: 'sort_order') int get sortOrder;@JsonKey(name: 'sort_order') set sortOrder(int value);@JsonKey(name: 'mobile_icon') String? get mobileIcon;@JsonKey(name: 'mobile_icon') set mobileIcon(String? value); bool get visibility; set visibility(bool value);
/// Create a copy of Submenu
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmenuCopyWith<Submenu> get copyWith => _$SubmenuCopyWithImpl<Submenu>(this as Submenu, _$identity);

  /// Serializes this Submenu to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'Submenu(id: $id, url: $url, linkName: $linkName, permissions: $permissions, sortOrder: $sortOrder, mobileIcon: $mobileIcon, visibility: $visibility)';
}


}

/// @nodoc
abstract mixin class $SubmenuCopyWith<$Res>  {
  factory $SubmenuCopyWith(Submenu value, $Res Function(Submenu) _then) = _$SubmenuCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int id, String url,@JsonKey(name: 'link_name') String linkName,@JsonKey(name: 'permissions') Permissions permissions,@JsonKey(name: 'sort_order') int sortOrder,@JsonKey(name: 'mobile_icon') String? mobileIcon, bool visibility
});


$PermissionsCopyWith<$Res> get permissions;

}
/// @nodoc
class _$SubmenuCopyWithImpl<$Res>
    implements $SubmenuCopyWith<$Res> {
  _$SubmenuCopyWithImpl(this._self, this._then);

  final Submenu _self;
  final $Res Function(Submenu) _then;

/// Create a copy of Submenu
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? url = null,Object? linkName = null,Object? permissions = null,Object? sortOrder = null,Object? mobileIcon = freezed,Object? visibility = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,linkName: null == linkName ? _self.linkName : linkName // ignore: cast_nullable_to_non_nullable
as String,permissions: null == permissions ? _self.permissions : permissions // ignore: cast_nullable_to_non_nullable
as Permissions,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,mobileIcon: freezed == mobileIcon ? _self.mobileIcon : mobileIcon // ignore: cast_nullable_to_non_nullable
as String?,visibility: null == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of Submenu
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PermissionsCopyWith<$Res> get permissions {
  
  return $PermissionsCopyWith<$Res>(_self.permissions, (value) {
    return _then(_self.copyWith(permissions: value));
  });
}
}


/// Adds pattern-matching-related methods to [Submenu].
extension SubmenuPatterns on Submenu {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Submenu value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Submenu() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Submenu value)  $default,){
final _that = this;
switch (_that) {
case _Submenu():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Submenu value)?  $default,){
final _that = this;
switch (_that) {
case _Submenu() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id,  String url, @JsonKey(name: 'link_name')  String linkName, @JsonKey(name: 'permissions')  Permissions permissions, @JsonKey(name: 'sort_order')  int sortOrder, @JsonKey(name: 'mobile_icon')  String? mobileIcon,  bool visibility)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Submenu() when $default != null:
return $default(_that.id,_that.url,_that.linkName,_that.permissions,_that.sortOrder,_that.mobileIcon,_that.visibility);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id,  String url, @JsonKey(name: 'link_name')  String linkName, @JsonKey(name: 'permissions')  Permissions permissions, @JsonKey(name: 'sort_order')  int sortOrder, @JsonKey(name: 'mobile_icon')  String? mobileIcon,  bool visibility)  $default,) {final _that = this;
switch (_that) {
case _Submenu():
return $default(_that.id,_that.url,_that.linkName,_that.permissions,_that.sortOrder,_that.mobileIcon,_that.visibility);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int id,  String url, @JsonKey(name: 'link_name')  String linkName, @JsonKey(name: 'permissions')  Permissions permissions, @JsonKey(name: 'sort_order')  int sortOrder, @JsonKey(name: 'mobile_icon')  String? mobileIcon,  bool visibility)?  $default,) {final _that = this;
switch (_that) {
case _Submenu() when $default != null:
return $default(_that.id,_that.url,_that.linkName,_that.permissions,_that.sortOrder,_that.mobileIcon,_that.visibility);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Submenu implements Submenu {
   _Submenu({@JsonKey(name: 'id') required this.id, required this.url, @JsonKey(name: 'link_name') required this.linkName, @JsonKey(name: 'permissions') required this.permissions, @JsonKey(name: 'sort_order') required this.sortOrder, @JsonKey(name: 'mobile_icon') this.mobileIcon, this.visibility = true});
  factory _Submenu.fromJson(Map<String, dynamic> json) => _$SubmenuFromJson(json);

@override@JsonKey(name: 'id')  int id;
@override  String url;
@override@JsonKey(name: 'link_name')  String linkName;
@override@JsonKey(name: 'permissions')  Permissions permissions;
@override@JsonKey(name: 'sort_order')  int sortOrder;
@override@JsonKey(name: 'mobile_icon')  String? mobileIcon;
@override@JsonKey()  bool visibility;

/// Create a copy of Submenu
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmenuCopyWith<_Submenu> get copyWith => __$SubmenuCopyWithImpl<_Submenu>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubmenuToJson(this, );
}



@override
String toString() {
  return 'Submenu(id: $id, url: $url, linkName: $linkName, permissions: $permissions, sortOrder: $sortOrder, mobileIcon: $mobileIcon, visibility: $visibility)';
}


}

/// @nodoc
abstract mixin class _$SubmenuCopyWith<$Res> implements $SubmenuCopyWith<$Res> {
  factory _$SubmenuCopyWith(_Submenu value, $Res Function(_Submenu) _then) = __$SubmenuCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int id, String url,@JsonKey(name: 'link_name') String linkName,@JsonKey(name: 'permissions') Permissions permissions,@JsonKey(name: 'sort_order') int sortOrder,@JsonKey(name: 'mobile_icon') String? mobileIcon, bool visibility
});


@override $PermissionsCopyWith<$Res> get permissions;

}
/// @nodoc
class __$SubmenuCopyWithImpl<$Res>
    implements _$SubmenuCopyWith<$Res> {
  __$SubmenuCopyWithImpl(this._self, this._then);

  final _Submenu _self;
  final $Res Function(_Submenu) _then;

/// Create a copy of Submenu
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? url = null,Object? linkName = null,Object? permissions = null,Object? sortOrder = null,Object? mobileIcon = freezed,Object? visibility = null,}) {
  return _then(_Submenu(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,linkName: null == linkName ? _self.linkName : linkName // ignore: cast_nullable_to_non_nullable
as String,permissions: null == permissions ? _self.permissions : permissions // ignore: cast_nullable_to_non_nullable
as Permissions,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,mobileIcon: freezed == mobileIcon ? _self.mobileIcon : mobileIcon // ignore: cast_nullable_to_non_nullable
as String?,visibility: null == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of Submenu
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PermissionsCopyWith<$Res> get permissions {
  
  return $PermissionsCopyWith<$Res>(_self.permissions, (value) {
    return _then(_self.copyWith(permissions: value));
  });
}
}

// dart format on
