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

 List<TodoModel> get todos; ProcessState get deleteTodoState; ProcessState get updateTodoState;
/// Create a copy of TodosListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodosListStateCopyWith<TodosListState> get copyWith => _$TodosListStateCopyWithImpl<TodosListState>(this as TodosListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodosListState&&const DeepCollectionEquality().equals(other.todos, todos)&&(identical(other.deleteTodoState, deleteTodoState) || other.deleteTodoState == deleteTodoState)&&(identical(other.updateTodoState, updateTodoState) || other.updateTodoState == updateTodoState));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(todos),deleteTodoState,updateTodoState);

@override
String toString() {
  return 'TodosListState(todos: $todos, deleteTodoState: $deleteTodoState, updateTodoState: $updateTodoState)';
}


}

/// @nodoc
abstract mixin class $TodosListStateCopyWith<$Res>  {
  factory $TodosListStateCopyWith(TodosListState value, $Res Function(TodosListState) _then) = _$TodosListStateCopyWithImpl;
@useResult
$Res call({
 List<TodoModel> todos, ProcessState deleteTodoState, ProcessState updateTodoState
});


$ProcessStateCopyWith<$Res> get deleteTodoState;$ProcessStateCopyWith<$Res> get updateTodoState;

}
/// @nodoc
class _$TodosListStateCopyWithImpl<$Res>
    implements $TodosListStateCopyWith<$Res> {
  _$TodosListStateCopyWithImpl(this._self, this._then);

  final TodosListState _self;
  final $Res Function(TodosListState) _then;

/// Create a copy of TodosListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? todos = null,Object? deleteTodoState = null,Object? updateTodoState = null,}) {
  return _then(_self.copyWith(
todos: null == todos ? _self.todos : todos // ignore: cast_nullable_to_non_nullable
as List<TodoModel>,deleteTodoState: null == deleteTodoState ? _self.deleteTodoState : deleteTodoState // ignore: cast_nullable_to_non_nullable
as ProcessState,updateTodoState: null == updateTodoState ? _self.updateTodoState : updateTodoState // ignore: cast_nullable_to_non_nullable
as ProcessState,
  ));
}
/// Create a copy of TodosListState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProcessStateCopyWith<$Res> get deleteTodoState {
  
  return $ProcessStateCopyWith<$Res>(_self.deleteTodoState, (value) {
    return _then(_self.copyWith(deleteTodoState: value));
  });
}/// Create a copy of TodosListState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProcessStateCopyWith<$Res> get updateTodoState {
  
  return $ProcessStateCopyWith<$Res>(_self.updateTodoState, (value) {
    return _then(_self.copyWith(updateTodoState: value));
  });
}
}


/// @nodoc


class _TodosListState extends TodosListState {
  const _TodosListState({final  List<TodoModel> todos = const [], this.deleteTodoState = const ProcessState.initial(), this.updateTodoState = const ProcessState.initial()}): _todos = todos,super._();
  

 final  List<TodoModel> _todos;
@override@JsonKey() List<TodoModel> get todos {
  if (_todos is EqualUnmodifiableListView) return _todos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_todos);
}

@override@JsonKey() final  ProcessState deleteTodoState;
@override@JsonKey() final  ProcessState updateTodoState;

/// Create a copy of TodosListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TodosListStateCopyWith<_TodosListState> get copyWith => __$TodosListStateCopyWithImpl<_TodosListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TodosListState&&const DeepCollectionEquality().equals(other._todos, _todos)&&(identical(other.deleteTodoState, deleteTodoState) || other.deleteTodoState == deleteTodoState)&&(identical(other.updateTodoState, updateTodoState) || other.updateTodoState == updateTodoState));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_todos),deleteTodoState,updateTodoState);

@override
String toString() {
  return 'TodosListState(todos: $todos, deleteTodoState: $deleteTodoState, updateTodoState: $updateTodoState)';
}


}

