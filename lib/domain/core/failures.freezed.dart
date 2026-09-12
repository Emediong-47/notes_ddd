// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ValueFailure<T> {

 T get failedValue;
/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValueFailureCopyWith<T, ValueFailure<T>> get copyWith => _$ValueFailureCopyWithImpl<T, ValueFailure<T>>(this as ValueFailure<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValueFailure<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString() {
  return 'ValueFailure<$T>(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $ValueFailureCopyWith<T,$Res>  {
  factory $ValueFailureCopyWith(ValueFailure<T> value, $Res Function(ValueFailure<T>) _then) = _$ValueFailureCopyWithImpl;
@useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$ValueFailureCopyWithImpl<T,$Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._self, this._then);

  final ValueFailure<T> _self;
  final $Res Function(ValueFailure<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? failedValue = freezed,}) {
  return _then(_self.copyWith(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}

}


/// Adds pattern-matching-related methods to [ValueFailure].
extension ValueFailurePatterns<T> on ValueFailure<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ExceedingLength<T> value)?  exceedingLength,TResult Function( _Empty<T> value)?  empty,TResult Function( _Multiline<T> value)?  multiline,TResult Function( _ListTooLong<T> value)?  listTooLong,TResult Function( _InvalidEmail<T> value)?  invalidEmail,TResult Function( _ShortPassword<T> value)?  shortPassword,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExceedingLength() when exceedingLength != null:
return exceedingLength(_that);case _Empty() when empty != null:
return empty(_that);case _Multiline() when multiline != null:
return multiline(_that);case _ListTooLong() when listTooLong != null:
return listTooLong(_that);case _InvalidEmail() when invalidEmail != null:
return invalidEmail(_that);case _ShortPassword() when shortPassword != null:
return shortPassword(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ExceedingLength<T> value)  exceedingLength,required TResult Function( _Empty<T> value)  empty,required TResult Function( _Multiline<T> value)  multiline,required TResult Function( _ListTooLong<T> value)  listTooLong,required TResult Function( _InvalidEmail<T> value)  invalidEmail,required TResult Function( _ShortPassword<T> value)  shortPassword,}){
final _that = this;
switch (_that) {
case _ExceedingLength():
return exceedingLength(_that);case _Empty():
return empty(_that);case _Multiline():
return multiline(_that);case _ListTooLong():
return listTooLong(_that);case _InvalidEmail():
return invalidEmail(_that);case _ShortPassword():
return shortPassword(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ExceedingLength<T> value)?  exceedingLength,TResult? Function( _Empty<T> value)?  empty,TResult? Function( _Multiline<T> value)?  multiline,TResult? Function( _ListTooLong<T> value)?  listTooLong,TResult? Function( _InvalidEmail<T> value)?  invalidEmail,TResult? Function( _ShortPassword<T> value)?  shortPassword,}){
final _that = this;
switch (_that) {
case _ExceedingLength() when exceedingLength != null:
return exceedingLength(_that);case _Empty() when empty != null:
return empty(_that);case _Multiline() when multiline != null:
return multiline(_that);case _ListTooLong() when listTooLong != null:
return listTooLong(_that);case _InvalidEmail() when invalidEmail != null:
return invalidEmail(_that);case _ShortPassword() when shortPassword != null:
return shortPassword(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( T failedValue,  int max)?  exceedingLength,TResult Function( T failedValue)?  empty,TResult Function( T failedValue)?  multiline,TResult Function( T failedValue,  int max)?  listTooLong,TResult Function( T failedValue)?  invalidEmail,TResult Function( T failedValue)?  shortPassword,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExceedingLength() when exceedingLength != null:
return exceedingLength(_that.failedValue,_that.max);case _Empty() when empty != null:
return empty(_that.failedValue);case _Multiline() when multiline != null:
return multiline(_that.failedValue);case _ListTooLong() when listTooLong != null:
return listTooLong(_that.failedValue,_that.max);case _InvalidEmail() when invalidEmail != null:
return invalidEmail(_that.failedValue);case _ShortPassword() when shortPassword != null:
return shortPassword(_that.failedValue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( T failedValue,  int max)  exceedingLength,required TResult Function( T failedValue)  empty,required TResult Function( T failedValue)  multiline,required TResult Function( T failedValue,  int max)  listTooLong,required TResult Function( T failedValue)  invalidEmail,required TResult Function( T failedValue)  shortPassword,}) {final _that = this;
switch (_that) {
case _ExceedingLength():
return exceedingLength(_that.failedValue,_that.max);case _Empty():
return empty(_that.failedValue);case _Multiline():
return multiline(_that.failedValue);case _ListTooLong():
return listTooLong(_that.failedValue,_that.max);case _InvalidEmail():
return invalidEmail(_that.failedValue);case _ShortPassword():
return shortPassword(_that.failedValue);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( T failedValue,  int max)?  exceedingLength,TResult? Function( T failedValue)?  empty,TResult? Function( T failedValue)?  multiline,TResult? Function( T failedValue,  int max)?  listTooLong,TResult? Function( T failedValue)?  invalidEmail,TResult? Function( T failedValue)?  shortPassword,}) {final _that = this;
switch (_that) {
case _ExceedingLength() when exceedingLength != null:
return exceedingLength(_that.failedValue,_that.max);case _Empty() when empty != null:
return empty(_that.failedValue);case _Multiline() when multiline != null:
return multiline(_that.failedValue);case _ListTooLong() when listTooLong != null:
return listTooLong(_that.failedValue,_that.max);case _InvalidEmail() when invalidEmail != null:
return invalidEmail(_that.failedValue);case _ShortPassword() when shortPassword != null:
return shortPassword(_that.failedValue);case _:
  return null;

}
}

}

/// @nodoc


class _ExceedingLength<T> implements ValueFailure<T> {
  const _ExceedingLength({required this.failedValue, required this.max});
  

@override final  T failedValue;
 final  int max;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExceedingLengthCopyWith<T, _ExceedingLength<T>> get copyWith => __$ExceedingLengthCopyWithImpl<T, _ExceedingLength<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExceedingLength<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue)&&(identical(other.max, max) || other.max == max));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue),max);

