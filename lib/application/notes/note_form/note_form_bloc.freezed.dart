// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NoteFormEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoteFormEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NoteFormEvent()';
}


}

/// @nodoc
class $NoteFormEventCopyWith<$Res>  {
$NoteFormEventCopyWith(NoteFormEvent _, $Res Function(NoteFormEvent) __);
}


/// Adds pattern-matching-related methods to [NoteFormEvent].
extension NoteFormEventPatterns on NoteFormEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initialized value)?  initialized,TResult Function( _BodyChanged value)?  bodyChanged,TResult Function( _ColourChanged value)?  colourChanged,TResult Function( _TodosChanged value)?  todosChanged,TResult Function( _Saved value)?  saved,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initialized() when initialized != null:
return initialized(_that);case _BodyChanged() when bodyChanged != null:
return bodyChanged(_that);case _ColourChanged() when colourChanged != null:
return colourChanged(_that);case _TodosChanged() when todosChanged != null:
return todosChanged(_that);case _Saved() when saved != null:
return saved(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initialized value)  initialized,required TResult Function( _BodyChanged value)  bodyChanged,required TResult Function( _ColourChanged value)  colourChanged,required TResult Function( _TodosChanged value)  todosChanged,required TResult Function( _Saved value)  saved,}){
final _that = this;
switch (_that) {
case _Initialized():
return initialized(_that);case _BodyChanged():
return bodyChanged(_that);case _ColourChanged():
return colourChanged(_that);case _TodosChanged():
return todosChanged(_that);case _Saved():
return saved(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initialized value)?  initialized,TResult? Function( _BodyChanged value)?  bodyChanged,TResult? Function( _ColourChanged value)?  colourChanged,TResult? Function( _TodosChanged value)?  todosChanged,TResult? Function( _Saved value)?  saved,}){
final _that = this;
switch (_that) {
case _Initialized() when initialized != null:
return initialized(_that);case _BodyChanged() when bodyChanged != null:
return bodyChanged(_that);case _ColourChanged() when colourChanged != null:
return colourChanged(_that);case _TodosChanged() when todosChanged != null:
return todosChanged(_that);case _Saved() when saved != null:
return saved(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Option<Note> initialNoteOption)?  initialized,TResult Function( String bodyStr)?  bodyChanged,TResult Function( Color colour)?  colourChanged,TResult Function( KtList<TodoItemPrimitive> todos)?  todosChanged,TResult Function()?  saved,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initialized() when initialized != null:
return initialized(_that.initialNoteOption);case _BodyChanged() when bodyChanged != null:
return bodyChanged(_that.bodyStr);case _ColourChanged() when colourChanged != null:
return colourChanged(_that.colour);case _TodosChanged() when todosChanged != null:
return todosChanged(_that.todos);case _Saved() when saved != null:
return saved();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Option<Note> initialNoteOption)  initialized,required TResult Function( String bodyStr)  bodyChanged,required TResult Function( Color colour)  colourChanged,required TResult Function( KtList<TodoItemPrimitive> todos)  todosChanged,required TResult Function()  saved,}) {final _that = this;
switch (_that) {
case _Initialized():
return initialized(_that.initialNoteOption);case _BodyChanged():
return bodyChanged(_that.bodyStr);case _ColourChanged():
return colourChanged(_that.colour);case _TodosChanged():
return todosChanged(_that.todos);case _Saved():
return saved();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Option<Note> initialNoteOption)?  initialized,TResult? Function( String bodyStr)?  bodyChanged,TResult? Function( Color colour)?  colourChanged,TResult? Function( KtList<TodoItemPrimitive> todos)?  todosChanged,TResult? Function()?  saved,}) {final _that = this;
switch (_that) {
case _Initialized() when initialized != null:
return initialized(_that.initialNoteOption);case _BodyChanged() when bodyChanged != null:
return bodyChanged(_that.bodyStr);case _ColourChanged() when colourChanged != null:
return colourChanged(_that.colour);case _TodosChanged() when todosChanged != null:
return todosChanged(_that.todos);case _Saved() when saved != null:
return saved();case _:
  return null;

}
}

}

/// @nodoc


class _Initialized implements NoteFormEvent {
  const _Initialized(this.initialNoteOption);
  

