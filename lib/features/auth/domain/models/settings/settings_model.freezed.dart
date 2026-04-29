// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Settings {

 int? get id;@JsonKey(name: 'allow_walkin_customer') bool get allowWalkinCustomer;@JsonKey(name: 'allow_out_of_stock') bool get allowOutofStock;@JsonKey(name: 'print_on_sale') bool get printOnSale;@JsonKey(name: 'print_on_purchase') bool get printOnPurchase;@JsonKey(name: 'print_barcode') bool get printBarcode;
/// Create a copy of Settings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsCopyWith<Settings> get copyWith => _$SettingsCopyWithImpl<Settings>(this as Settings, _$identity);

  /// Serializes this Settings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Settings&&(identical(other.id, id) || other.id == id)&&(identical(other.allowWalkinCustomer, allowWalkinCustomer) || other.allowWalkinCustomer == allowWalkinCustomer)&&(identical(other.allowOutofStock, allowOutofStock) || other.allowOutofStock == allowOutofStock)&&(identical(other.printOnSale, printOnSale) || other.printOnSale == printOnSale)&&(identical(other.printOnPurchase, printOnPurchase) || other.printOnPurchase == printOnPurchase)&&(identical(other.printBarcode, printBarcode) || other.printBarcode == printBarcode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,allowWalkinCustomer,allowOutofStock,printOnSale,printOnPurchase,printBarcode);

@override
String toString() {
  return 'Settings(id: $id, allowWalkinCustomer: $allowWalkinCustomer, allowOutofStock: $allowOutofStock, printOnSale: $printOnSale, printOnPurchase: $printOnPurchase, printBarcode: $printBarcode)';
}


}

