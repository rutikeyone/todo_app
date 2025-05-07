part of 'state.dart';

@freezed
abstract class AddTodoState with _$AddTodoState {
  bool get canAddTodo {
    return headerState.isNotEmpty &&
        noteState.isNotEmpty &&
        !addState.inProgress;
  }

  const AddTodoState._();

  const factory AddTodoState({
    @Default("") String headerState,
    @Default("") String noteState,
    @Default(ProcessState.initial()) ProcessState addState,
  }) = _AddTodoState;
}