 final  Option<Note> initialNoteOption;

/// Create a copy of NoteFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitializedCopyWith<_Initialized> get copyWith => __$InitializedCopyWithImpl<_Initialized>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initialized&&(identical(other.initialNoteOption, initialNoteOption) || other.initialNoteOption == initialNoteOption));
}


@override
int get hashCode => Object.hash(runtimeType,initialNoteOption);

@override
String toString() {
  return 'NoteFormEvent.initialized(initialNoteOption: $initialNoteOption)';
}


}

/// @nodoc
abstract mixin class _$InitializedCopyWith<$Res> implements $NoteFormEventCopyWith<$Res> {
  factory _$InitializedCopyWith(_Initialized value, $Res Function(_Initialized) _then) = __$InitializedCopyWithImpl;
@useResult
$Res call({
 Option<Note> initialNoteOption
});




}
/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(this._self, this._then);

  final _Initialized _self;
  final $Res Function(_Initialized) _then;

/// Create a copy of NoteFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? initialNoteOption = null,}) {
  return _then(_Initialized(
null == initialNoteOption ? _self.initialNoteOption : initialNoteOption // ignore: cast_nullable_to_non_nullable
as Option<Note>,
  ));
}


}

/// @nodoc


class _BodyChanged implements NoteFormEvent {
  const _BodyChanged(this.bodyStr);
  

 final  String bodyStr;

/// Create a copy of NoteFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BodyChangedCopyWith<_BodyChanged> get copyWith => __$BodyChangedCopyWithImpl<_BodyChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BodyChanged&&(identical(other.bodyStr, bodyStr) || other.bodyStr == bodyStr));
}


@override
int get hashCode => Object.hash(runtimeType,bodyStr);

@override
String toString() {
  return 'NoteFormEvent.bodyChanged(bodyStr: $bodyStr)';
}


}

/// @nodoc
abstract mixin class _$BodyChangedCopyWith<$Res> implements $NoteFormEventCopyWith<$Res> {
  factory _$BodyChangedCopyWith(_BodyChanged value, $Res Function(_BodyChanged) _then) = __$BodyChangedCopyWithImpl;
@useResult
$Res call({
 String bodyStr
});




}
/// @nodoc
class __$BodyChangedCopyWithImpl<$Res>
    implements _$BodyChangedCopyWith<$Res> {
  __$BodyChangedCopyWithImpl(this._self, this._then);

  final _BodyChanged _self;
  final $Res Function(_BodyChanged) _then;

/// Create a copy of NoteFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bodyStr = null,}) {
  return _then(_BodyChanged(
null == bodyStr ? _self.bodyStr : bodyStr // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ColourChanged implements NoteFormEvent {
  const _ColourChanged(this.colour);
  

 final  Color colour;

/// Create a copy of NoteFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ColourChangedCopyWith<_ColourChanged> get copyWith => __$ColourChangedCopyWithImpl<_ColourChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ColourChanged&&(identical(other.colour, colour) || other.colour == colour));
}


@override
int get hashCode => Object.hash(runtimeType,colour);

@override
String toString() {
  return 'NoteFormEvent.colourChanged(colour: $colour)';
}


}

/// @nodoc
abstract mixin class _$ColourChangedCopyWith<$Res> implements $NoteFormEventCopyWith<$Res> {
  factory _$ColourChangedCopyWith(_ColourChanged value, $Res Function(_ColourChanged) _then) = __$ColourChangedCopyWithImpl;
@useResult
$Res call({
 Color colour
});




}
/// @nodoc
class __$ColourChangedCopyWithImpl<$Res>
    implements _$ColourChangedCopyWith<$Res> {
  __$ColourChangedCopyWithImpl(this._self, this._then);

  final _ColourChanged _self;
  final $Res Function(_ColourChanged) _then;

/// Create a copy of NoteFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? colour = null,}) {
  return _then(_ColourChanged(
null == colour ? _self.colour : colour // ignore: cast_nullable_to_non_nullable
as Color,
  ));
}


}

/// @nodoc


class _TodosChanged implements NoteFormEvent {
  const _TodosChanged(this.todos);
  

 final  KtList<TodoItemPrimitive> todos;

/// Create a copy of NoteFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TodosChangedCopyWith<_TodosChanged> get copyWith => __$TodosChangedCopyWithImpl<_TodosChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TodosChanged&&(identical(other.todos, todos) || other.todos == todos));
}


@override
int get hashCode => Object.hash(runtimeType,todos);

