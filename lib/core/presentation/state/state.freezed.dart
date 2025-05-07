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
mixin _$ProcessState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProcessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProcessState()';
}


}

/// @nodoc
class $ProcessStateCopyWith<$Res>  {
$ProcessStateCopyWith(ProcessState _, $Res Function(ProcessState) __);
}


/// @nodoc


class ProcessInitialState extends ProcessState {
  const ProcessInitialState(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProcessInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProcessState.initial()';
}


}




/// @nodoc


class ProcessInProgressState extends ProcessState {
  const ProcessInProgressState(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProcessInProgressState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProcessState.inProgress()';
}


}




/// @nodoc


class ProcessSuccessState extends ProcessState {
  const ProcessSuccessState(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProcessSuccessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProcessState.success()';
}


}




/// @nodoc


class ProcessErrorState extends ProcessState {
  const ProcessErrorState({required this.e}): super._();
  

 final  Object e;

/// Create a copy of ProcessState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProcessErrorStateCopyWith<ProcessErrorState> get copyWith => _$ProcessErrorStateCopyWithImpl<ProcessErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProcessErrorState&&const DeepCollectionEquality().equals(other.e, e));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(e));

@override
String toString() {
  return 'ProcessState.error(e: $e)';
}


}

/// @nodoc
abstract mixin class $ProcessErrorStateCopyWith<$Res> implements $ProcessStateCopyWith<$Res> {
  factory $ProcessErrorStateCopyWith(ProcessErrorState value, $Res Function(ProcessErrorState) _then) = _$ProcessErrorStateCopyWithImpl;
@useResult
$Res call({
 Object e
});




}
/// @nodoc
class _$ProcessErrorStateCopyWithImpl<$Res>
    implements $ProcessErrorStateCopyWith<$Res> {
  _$ProcessErrorStateCopyWithImpl(this._self, this._then);

  final ProcessErrorState _self;
  final $Res Function(ProcessErrorState) _then;

/// Create a copy of ProcessState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? e = null,}) {
  return _then(ProcessErrorState(
e: null == e ? _self.e : e ,
  ));
}


}

// dart format on
