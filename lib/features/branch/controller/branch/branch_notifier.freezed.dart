// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branch_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BranchState {

 BranchStatus get status; List<Business> get businesses; String get error; TrinaGridStateManager? get stateManager; String get query; int get pageSize; int get pageNumber; int get count; PagingController<int, Business>? get pagingController;
/// Create a copy of BranchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BranchStateCopyWith<BranchState> get copyWith => _$BranchStateCopyWithImpl<BranchState>(this as BranchState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BranchState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.businesses, businesses)&&(identical(other.error, error) || other.error == error)&&(identical(other.stateManager, stateManager) || other.stateManager == stateManager)&&(identical(other.query, query) || other.query == query)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.pageNumber, pageNumber) || other.pageNumber == pageNumber)&&(identical(other.count, count) || other.count == count)&&(identical(other.pagingController, pagingController) || other.pagingController == pagingController));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(businesses),error,stateManager,query,pageSize,pageNumber,count,pagingController);

@override
String toString() {
  return 'BranchState(status: $status, businesses: $businesses, error: $error, stateManager: $stateManager, query: $query, pageSize: $pageSize, pageNumber: $pageNumber, count: $count, pagingController: $pagingController)';
}


}

/// @nodoc
abstract mixin class $BranchStateCopyWith<$Res>  {
  factory $BranchStateCopyWith(BranchState value, $Res Function(BranchState) _then) = _$BranchStateCopyWithImpl;
@useResult
$Res call({
 BranchStatus status, List<Business> businesses, String error, TrinaGridStateManager? stateManager, String query, int pageSize, int pageNumber, int count, PagingController<int, Business>? pagingController
});




}
/// @nodoc
class _$BranchStateCopyWithImpl<$Res>
    implements $BranchStateCopyWith<$Res> {
  _$BranchStateCopyWithImpl(this._self, this._then);

  final BranchState _self;
  final $Res Function(BranchState) _then;

/// Create a copy of BranchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? businesses = null,Object? error = null,Object? stateManager = freezed,Object? query = null,Object? pageSize = null,Object? pageNumber = null,Object? count = null,Object? pagingController = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BranchStatus,businesses: null == businesses ? _self.businesses : businesses // ignore: cast_nullable_to_non_nullable
as List<Business>,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,stateManager: freezed == stateManager ? _self.stateManager : stateManager // ignore: cast_nullable_to_non_nullable
as TrinaGridStateManager?,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,pageNumber: null == pageNumber ? _self.pageNumber : pageNumber // ignore: cast_nullable_to_non_nullable
as int,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,pagingController: freezed == pagingController ? _self.pagingController : pagingController // ignore: cast_nullable_to_non_nullable
as PagingController<int, Business>?,
  ));
}

}


/// Adds pattern-matching-related methods to [BranchState].
extension BranchStatePatterns on BranchState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BranchState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BranchState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BranchState value)  $default,){
final _that = this;
switch (_that) {
case _BranchState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BranchState value)?  $default,){
final _that = this;
switch (_that) {
case _BranchState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BranchStatus status,  List<Business> businesses,  String error,  TrinaGridStateManager? stateManager,  String query,  int pageSize,  int pageNumber,  int count,  PagingController<int, Business>? pagingController)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BranchState() when $default != null:
return $default(_that.status,_that.businesses,_that.error,_that.stateManager,_that.query,_that.pageSize,_that.pageNumber,_that.count,_that.pagingController);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BranchStatus status,  List<Business> businesses,  String error,  TrinaGridStateManager? stateManager,  String query,  int pageSize,  int pageNumber,  int count,  PagingController<int, Business>? pagingController)  $default,) {final _that = this;
switch (_that) {
case _BranchState():
return $default(_that.status,_that.businesses,_that.error,_that.stateManager,_that.query,_that.pageSize,_that.pageNumber,_that.count,_that.pagingController);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BranchStatus status,  List<Business> businesses,  String error,  TrinaGridStateManager? stateManager,  String query,  int pageSize,  int pageNumber,  int count,  PagingController<int, Business>? pagingController)?  $default,) {final _that = this;
switch (_that) {
case _BranchState() when $default != null:
return $default(_that.status,_that.businesses,_that.error,_that.stateManager,_that.query,_that.pageSize,_that.pageNumber,_that.count,_that.pagingController);case _:
  return null;

}
}

}

/// @nodoc


class _BranchState implements BranchState {
  const _BranchState({this.status = BranchStatus.initial, final  List<Business> businesses = const [], this.error = '', this.stateManager, this.query = '', this.pageSize = 50, this.pageNumber = 1, this.count = 0, this.pagingController}): _businesses = businesses;
  

@override@JsonKey() final  BranchStatus status;
 final  List<Business> _businesses;
@override@JsonKey() List<Business> get businesses {
  if (_businesses is EqualUnmodifiableListView) return _businesses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_businesses);
}

@override@JsonKey() final  String error;
@override final  TrinaGridStateManager? stateManager;
@override@JsonKey() final  String query;
@override@JsonKey() final  int pageSize;
@override@JsonKey() final  int pageNumber;
@override@JsonKey() final  int count;
@override final  PagingController<int, Business>? pagingController;

/// Create a copy of BranchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BranchStateCopyWith<_BranchState> get copyWith => __$BranchStateCopyWithImpl<_BranchState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BranchState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._businesses, _businesses)&&(identical(other.error, error) || other.error == error)&&(identical(other.stateManager, stateManager) || other.stateManager == stateManager)&&(identical(other.query, query) || other.query == query)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.pageNumber, pageNumber) || other.pageNumber == pageNumber)&&(identical(other.count, count) || other.count == count)&&(identical(other.pagingController, pagingController) || other.pagingController == pagingController));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_businesses),error,stateManager,query,pageSize,pageNumber,count,pagingController);

@override
String toString() {
  return 'BranchState(status: $status, businesses: $businesses, error: $error, stateManager: $stateManager, query: $query, pageSize: $pageSize, pageNumber: $pageNumber, count: $count, pagingController: $pagingController)';
}


}

/// @nodoc
abstract mixin class _$BranchStateCopyWith<$Res> implements $BranchStateCopyWith<$Res> {
  factory _$BranchStateCopyWith(_BranchState value, $Res Function(_BranchState) _then) = __$BranchStateCopyWithImpl;
@override @useResult
$Res call({
 BranchStatus status, List<Business> businesses, String error, TrinaGridStateManager? stateManager, String query, int pageSize, int pageNumber, int count, PagingController<int, Business>? pagingController
});




}
/// @nodoc
class __$BranchStateCopyWithImpl<$Res>
    implements _$BranchStateCopyWith<$Res> {
  __$BranchStateCopyWithImpl(this._self, this._then);

  final _BranchState _self;
  final $Res Function(_BranchState) _then;

/// Create a copy of BranchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? businesses = null,Object? error = null,Object? stateManager = freezed,Object? query = null,Object? pageSize = null,Object? pageNumber = null,Object? count = null,Object? pagingController = freezed,}) {
  return _then(_BranchState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BranchStatus,businesses: null == businesses ? _self._businesses : businesses // ignore: cast_nullable_to_non_nullable
as List<Business>,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,stateManager: freezed == stateManager ? _self.stateManager : stateManager // ignore: cast_nullable_to_non_nullable
as TrinaGridStateManager?,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,pageNumber: null == pageNumber ? _self.pageNumber : pageNumber // ignore: cast_nullable_to_non_nullable
as int,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,pagingController: freezed == pagingController ? _self.pagingController : pagingController // ignore: cast_nullable_to_non_nullable
as PagingController<int, Business>?,
  ));
}


}

// dart format on
