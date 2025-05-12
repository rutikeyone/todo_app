// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'arguments.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateTodoArguments {

 String get todoId;
/// Create a copy of UpdateTodoArguments
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateTodoArgumentsCopyWith<UpdateTodoArguments> get copyWith => _$UpdateTodoArgumentsCopyWithImpl<UpdateTodoArguments>(this as UpdateTodoArguments, _$identity);

  /// Serializes this UpdateTodoArguments to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateTodoArguments&&(identical(other.todoId, todoId) || other.todoId == todoId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,todoId);

@override
String toString() {
  return 'UpdateTodoArguments(todoId: $todoId)';
}


}

/// @nodoc
abstract mixin class $UpdateTodoArgumentsCopyWith<$Res>  {
  factory $UpdateTodoArgumentsCopyWith(UpdateTodoArguments value, $Res Function(UpdateTodoArguments) _then) = _$UpdateTodoArgumentsCopyWithImpl;
@useResult
$Res call({
 String todoId
});




}
/// @nodoc
class _$UpdateTodoArgumentsCopyWithImpl<$Res>
    implements $UpdateTodoArgumentsCopyWith<$Res> {
  _$UpdateTodoArgumentsCopyWithImpl(this._self, this._then);

  final UpdateTodoArguments _self;
  final $Res Function(UpdateTodoArguments) _then;

/// Create a copy of UpdateTodoArguments
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? todoId = null,}) {
  return _then(_self.copyWith(
todoId: null == todoId ? _self.todoId : todoId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _UpdateTodoArguments implements UpdateTodoArguments {
  const _UpdateTodoArguments({required this.todoId});
  factory _UpdateTodoArguments.fromJson(Map<String, dynamic> json) => _$UpdateTodoArgumentsFromJson(json);

@override final  String todoId;

/// Create a copy of UpdateTodoArguments
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateTodoArgumentsCopyWith<_UpdateTodoArguments> get copyWith => __$UpdateTodoArgumentsCopyWithImpl<_UpdateTodoArguments>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateTodoArgumentsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateTodoArguments&&(identical(other.todoId, todoId) || other.todoId == todoId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,todoId);

@override
String toString() {
  return 'UpdateTodoArguments(todoId: $todoId)';
}


}

/// @nodoc
abstract mixin class _$UpdateTodoArgumentsCopyWith<$Res> implements $UpdateTodoArgumentsCopyWith<$Res> {
  factory _$UpdateTodoArgumentsCopyWith(_UpdateTodoArguments value, $Res Function(_UpdateTodoArguments) _then) = __$UpdateTodoArgumentsCopyWithImpl;
@override @useResult
$Res call({
 String todoId
});




}
/// @nodoc
class __$UpdateTodoArgumentsCopyWithImpl<$Res>
    implements _$UpdateTodoArgumentsCopyWith<$Res> {
  __$UpdateTodoArgumentsCopyWithImpl(this._self, this._then);

  final _UpdateTodoArguments _self;
  final $Res Function(_UpdateTodoArguments) _then;

/// Create a copy of UpdateTodoArguments
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? todoId = null,}) {
  return _then(_UpdateTodoArguments(
todoId: null == todoId ? _self.todoId : todoId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