/// @nodoc
abstract mixin class $SettingsCopyWith<$Res>  {
  factory $SettingsCopyWith(Settings value, $Res Function(Settings) _then) = _$SettingsCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'allow_walkin_customer') bool allowWalkinCustomer,@JsonKey(name: 'allow_out_of_stock') bool allowOutofStock,@JsonKey(name: 'print_on_sale') bool printOnSale,@JsonKey(name: 'print_on_purchase') bool printOnPurchase,@JsonKey(name: 'print_barcode') bool printBarcode
});




}
/// @nodoc
class _$SettingsCopyWithImpl<$Res>
    implements $SettingsCopyWith<$Res> {
  _$SettingsCopyWithImpl(this._self, this._then);

  final Settings _self;
  final $Res Function(Settings) _then;

/// Create a copy of Settings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? allowWalkinCustomer = null,Object? allowOutofStock = null,Object? printOnSale = null,Object? printOnPurchase = null,Object? printBarcode = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,allowWalkinCustomer: null == allowWalkinCustomer ? _self.allowWalkinCustomer : allowWalkinCustomer // ignore: cast_nullable_to_non_nullable
as bool,allowOutofStock: null == allowOutofStock ? _self.allowOutofStock : allowOutofStock // ignore: cast_nullable_to_non_nullable
as bool,printOnSale: null == printOnSale ? _self.printOnSale : printOnSale // ignore: cast_nullable_to_non_nullable
as bool,printOnPurchase: null == printOnPurchase ? _self.printOnPurchase : printOnPurchase // ignore: cast_nullable_to_non_nullable
as bool,printBarcode: null == printBarcode ? _self.printBarcode : printBarcode // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Settings].
extension SettingsPatterns on Settings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Settings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Settings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Settings value)  $default,){
final _that = this;
switch (_that) {
case _Settings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Settings value)?  $default,){
final _that = this;
switch (_that) {
case _Settings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'allow_walkin_customer')  bool allowWalkinCustomer, @JsonKey(name: 'allow_out_of_stock')  bool allowOutofStock, @JsonKey(name: 'print_on_sale')  bool printOnSale, @JsonKey(name: 'print_on_purchase')  bool printOnPurchase, @JsonKey(name: 'print_barcode')  bool printBarcode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Settings() when $default != null:
return $default(_that.id,_that.allowWalkinCustomer,_that.allowOutofStock,_that.printOnSale,_that.printOnPurchase,_that.printBarcode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'allow_walkin_customer')  bool allowWalkinCustomer, @JsonKey(name: 'allow_out_of_stock')  bool allowOutofStock, @JsonKey(name: 'print_on_sale')  bool printOnSale, @JsonKey(name: 'print_on_purchase')  bool printOnPurchase, @JsonKey(name: 'print_barcode')  bool printBarcode)  $default,) {final _that = this;
switch (_that) {
case _Settings():
return $default(_that.id,_that.allowWalkinCustomer,_that.allowOutofStock,_that.printOnSale,_that.printOnPurchase,_that.printBarcode);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'allow_walkin_customer')  bool allowWalkinCustomer, @JsonKey(name: 'allow_out_of_stock')  bool allowOutofStock, @JsonKey(name: 'print_on_sale')  bool printOnSale, @JsonKey(name: 'print_on_purchase')  bool printOnPurchase, @JsonKey(name: 'print_barcode')  bool printBarcode)?  $default,) {final _that = this;
switch (_that) {
case _Settings() when $default != null:
return $default(_that.id,_that.allowWalkinCustomer,_that.allowOutofStock,_that.printOnSale,_that.printOnPurchase,_that.printBarcode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Settings implements Settings {
   _Settings({this.id, @JsonKey(name: 'allow_walkin_customer') this.allowWalkinCustomer = false, @JsonKey(name: 'allow_out_of_stock') this.allowOutofStock = false, @JsonKey(name: 'print_on_sale') this.printOnSale = true, @JsonKey(name: 'print_on_purchase') this.printOnPurchase = true, @JsonKey(name: 'print_barcode') this.printBarcode = true});
  factory _Settings.fromJson(Map<String, dynamic> json) => _$SettingsFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'allow_walkin_customer') final  bool allowWalkinCustomer;
@override@JsonKey(name: 'allow_out_of_stock') final  bool allowOutofStock;
@override@JsonKey(name: 'print_on_sale') final  bool printOnSale;
@override@JsonKey(name: 'print_on_purchase') final  bool printOnPurchase;
@override@JsonKey(name: 'print_barcode') final  bool printBarcode;

/// Create a copy of Settings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingsCopyWith<_Settings> get copyWith => __$SettingsCopyWithImpl<_Settings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Settings&&(identical(other.id, id) || other.id == id)&&(identical(other.allowWalkinCustomer, allowWalkinCustomer) || other.allowWalkinCustomer == allowWalkinCustomer)&&(identical(other.allowOutofStock, allowOutofStock) || other.allowOutofStock == allowOutofStock)&&(identical(other.printOnSale, printOnSale) || other.printOnSale == printOnSale)&&(identical(other.printOnPurchase, printOnPurchase) || other.printOnPurchase == printOnPurchase)&&(identical(other.printBarcode, printBarcode) || other.printBarcode == printBarcode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,allowWalkinCustomer,allowOutofStock,printOnSale,printOnPurchase,printBarcode);

@override
String toString() {
  return 'Settings(id: $id, allowWalkinCustomer: $allowWalkinCustomer, allowOutofStock: $allowOutofStock, printOnSale: $printOnSale, printOnPurchase: $printOnPurchase, printBarcode: $printBarcode)';
}


}

/// @nodoc
abstract mixin class _$SettingsCopyWith<$Res> implements $SettingsCopyWith<$Res> {
  factory _$SettingsCopyWith(_Settings value, $Res Function(_Settings) _then) = __$SettingsCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'allow_walkin_customer') bool allowWalkinCustomer,@JsonKey(name: 'allow_out_of_stock') bool allowOutofStock,@JsonKey(name: 'print_on_sale') bool printOnSale,@JsonKey(name: 'print_on_purchase') bool printOnPurchase,@JsonKey(name: 'print_barcode') bool printBarcode
});




}
/// @nodoc
class __$SettingsCopyWithImpl<$Res>
    implements _$SettingsCopyWith<$Res> {
  __$SettingsCopyWithImpl(this._self, this._then);

  final _Settings _self;
  final $Res Function(_Settings) _then;

/// Create a copy of Settings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? allowWalkinCustomer = null,Object? allowOutofStock = null,Object? printOnSale = null,Object? printOnPurchase = null,Object? printBarcode = null,}) {
  return _then(_Settings(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,allowWalkinCustomer: null == allowWalkinCustomer ? _self.allowWalkinCustomer : allowWalkinCustomer // ignore: cast_nullable_to_non_nullable
as bool,allowOutofStock: null == allowOutofStock ? _self.allowOutofStock : allowOutofStock // ignore: cast_nullable_to_non_nullable
as bool,printOnSale: null == printOnSale ? _self.printOnSale : printOnSale // ignore: cast_nullable_to_non_nullable
as bool,printOnPurchase: null == printOnPurchase ? _self.printOnPurchase : printOnPurchase // ignore: cast_nullable_to_non_nullable
as bool,printBarcode: null == printBarcode ? _self.printBarcode : printBarcode // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$AuthApiErrorResponse {

@JsonKey(name: 'error') String get error;@JsonKey(name: 'details') String? get details;
/// Create a copy of AuthApiErrorResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthApiErrorResponseCopyWith<AuthApiErrorResponse> get copyWith => _$AuthApiErrorResponseCopyWithImpl<AuthApiErrorResponse>(this as AuthApiErrorResponse, _$identity);

  /// Serializes this AuthApiErrorResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthApiErrorResponse&&(identical(other.error, error) || other.error == error)&&(identical(other.details, details) || other.details == details));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error,details);

@override
String toString() {
  return 'AuthApiErrorResponse(error: $error, details: $details)';
}


}

/// @nodoc
abstract mixin class $AuthApiErrorResponseCopyWith<$Res>  {
  factory $AuthApiErrorResponseCopyWith(AuthApiErrorResponse value, $Res Function(AuthApiErrorResponse) _then) = _$AuthApiErrorResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'error') String error,@JsonKey(name: 'details') String? details
});




}
/// @nodoc
class _$AuthApiErrorResponseCopyWithImpl<$Res>
    implements $AuthApiErrorResponseCopyWith<$Res> {
  _$AuthApiErrorResponseCopyWithImpl(this._self, this._then);

  final AuthApiErrorResponse _self;
  final $Res Function(AuthApiErrorResponse) _then;

/// Create a copy of AuthApiErrorResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? error = null,Object? details = freezed,}) {
  return _then(_self.copyWith(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthApiErrorResponse].
extension AuthApiErrorResponsePatterns on AuthApiErrorResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthApiErrorResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthApiErrorResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthApiErrorResponse value)  $default,){
final _that = this;
switch (_that) {
case _AuthApiErrorResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthApiErrorResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AuthApiErrorResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'error')  String error, @JsonKey(name: 'details')  String? details)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthApiErrorResponse() when $default != null:
return $default(_that.error,_that.details);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'error')  String error, @JsonKey(name: 'details')  String? details)  $default,) {final _that = this;
switch (_that) {
case _AuthApiErrorResponse():
return $default(_that.error,_that.details);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'error')  String error, @JsonKey(name: 'details')  String? details)?  $default,) {final _that = this;
switch (_that) {
case _AuthApiErrorResponse() when $default != null:
return $default(_that.error,_that.details);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _AuthApiErrorResponse implements AuthApiErrorResponse {
   _AuthApiErrorResponse({@JsonKey(name: 'error') required this.error, @JsonKey(name: 'details') this.details});
  factory _AuthApiErrorResponse.fromJson(Map<String, dynamic> json) => _$AuthApiErrorResponseFromJson(json);

@override@JsonKey(name: 'error') final  String error;
@override@JsonKey(name: 'details') final  String? details;

/// Create a copy of AuthApiErrorResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthApiErrorResponseCopyWith<_AuthApiErrorResponse> get copyWith => __$AuthApiErrorResponseCopyWithImpl<_AuthApiErrorResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthApiErrorResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthApiErrorResponse&&(identical(other.error, error) || other.error == error)&&(identical(other.details, details) || other.details == details));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error,details);

@override
String toString() {
  return 'AuthApiErrorResponse(error: $error, details: $details)';
}


}

/// @nodoc
abstract mixin class _$AuthApiErrorResponseCopyWith<$Res> implements $AuthApiErrorResponseCopyWith<$Res> {
  factory _$AuthApiErrorResponseCopyWith(_AuthApiErrorResponse value, $Res Function(_AuthApiErrorResponse) _then) = __$AuthApiErrorResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'error') String error,@JsonKey(name: 'details') String? details
});




}
/// @nodoc
class __$AuthApiErrorResponseCopyWithImpl<$Res>
    implements _$AuthApiErrorResponseCopyWith<$Res> {
  __$AuthApiErrorResponseCopyWithImpl(this._self, this._then);

  final _AuthApiErrorResponse _self;
  final $Res Function(_AuthApiErrorResponse) _then;

/// Create a copy of AuthApiErrorResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? error = null,Object? details = freezed,}) {
  return _then(_AuthApiErrorResponse(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AuthApiResponse {

@JsonKey(name: 'message') String get message;@JsonKey(name: 'token') String? get token;@JsonKey(name: 'details') String? get details;@JsonKey(name: 'code') int? get code;
/// Create a copy of AuthApiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthApiResponseCopyWith<AuthApiResponse> get copyWith => _$AuthApiResponseCopyWithImpl<AuthApiResponse>(this as AuthApiResponse, _$identity);

  /// Serializes this AuthApiResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthApiResponse&&(identical(other.message, message) || other.message == message)&&(identical(other.token, token) || other.token == token)&&(identical(other.details, details) || other.details == details)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,token,details,code);

@override
String toString() {
  return 'AuthApiResponse(message: $message, token: $token, details: $details, code: $code)';
}


}

/// @nodoc
abstract mixin class $AuthApiResponseCopyWith<$Res>  {
  factory $AuthApiResponseCopyWith(AuthApiResponse value, $Res Function(AuthApiResponse) _then) = _$AuthApiResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'message') String message,@JsonKey(name: 'token') String? token,@JsonKey(name: 'details') String? details,@JsonKey(name: 'code') int? code
});




}
/// @nodoc
class _$AuthApiResponseCopyWithImpl<$Res>
    implements $AuthApiResponseCopyWith<$Res> {
  _$AuthApiResponseCopyWithImpl(this._self, this._then);

  final AuthApiResponse _self;
  final $Res Function(AuthApiResponse) _then;

/// Create a copy of AuthApiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? token = freezed,Object? details = freezed,Object? code = freezed,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthApiResponse].
extension AuthApiResponsePatterns on AuthApiResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthApiResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthApiResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthApiResponse value)  $default,){
final _that = this;
switch (_that) {
case _AuthApiResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthApiResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AuthApiResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'message')  String message, @JsonKey(name: 'token')  String? token, @JsonKey(name: 'details')  String? details, @JsonKey(name: 'code')  int? code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthApiResponse() when $default != null:
return $default(_that.message,_that.token,_that.details,_that.code);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'message')  String message, @JsonKey(name: 'token')  String? token, @JsonKey(name: 'details')  String? details, @JsonKey(name: 'code')  int? code)  $default,) {final _that = this;
switch (_that) {
case _AuthApiResponse():
return $default(_that.message,_that.token,_that.details,_that.code);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'message')  String message, @JsonKey(name: 'token')  String? token, @JsonKey(name: 'details')  String? details, @JsonKey(name: 'code')  int? code)?  $default,) {final _that = this;
switch (_that) {
case _AuthApiResponse() when $default != null:
return $default(_that.message,_that.token,_that.details,_that.code);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _AuthApiResponse implements AuthApiResponse {
   _AuthApiResponse({@JsonKey(name: 'message') required this.message, @JsonKey(name: 'token') this.token, @JsonKey(name: 'details') this.details, @JsonKey(name: 'code') this.code});
  factory _AuthApiResponse.fromJson(Map<String, dynamic> json) => _$AuthApiResponseFromJson(json);

@override@JsonKey(name: 'message') final  String message;
@override@JsonKey(name: 'token') final  String? token;
@override@JsonKey(name: 'details') final  String? details;
@override@JsonKey(name: 'code') final  int? code;

/// Create a copy of AuthApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthApiResponseCopyWith<_AuthApiResponse> get copyWith => __$AuthApiResponseCopyWithImpl<_AuthApiResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthApiResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthApiResponse&&(identical(other.message, message) || other.message == message)&&(identical(other.token, token) || other.token == token)&&(identical(other.details, details) || other.details == details)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,token,details,code);

@override
String toString() {
  return 'AuthApiResponse(message: $message, token: $token, details: $details, code: $code)';
}


}

/// @nodoc
abstract mixin class _$AuthApiResponseCopyWith<$Res> implements $AuthApiResponseCopyWith<$Res> {
  factory _$AuthApiResponseCopyWith(_AuthApiResponse value, $Res Function(_AuthApiResponse) _then) = __$AuthApiResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'message') String message,@JsonKey(name: 'token') String? token,@JsonKey(name: 'details') String? details,@JsonKey(name: 'code') int? code
});




}
/// @nodoc
class __$AuthApiResponseCopyWithImpl<$Res>
    implements _$AuthApiResponseCopyWith<$Res> {
  __$AuthApiResponseCopyWithImpl(this._self, this._then);

  final _AuthApiResponse _self;
  final $Res Function(_AuthApiResponse) _then;

/// Create a copy of AuthApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? token = freezed,Object? details = freezed,Object? code = freezed,}) {
  return _then(_AuthApiResponse(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