/// @nodoc
abstract mixin class _$TodosListStateCopyWith<$Res> implements $TodosListStateCopyWith<$Res> {
  factory _$TodosListStateCopyWith(_TodosListState value, $Res Function(_TodosListState) _then) = __$TodosListStateCopyWithImpl;
@override @useResult
$Res call({
 List<TodoModel> todos, ProcessState deleteTodoState, ProcessState updateTodoState
});


@override $ProcessStateCopyWith<$Res> get deleteTodoState;@override $ProcessStateCopyWith<$Res> get updateTodoState;

}
/// @nodoc
class __$TodosListStateCopyWithImpl<$Res>
    implements _$TodosListStateCopyWith<$Res> {
  __$TodosListStateCopyWithImpl(this._self, this._then);

  final _TodosListState _self;
  final $Res Function(_TodosListState) _then;

/// Create a copy of TodosListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? todos = null,Object? deleteTodoState = null,Object? updateTodoState = null,}) {
  return _then(_TodosListState(
todos: null == todos ? _self._todos : todos // ignore: cast_nullable_to_non_nullable
as List<TodoModel>,deleteTodoState: null == deleteTodoState ? _self.deleteTodoState : deleteTodoState // ignore: cast_nullable_to_non_nullable
as ProcessState,updateTodoState: null == updateTodoState ? _self.updateTodoState : updateTodoState // ignore: cast_nullable_to_non_nullable
as ProcessState,
  ));
}

/// Create a copy of TodosListState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProcessStateCopyWith<$Res> get deleteTodoState {
  
  return $ProcessStateCopyWith<$Res>(_self.deleteTodoState, (value) {
    return _then(_self.copyWith(deleteTodoState: value));
  });
}/// Create a copy of TodosListState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProcessStateCopyWith<$Res> get updateTodoState {
  
  return $ProcessStateCopyWith<$Res>(_self.updateTodoState, (value) {
    return _then(_self.copyWith(updateTodoState: value));
  });
}
}

/// @nodoc
mixin _$UpdateTodoState {

 String get todoId; String get title; String get note; bool get isCompleted; TodoState get todoState; ProcessState get updateTodoState;
/// Create a copy of UpdateTodoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateTodoStateCopyWith<UpdateTodoState> get copyWith => _$UpdateTodoStateCopyWithImpl<UpdateTodoState>(this as UpdateTodoState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateTodoState&&(identical(other.todoId, todoId) || other.todoId == todoId)&&(identical(other.title, title) || other.title == title)&&(identical(other.note, note) || other.note == note)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.todoState, todoState) || other.todoState == todoState)&&(identical(other.updateTodoState, updateTodoState) || other.updateTodoState == updateTodoState));
}


@override
int get hashCode => Object.hash(runtimeType,todoId,title,note,isCompleted,todoState,updateTodoState);

@override
String toString() {
  return 'UpdateTodoState(todoId: $todoId, title: $title, note: $note, isCompleted: $isCompleted, todoState: $todoState, updateTodoState: $updateTodoState)';
}


}