@override
String toString() {
  return 'NoteFormEvent.todosChanged(todos: $todos)';
}


}

/// @nodoc
abstract mixin class _$TodosChangedCopyWith<$Res> implements $NoteFormEventCopyWith<$Res> {
  factory _$TodosChangedCopyWith(_TodosChanged value, $Res Function(_TodosChanged) _then) = __$TodosChangedCopyWithImpl;
@useResult
$Res call({
 KtList<TodoItemPrimitive> todos
});




}
/// @nodoc
class __$TodosChangedCopyWithImpl<$Res>
    implements _$TodosChangedCopyWith<$Res> {
  __$TodosChangedCopyWithImpl(this._self, this._then);

  final _TodosChanged _self;
  final $Res Function(_TodosChanged) _then;

/// Create a copy of NoteFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? todos = null,}) {
  return _then(_TodosChanged(
null == todos ? _self.todos : todos // ignore: cast_nullable_to_non_nullable
as KtList<TodoItemPrimitive>,
  ));
}


}

/// @nodoc


class _Saved implements NoteFormEvent {
  const _Saved();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Saved);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NoteFormEvent.saved()';
}


}




/// @nodoc
mixin _$NoteFormState {

 Note get note; bool get showErrorMessages; bool get isEditing; bool get isSaving; Option<Either<NoteFailure, Unit>> get saveFailureOrSuccessOption;
/// Create a copy of NoteFormState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NoteFormStateCopyWith<NoteFormState> get copyWith => _$NoteFormStateCopyWithImpl<NoteFormState>(this as NoteFormState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoteFormState&&(identical(other.note, note) || other.note == note)&&(identical(other.showErrorMessages, showErrorMessages) || other.showErrorMessages == showErrorMessages)&&(identical(other.isEditing, isEditing) || other.isEditing == isEditing)&&(identical(other.isSaving, isSaving) || other.isSaving == isSaving)&&(identical(other.saveFailureOrSuccessOption, saveFailureOrSuccessOption) || other.saveFailureOrSuccessOption == saveFailureOrSuccessOption));
}


@override
int get hashCode => Object.hash(runtimeType,note,showErrorMessages,isEditing,isSaving,saveFailureOrSuccessOption);

@override
String toString() {
  return 'NoteFormState(note: $note, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
}


}

/// @nodoc
abstract mixin class $NoteFormStateCopyWith<$Res>  {
  factory $NoteFormStateCopyWith(NoteFormState value, $Res Function(NoteFormState) _then) = _$NoteFormStateCopyWithImpl;
@useResult
$Res call({
 Note note, bool showErrorMessages, bool isEditing, bool isSaving, Option<Either<NoteFailure, Unit>> saveFailureOrSuccessOption
});


$NoteCopyWith<$Res> get note;

}
/// @nodoc
class _$NoteFormStateCopyWithImpl<$Res>
    implements $NoteFormStateCopyWith<$Res> {
  _$NoteFormStateCopyWithImpl(this._self, this._then);

  final NoteFormState _self;
  final $Res Function(NoteFormState) _then;

/// Create a copy of NoteFormState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? note = null,Object? showErrorMessages = null,Object? isEditing = null,Object? isSaving = null,Object? saveFailureOrSuccessOption = null,}) {
  return _then(NoteFormState(
note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as Note,showErrorMessages: null == showErrorMessages ? _self.showErrorMessages : showErrorMessages // ignore: cast_nullable_to_non_nullable
as bool,isEditing: null == isEditing ? _self.isEditing : isEditing // ignore: cast_nullable_to_non_nullable
as bool,isSaving: null == isSaving ? _self.isSaving : isSaving // ignore: cast_nullable_to_non_nullable
as bool,saveFailureOrSuccessOption: null == saveFailureOrSuccessOption ? _self.saveFailureOrSuccessOption : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<NoteFailure, Unit>>,
  ));
}
/// Create a copy of NoteFormState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NoteCopyWith<$Res> get note {
  
  return $NoteCopyWith<$Res>(_self.note, (value) {
    return _then(_self.copyWith(note: value));
  });
}
}