@override
String toString() {
  return 'ValueFailure<$T>.exceedingLength(failedValue: $failedValue, max: $max)';
}


}

/// @nodoc
abstract mixin class _$ExceedingLengthCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory _$ExceedingLengthCopyWith(_ExceedingLength<T> value, $Res Function(_ExceedingLength<T>) _then) = __$ExceedingLengthCopyWithImpl;
@override @useResult
$Res call({
 T failedValue, int max
});




}
/// @nodoc
class __$ExceedingLengthCopyWithImpl<T,$Res>
    implements _$ExceedingLengthCopyWith<T, $Res> {
  __$ExceedingLengthCopyWithImpl(this._self, this._then);

  final _ExceedingLength<T> _self;
  final $Res Function(_ExceedingLength<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,Object? max = null,}) {
  return _then(_ExceedingLength<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,max: null == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _Empty<T> implements ValueFailure<T> {
  const _Empty({required this.failedValue});
  

@override final  T failedValue;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmptyCopyWith<T, _Empty<T>> get copyWith => __$EmptyCopyWithImpl<T, _Empty<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Empty<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString() {
  return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class _$EmptyCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory _$EmptyCopyWith(_Empty<T> value, $Res Function(_Empty<T>) _then) = __$EmptyCopyWithImpl;
@override @useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class __$EmptyCopyWithImpl<T,$Res>
    implements _$EmptyCopyWith<T, $Res> {
  __$EmptyCopyWithImpl(this._self, this._then);

  final _Empty<T> _self;
  final $Res Function(_Empty<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(_Empty<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class _Multiline<T> implements ValueFailure<T> {
  const _Multiline({required this.failedValue});
  

@override final  T failedValue;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MultilineCopyWith<T, _Multiline<T>> get copyWith => __$MultilineCopyWithImpl<T, _Multiline<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Multiline<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString() {
  return 'ValueFailure<$T>.multiline(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class _$MultilineCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory _$MultilineCopyWith(_Multiline<T> value, $Res Function(_Multiline<T>) _then) = __$MultilineCopyWithImpl;
@override @useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class __$MultilineCopyWithImpl<T,$Res>
    implements _$MultilineCopyWith<T, $Res> {
  __$MultilineCopyWithImpl(this._self, this._then);

  final _Multiline<T> _self;
  final $Res Function(_Multiline<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(_Multiline<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class _ListTooLong<T> implements ValueFailure<T> {
  const _ListTooLong({required this.failedValue, required this.max});
  

@override final  T failedValue;
 final  int max;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListTooLongCopyWith<T, _ListTooLong<T>> get copyWith => __$ListTooLongCopyWithImpl<T, _ListTooLong<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListTooLong<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue)&&(identical(other.max, max) || other.max == max));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue),max);

@override
String toString() {
  return 'ValueFailure<$T>.listTooLong(failedValue: $failedValue, max: $max)';
}


}

/// @nodoc
abstract mixin class _$ListTooLongCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory _$ListTooLongCopyWith(_ListTooLong<T> value, $Res Function(_ListTooLong<T>) _then) = __$ListTooLongCopyWithImpl;
@override @useResult
$Res call({
 T failedValue, int max
});




}
/// @nodoc
class __$ListTooLongCopyWithImpl<T,$Res>
    implements _$ListTooLongCopyWith<T, $Res> {
  __$ListTooLongCopyWithImpl(this._self, this._then);

  final _ListTooLong<T> _self;
  final $Res Function(_ListTooLong<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,Object? max = null,}) {
  return _then(_ListTooLong<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,max: null == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _InvalidEmail<T> implements ValueFailure<T> {
  const _InvalidEmail({required this.failedValue});
  

@override final  T failedValue;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InvalidEmailCopyWith<T, _InvalidEmail<T>> get copyWith => __$InvalidEmailCopyWithImpl<T, _InvalidEmail<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InvalidEmail<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString() {
  return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class _$InvalidEmailCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory _$InvalidEmailCopyWith(_InvalidEmail<T> value, $Res Function(_InvalidEmail<T>) _then) = __$InvalidEmailCopyWithImpl;
@override @useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class __$InvalidEmailCopyWithImpl<T,$Res>
    implements _$InvalidEmailCopyWith<T, $Res> {
  __$InvalidEmailCopyWithImpl(this._self, this._then);

  final _InvalidEmail<T> _self;
  final $Res Function(_InvalidEmail<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(_InvalidEmail<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class _ShortPassword<T> implements ValueFailure<T> {
  const _ShortPassword({required this.failedValue});
  

@override final  T failedValue;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShortPasswordCopyWith<T, _ShortPassword<T>> get copyWith => __$ShortPasswordCopyWithImpl<T, _ShortPassword<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShortPassword<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString() {
  return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class _$ShortPasswordCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory _$ShortPasswordCopyWith(_ShortPassword<T> value, $Res Function(_ShortPassword<T>) _then) = __$ShortPasswordCopyWithImpl;
@override @useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class __$ShortPasswordCopyWithImpl<T,$Res>
    implements _$ShortPasswordCopyWith<T, $Res> {
  __$ShortPasswordCopyWithImpl(this._self, this._then);

  final _ShortPassword<T> _self;
  final $Res Function(_ShortPassword<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(_ShortPassword<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

// dart format on
