// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthNotifierState implements DiagnosticableTreeMixin {

 AuthStatus get status; String get error; AuthResponse? get authResponse;
/// Create a copy of AuthNotifierState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthNotifierStateCopyWith<AuthNotifierState> get copyWith => _$AuthNotifierStateCopyWithImpl<AuthNotifierState>(this as AuthNotifierState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthNotifierState'))
    ..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('authResponse', authResponse));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthNotifierState&&(identical(other.status, status) || other.status == status)&&(identical(other.error, error) || other.error == error)&&(identical(other.authResponse, authResponse) || other.authResponse == authResponse));
}


@override
int get hashCode => Object.hash(runtimeType,status,error,authResponse);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthNotifierState(status: $status, error: $error, authResponse: $authResponse)';
}


}

/// @nodoc
abstract mixin class $AuthNotifierStateCopyWith<$Res>  {
  factory $AuthNotifierStateCopyWith(AuthNotifierState value, $Res Function(AuthNotifierState) _then) = _$AuthNotifierStateCopyWithImpl;
@useResult
$Res call({
 AuthStatus status, String error, AuthResponse? authResponse
});




}
/// @nodoc
class _$AuthNotifierStateCopyWithImpl<$Res>
    implements $AuthNotifierStateCopyWith<$Res> {
  _$AuthNotifierStateCopyWithImpl(this._self, this._then);

  final AuthNotifierState _self;
  final $Res Function(AuthNotifierState) _then;

/// Create a copy of AuthNotifierState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? error = null,Object? authResponse = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AuthStatus,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,authResponse: freezed == authResponse ? _self.authResponse : authResponse // ignore: cast_nullable_to_non_nullable
as AuthResponse?,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthNotifierState].
extension AuthNotifierStatePatterns on AuthNotifierState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthState value)  $default,){
final _that = this;
switch (_that) {
case _AuthState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthState value)?  $default,){
final _that = this;
switch (_that) {
case _AuthState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AuthStatus status,  String error,  AuthResponse? authResponse)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that.status,_that.error,_that.authResponse);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AuthStatus status,  String error,  AuthResponse? authResponse)  $default,) {final _that = this;
switch (_that) {
case _AuthState():
return $default(_that.status,_that.error,_that.authResponse);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AuthStatus status,  String error,  AuthResponse? authResponse)?  $default,) {final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that.status,_that.error,_that.authResponse);case _:
  return null;

}
}

}

/// @nodoc


class _AuthState with DiagnosticableTreeMixin implements AuthNotifierState {
  const _AuthState({this.status = AuthStatus.initial, this.error = '', this.authResponse});
  

@override@JsonKey() final  AuthStatus status;
@override@JsonKey() final  String error;
@override final  AuthResponse? authResponse;

/// Create a copy of AuthNotifierState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthStateCopyWith<_AuthState> get copyWith => __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthNotifierState'))
    ..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('authResponse', authResponse));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthState&&(identical(other.status, status) || other.status == status)&&(identical(other.error, error) || other.error == error)&&(identical(other.authResponse, authResponse) || other.authResponse == authResponse));
}


@override
int get hashCode => Object.hash(runtimeType,status,error,authResponse);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthNotifierState(status: $status, error: $error, authResponse: $authResponse)';
}


}

/// @nodoc
abstract mixin class _$AuthStateCopyWith<$Res> implements $AuthNotifierStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(_AuthState value, $Res Function(_AuthState) _then) = __$AuthStateCopyWithImpl;
@override @useResult
$Res call({
 AuthStatus status, String error, AuthResponse? authResponse
});




}
/// @nodoc
class __$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(this._self, this._then);

  final _AuthState _self;
  final $Res Function(_AuthState) _then;

/// Create a copy of AuthNotifierState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? error = null,Object? authResponse = freezed,}) {
  return _then(_AuthState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AuthStatus,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,authResponse: freezed == authResponse ? _self.authResponse : authResponse // ignore: cast_nullable_to_non_nullable
as AuthResponse?,
  ));
}


}

// dart format on