/// Adds pattern-matching-related methods to [NoteFormState].
extension NoteFormStatePatterns on NoteFormState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NoteFormState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NoteFormState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NoteFormState value)  $default,){
final _that = this;
switch (_that) {
case _NoteFormState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NoteFormState value)?  $default,){
final _that = this;
switch (_that) {
case _NoteFormState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Note note,  bool showErrorMessages,  bool isEditing,  bool isSaving,  Option<Either<NoteFailure, Unit>> saveFailureOrSuccessOption)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NoteFormState() when $default != null:
return $default(_that.note,_that.showErrorMessages,_that.isEditing,_that.isSaving,_that.saveFailureOrSuccessOption);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Note note,  bool showErrorMessages,  bool isEditing,  bool isSaving,  Option<Either<NoteFailure, Unit>> saveFailureOrSuccessOption)  $default,) {final _that = this;
switch (_that) {
case _NoteFormState():
return $default(_that.note,_that.showErrorMessages,_that.isEditing,_that.isSaving,_that.saveFailureOrSuccessOption);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Note note,  bool showErrorMessages,  bool isEditing,  bool isSaving,  Option<Either<NoteFailure, Unit>> saveFailureOrSuccessOption)?  $default,) {final _that = this;
switch (_that) {
case _NoteFormState() when $default != null:
return $default(_that.note,_that.showErrorMessages,_that.isEditing,_that.isSaving,_that.saveFailureOrSuccessOption);case _:
  return null;

}
}

}

/// @nodoc


class _NoteFormState implements NoteFormState {
  const _NoteFormState({required this.note, required this.showErrorMessages, required this.isEditing, required this.isSaving, required this.saveFailureOrSuccessOption});
  

@override final  Note note;
@override final  bool showErrorMessages;
@override final  bool isEditing;
@override final  bool isSaving;
@override final  Option<Either<NoteFailure, Unit>> saveFailureOrSuccessOption;

/// Create a copy of NoteFormState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NoteFormStateCopyWith<_NoteFormState> get copyWith => __$NoteFormStateCopyWithImpl<_NoteFormState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NoteFormState&&(identical(other.note, note) || other.note == note)&&(identical(other.showErrorMessages, showErrorMessages) || other.showErrorMessages == showErrorMessages)&&(identical(other.isEditing, isEditing) || other.isEditing == isEditing)&&(identical(other.isSaving, isSaving) || other.isSaving == isSaving)&&(identical(other.saveFailureOrSuccessOption, saveFailureOrSuccessOption) || other.saveFailureOrSuccessOption == saveFailureOrSuccessOption));
}


@override
int get hashCode => Object.hash(runtimeType,note,showErrorMessages,isEditing,isSaving,saveFailureOrSuccessOption);

@override
String toString() {
  return 'NoteFormState(note: $note, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
}


}

/// @nodoc
abstract mixin class _$NoteFormStateCopyWith<$Res> implements $NoteFormStateCopyWith<$Res> {
  factory _$NoteFormStateCopyWith(_NoteFormState value, $Res Function(_NoteFormState) _then) = __$NoteFormStateCopyWithImpl;
@override @useResult
$Res call({
 Note note, bool showErrorMessages, bool isEditing, bool isSaving, Option<Either<NoteFailure, Unit>> saveFailureOrSuccessOption
});


@override $NoteCopyWith<$Res> get note;

}
/// @nodoc
class __$NoteFormStateCopyWithImpl<$Res>
    implements _$NoteFormStateCopyWith<$Res> {
  __$NoteFormStateCopyWithImpl(this._self, this._then);

  final _NoteFormState _self;
  final $Res Function(_NoteFormState) _then;

/// Create a copy of NoteFormState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? note = null,Object? showErrorMessages = null,Object? isEditing = null,Object? isSaving = null,Object? saveFailureOrSuccessOption = null,}) {
  return _then(_NoteFormState(
note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as Note,showErrorMessages: null == showErrorMessages ? _self.showErrorMessages : showErrorMessages // ignore: cast_nullable_to_non_nullable
as bool,isEditing: null == isEditing ? _self.isEditing : isEditing // ignore: cast_nullable_to_non_nullable
as bool,isSaving: null == isSaving ? _self.isSaving : isSaving // ignore: cast_nullable_to_non_nullable
as bool,saveFailureOrSuccessOption: null == saveFailureOrSuccessOption ? _self.saveFailureOrSuccessOption : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<NoteFailure, Unit>>,
  ));
}

/// Create a copy of NoteFormState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NoteCopyWith<$Res> get note {
  
  return $NoteCopyWith<$Res>(_self.note, (value) {
    return _then(_self.copyWith(note: value));
  });
}
}

// dart format on
