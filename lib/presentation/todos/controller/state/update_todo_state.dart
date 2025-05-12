part of 'state.dart';

@freezed
abstract class UpdateTodoState with _$UpdateTodoState {
  bool get canUpdate => todoState.hasData && title.isNotEmpty && note.isNotEmpty && !updateTodoState.inProgress;

  const UpdateTodoState._();

  const factory UpdateTodoState({
    required String todoId,
    @Default("") String title,
    @Default("") String note,
    @Default(false) bool isCompleted,
    @Default(TodoState.initial()) TodoState todoState,
    @Default(ProcessState.initial()) ProcessState updateTodoState,
  }) = _UpdateTodoState;
}

@freezed
abstract class TodoState with _$TodoState {
  const TodoState._();

  bool get hasData => this is TodoSucccessState;

  const factory TodoState.initial() = TodoInitialState;

  const factory TodoState.inProcess() = TodoInProcessState;

  const factory TodoState.success({required TodoModel todo}) = TodoSucccessState;

  const factory TodoState.error({required Object e}) = TodoErrorState;
}