/// @nodoc
abstract mixin class $UpdateTodoStateCopyWith<$Res>  {
  factory $UpdateTodoStateCopyWith(UpdateTodoState value, $Res Function(UpdateTodoState) _then) = _$UpdateTodoStateCopyWithImpl;
@useResult
$Res call({
 String todoId, String title, String note, bool isCompleted, TodoState todoState, ProcessState updateTodoState
});


$TodoStateCopyWith<$Res> get todoState;$ProcessStateCopyWith<$Res> get updateTodoState;

}
/// @nodoc
class _$UpdateTodoStateCopyWithImpl<$Res>
    implements $UpdateTodoStateCopyWith<$Res> {
  _$UpdateTodoStateCopyWithImpl(this._self, this._then);

  final UpdateTodoState _self;
  final $Res Function(UpdateTodoState) _then;

/// Create a copy of UpdateTodoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? todoId = null,Object? title = null,Object? note = null,Object? isCompleted = null,Object? todoState = null,Object? updateTodoState = null,}) {
  return _then(_self.copyWith(
todoId: null == todoId ? _self.todoId : todoId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,todoState: null == todoState ? _self.todoState : todoState // ignore: cast_nullable_to_non_nullable
as TodoState,updateTodoState: null == updateTodoState ? _self.updateTodoState : updateTodoState // ignore: cast_nullable_to_non_nullable
as ProcessState,
  ));
}
/// Create a copy of UpdateTodoState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TodoStateCopyWith<$Res> get todoState {
  
  return $TodoStateCopyWith<$Res>(_self.todoState, (value) {
    return _then(_self.copyWith(todoState: value));
  });
}/// Create a copy of UpdateTodoState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProcessStateCopyWith<$Res> get updateTodoState {
  
  return $ProcessStateCopyWith<$Res>(_self.updateTodoState, (value) {
    return _then(_self.copyWith(updateTodoState: value));
  });
}
}


/// @nodoc


class _UpdateTodoState extends UpdateTodoState {
  const _UpdateTodoState({required this.todoId, this.title = "", this.note = "", this.isCompleted = false, this.todoState = const TodoState.initial(), this.updateTodoState = const ProcessState.initial()}): super._();
  

@override final  String todoId;
@override@JsonKey() final  String title;
@override@JsonKey() final  String note;
@override@JsonKey() final  bool isCompleted;
@override@JsonKey() final  TodoState todoState;
@override@JsonKey() final  ProcessState updateTodoState;

/// Create a copy of UpdateTodoState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateTodoStateCopyWith<_UpdateTodoState> get copyWith => __$UpdateTodoStateCopyWithImpl<_UpdateTodoState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateTodoState&&(identical(other.todoId, todoId) || other.todoId == todoId)&&(identical(other.title, title) || other.title == title)&&(identical(other.note, note) || other.note == note)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.todoState, todoState) || other.todoState == todoState)&&(identical(other.updateTodoState, updateTodoState) || other.updateTodoState == updateTodoState));
}


@override
int get hashCode => Object.hash(runtimeType,todoId,title,note,isCompleted,todoState,updateTodoState);

@override
String toString() {
  return 'UpdateTodoState(todoId: $todoId, title: $title, note: $note, isCompleted: $isCompleted, todoState: $todoState, updateTodoState: $updateTodoState)';
}


}

/// @nodoc
abstract mixin class _$UpdateTodoStateCopyWith<$Res> implements $UpdateTodoStateCopyWith<$Res> {
  factory _$UpdateTodoStateCopyWith(_UpdateTodoState value, $Res Function(_UpdateTodoState) _then) = __$UpdateTodoStateCopyWithImpl;
@override @useResult
$Res call({
 String todoId, String title, String note, bool isCompleted, TodoState todoState, ProcessState updateTodoState
});


@override $TodoStateCopyWith<$Res> get todoState;@override $ProcessStateCopyWith<$Res> get updateTodoState;

}
/// @nodoc
class __$UpdateTodoStateCopyWithImpl<$Res>
    implements _$UpdateTodoStateCopyWith<$Res> {
  __$UpdateTodoStateCopyWithImpl(this._self, this._then);

  final _UpdateTodoState _self;
  final $Res Function(_UpdateTodoState) _then;

/// Create a copy of UpdateTodoState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? todoId = null,Object? title = null,Object? note = null,Object? isCompleted = null,Object? todoState = null,Object? updateTodoState = null,}) {
  return _then(_UpdateTodoState(
todoId: null == todoId ? _self.todoId : todoId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,todoState: null == todoState ? _self.todoState : todoState // ignore: cast_nullable_to_non_nullable
as TodoState,updateTodoState: null == updateTodoState ? _self.updateTodoState : updateTodoState // ignore: cast_nullable_to_non_nullable
as ProcessState,
  ));
}

