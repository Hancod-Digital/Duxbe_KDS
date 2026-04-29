// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'choose_modules_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChooseModulesState {

 ChooseModulesStatus get status; List<Module> get modules; String get error; List<int> get selectedModuleIds;
/// Create a copy of ChooseModulesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChooseModulesStateCopyWith<ChooseModulesState> get copyWith => _$ChooseModulesStateCopyWithImpl<ChooseModulesState>(this as ChooseModulesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChooseModulesState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.modules, modules)&&(identical(other.error, error) || other.error == error)&&const DeepCollectionEquality().equals(other.selectedModuleIds, selectedModuleIds));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(modules),error,const DeepCollectionEquality().hash(selectedModuleIds));

@override
String toString() {
  return 'ChooseModulesState(status: $status, modules: $modules, error: $error, selectedModuleIds: $selectedModuleIds)';
}


}

/// @nodoc
abstract mixin class $ChooseModulesStateCopyWith<$Res>  {
  factory $ChooseModulesStateCopyWith(ChooseModulesState value, $Res Function(ChooseModulesState) _then) = _$ChooseModulesStateCopyWithImpl;
@useResult
$Res call({
 ChooseModulesStatus status, List<Module> modules, String error, List<int> selectedModuleIds
});




}
/// @nodoc
class _$ChooseModulesStateCopyWithImpl<$Res>
    implements $ChooseModulesStateCopyWith<$Res> {
  _$ChooseModulesStateCopyWithImpl(this._self, this._then);

  final ChooseModulesState _self;
  final $Res Function(ChooseModulesState) _then;

/// Create a copy of ChooseModulesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? modules = null,Object? error = null,Object? selectedModuleIds = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ChooseModulesStatus,modules: null == modules ? _self.modules : modules // ignore: cast_nullable_to_non_nullable
as List<Module>,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,selectedModuleIds: null == selectedModuleIds ? _self.selectedModuleIds : selectedModuleIds // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}

}


/// Adds pattern-matching-related methods to [ChooseModulesState].
extension ChooseModulesStatePatterns on ChooseModulesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChooseModulesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChooseModulesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChooseModulesState value)  $default,){
final _that = this;
switch (_that) {
case _ChooseModulesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChooseModulesState value)?  $default,){
final _that = this;
switch (_that) {
case _ChooseModulesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ChooseModulesStatus status,  List<Module> modules,  String error,  List<int> selectedModuleIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChooseModulesState() when $default != null:
return $default(_that.status,_that.modules,_that.error,_that.selectedModuleIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ChooseModulesStatus status,  List<Module> modules,  String error,  List<int> selectedModuleIds)  $default,) {final _that = this;
switch (_that) {
case _ChooseModulesState():
return $default(_that.status,_that.modules,_that.error,_that.selectedModuleIds);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ChooseModulesStatus status,  List<Module> modules,  String error,  List<int> selectedModuleIds)?  $default,) {final _that = this;
switch (_that) {
case _ChooseModulesState() when $default != null:
return $default(_that.status,_that.modules,_that.error,_that.selectedModuleIds);case _:
  return null;

}
}

}

/// @nodoc


class _ChooseModulesState extends ChooseModulesState {
  const _ChooseModulesState({this.status = ChooseModulesStatus.initial, final  List<Module> modules = const [], this.error = '', final  List<int> selectedModuleIds = const []}): _modules = modules,_selectedModuleIds = selectedModuleIds,super._();
  

@override@JsonKey() final  ChooseModulesStatus status;
 final  List<Module> _modules;
@override@JsonKey() List<Module> get modules {
  if (_modules is EqualUnmodifiableListView) return _modules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_modules);
}

@override@JsonKey() final  String error;
 final  List<int> _selectedModuleIds;
@override@JsonKey() List<int> get selectedModuleIds {
  if (_selectedModuleIds is EqualUnmodifiableListView) return _selectedModuleIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedModuleIds);
}


/// Create a copy of ChooseModulesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChooseModulesStateCopyWith<_ChooseModulesState> get copyWith => __$ChooseModulesStateCopyWithImpl<_ChooseModulesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChooseModulesState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._modules, _modules)&&(identical(other.error, error) || other.error == error)&&const DeepCollectionEquality().equals(other._selectedModuleIds, _selectedModuleIds));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_modules),error,const DeepCollectionEquality().hash(_selectedModuleIds));

@override
String toString() {
  return 'ChooseModulesState(status: $status, modules: $modules, error: $error, selectedModuleIds: $selectedModuleIds)';
}


}

/// @nodoc
abstract mixin class _$ChooseModulesStateCopyWith<$Res> implements $ChooseModulesStateCopyWith<$Res> {
  factory _$ChooseModulesStateCopyWith(_ChooseModulesState value, $Res Function(_ChooseModulesState) _then) = __$ChooseModulesStateCopyWithImpl;
@override @useResult
$Res call({
 ChooseModulesStatus status, List<Module> modules, String error, List<int> selectedModuleIds
});




}
/// @nodoc
class __$ChooseModulesStateCopyWithImpl<$Res>
    implements _$ChooseModulesStateCopyWith<$Res> {
  __$ChooseModulesStateCopyWithImpl(this._self, this._then);

  final _ChooseModulesState _self;
  final $Res Function(_ChooseModulesState) _then;

/// Create a copy of ChooseModulesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? modules = null,Object? error = null,Object? selectedModuleIds = null,}) {
  return _then(_ChooseModulesState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ChooseModulesStatus,modules: null == modules ? _self._modules : modules // ignore: cast_nullable_to_non_nullable
as List<Module>,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,selectedModuleIds: null == selectedModuleIds ? _self._selectedModuleIds : selectedModuleIds // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

// dart format on
