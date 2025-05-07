// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TodosListState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodosListState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodosListState()';
}


}

/// @nodoc
class $TodosListStateCopyWith<$Res>  {
$TodosListStateCopyWith(TodosListState _, $Res Function(TodosListState) __);
}


/// @nodoc


class _TodosListState extends TodosListState {
  const _TodosListState(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TodosListState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodosListState()';
}


}




/// @nodoc
mixin _$AddTodoState {

 String get headerState; String get noteState; ProcessState get addState;
/// Create a copy of AddTodoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddTodoStateCopyWith<AddTodoState> get copyWith => _$AddTodoStateCopyWithImpl<AddTodoState>(this as AddTodoState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddTodoState&&(identical(other.headerState, headerState) || other.headerState == headerState)&&(identical(other.noteState, noteState) || other.noteState == noteState)&&(identical(other.addState, addState) || other.addState == addState));
}


@override
int get hashCode => Object.hash(runtimeType,headerState,noteState,addState);

@override
String toString() {
  return 'AddTodoState(headerState: $headerState, noteState: $noteState, addState: $addState)';
}


}

/// @nodoc
abstract mixin class $AddTodoStateCopyWith<$Res>  {
  factory $AddTodoStateCopyWith(AddTodoState value, $Res Function(AddTodoState) _then) = _$AddTodoStateCopyWithImpl;
@useResult
$Res call({
 String headerState, String noteState, ProcessState addState
});


$ProcessStateCopyWith<$Res> get addState;

}
/// @nodoc
class _$AddTodoStateCopyWithImpl<$Res>
    implements $AddTodoStateCopyWith<$Res> {
  _$AddTodoStateCopyWithImpl(this._self, this._then);

  final AddTodoState _self;
  final $Res Function(AddTodoState) _then;

/// Create a copy of AddTodoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? headerState = null,Object? noteState = null,Object? addState = null,}) {
  return _then(_self.copyWith(
headerState: null == headerState ? _self.headerState : headerState // ignore: cast_nullable_to_non_nullable
as String,noteState: null == noteState ? _self.noteState : noteState // ignore: cast_nullable_to_non_nullable
as String,addState: null == addState ? _self.addState : addState // ignore: cast_nullable_to_non_nullable
as ProcessState,
  ));
}
/// Create a copy of AddTodoState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProcessStateCopyWith<$Res> get addState {
  
  return $ProcessStateCopyWith<$Res>(_self.addState, (value) {
    return _then(_self.copyWith(addState: value));
  });
}
}


/// @nodoc


class _AddTodoState extends AddTodoState {
  const _AddTodoState({this.headerState = "", this.noteState = "", this.addState = const ProcessState.initial()}): super._();
  

@override@JsonKey() final  String headerState;
@override@JsonKey() final  String noteState;
@override@JsonKey() final  ProcessState addState;

/// Create a copy of AddTodoState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddTodoStateCopyWith<_AddTodoState> get copyWith => __$AddTodoStateCopyWithImpl<_AddTodoState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddTodoState&&(identical(other.headerState, headerState) || other.headerState == headerState)&&(identical(other.noteState, noteState) || other.noteState == noteState)&&(identical(other.addState, addState) || other.addState == addState));
}


@override
int get hashCode => Object.hash(runtimeType,headerState,noteState,addState);

@override
String toString() {
  return 'AddTodoState(headerState: $headerState, noteState: $noteState, addState: $addState)';
}


}

/// @nodoc
abstract mixin class _$AddTodoStateCopyWith<$Res> implements $AddTodoStateCopyWith<$Res> {
  factory _$AddTodoStateCopyWith(_AddTodoState value, $Res Function(_AddTodoState) _then) = __$AddTodoStateCopyWithImpl;
@override @useResult
$Res call({
 String headerState, String noteState, ProcessState addState
});


@override $ProcessStateCopyWith<$Res> get addState;

}
/// @nodoc
class __$AddTodoStateCopyWithImpl<$Res>
    implements _$AddTodoStateCopyWith<$Res> {
  __$AddTodoStateCopyWithImpl(this._self, this._then);

  final _AddTodoState _self;
  final $Res Function(_AddTodoState) _then;

/// Create a copy of AddTodoState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? headerState = null,Object? noteState = null,Object? addState = null,}) {
  return _then(_AddTodoState(
headerState: null == headerState ? _self.headerState : headerState // ignore: cast_nullable_to_non_nullable
as String,noteState: null == noteState ? _self.noteState : noteState // ignore: cast_nullable_to_non_nullable
as String,addState: null == addState ? _self.addState : addState // ignore: cast_nullable_to_non_nullable
as ProcessState,
  ));
}

/// Create a copy of AddTodoState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProcessStateCopyWith<$Res> get addState {
  
  return $ProcessStateCopyWith<$Res>(_self.addState, (value) {
    return _then(_self.copyWith(addState: value));
  });
}
}

// dart format on