/// Create a copy of UpdateTodoState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TodoStateCopyWith<$Res> get todoState {
  
  return $TodoStateCopyWith<$Res>(_self.todoState, (value) {
    return _then(_self.copyWith(todoState: value));
  });
}/// Create a copy of UpdateTodoState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProcessStateCopyWith<$Res> get updateTodoState {
  
  return $ProcessStateCopyWith<$Res>(_self.updateTodoState, (value) {
    return _then(_self.copyWith(updateTodoState: value));
  });
}
}

/// @nodoc
mixin _$TodoState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodoState()';
}


}

/// @nodoc
class $TodoStateCopyWith<$Res>  {
$TodoStateCopyWith(TodoState _, $Res Function(TodoState) __);
}


/// @nodoc


class TodoInitialState extends TodoState {
  const TodoInitialState(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodoState.initial()';
}


}




/// @nodoc


class TodoInProcessState extends TodoState {
  const TodoInProcessState(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoInProcessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodoState.inProcess()';
}


}




/// @nodoc


class TodoSucccessState extends TodoState {
  const TodoSucccessState({required this.todo}): super._();
  

 final  TodoModel todo;

/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodoSucccessStateCopyWith<TodoSucccessState> get copyWith => _$TodoSucccessStateCopyWithImpl<TodoSucccessState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoSucccessState&&(identical(other.todo, todo) || other.todo == todo));
}


@override
int get hashCode => Object.hash(runtimeType,todo);

@override
String toString() {
  return 'TodoState.success(todo: $todo)';
}


}

/// @nodoc
abstract mixin class $TodoSucccessStateCopyWith<$Res> implements $TodoStateCopyWith<$Res> {
  factory $TodoSucccessStateCopyWith(TodoSucccessState value, $Res Function(TodoSucccessState) _then) = _$TodoSucccessStateCopyWithImpl;
@useResult
$Res call({
 TodoModel todo
});


$TodoModelCopyWith<$Res> get todo;

}
/// @nodoc
class _$TodoSucccessStateCopyWithImpl<$Res>
    implements $TodoSucccessStateCopyWith<$Res> {
  _$TodoSucccessStateCopyWithImpl(this._self, this._then);

  final TodoSucccessState _self;
  final $Res Function(TodoSucccessState) _then;

/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? todo = null,}) {
  return _then(TodoSucccessState(
todo: null == todo ? _self.todo : todo // ignore: cast_nullable_to_non_nullable
as TodoModel,
  ));
}

/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TodoModelCopyWith<$Res> get todo {
  
  return $TodoModelCopyWith<$Res>(_self.todo, (value) {
    return _then(_self.copyWith(todo: value));
  });
}
}

/// @nodoc


class TodoErrorState extends TodoState {
  const TodoErrorState({required this.e}): super._();
  

 final  Object e;

/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodoErrorStateCopyWith<TodoErrorState> get copyWith => _$TodoErrorStateCopyWithImpl<TodoErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoErrorState&&const DeepCollectionEquality().equals(other.e, e));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(e));

@override
String toString() {
  return 'TodoState.error(e: $e)';
}


}

/// @nodoc
abstract mixin class $TodoErrorStateCopyWith<$Res> implements $TodoStateCopyWith<$Res> {
  factory $TodoErrorStateCopyWith(TodoErrorState value, $Res Function(TodoErrorState) _then) = _$TodoErrorStateCopyWithImpl;
@useResult
$Res call({
 Object e
});




}
/// @nodoc
class _$TodoErrorStateCopyWithImpl<$Res>
    implements $TodoErrorStateCopyWith<$Res> {
  _$TodoErrorStateCopyWithImpl(this._self, this._then);

  final TodoErrorState _self;
  final $Res Function(TodoErrorState) _then;

/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? e = null,}) {
  return _then(TodoErrorState(
e: null == e ? _self.e : e ,
  ));
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
