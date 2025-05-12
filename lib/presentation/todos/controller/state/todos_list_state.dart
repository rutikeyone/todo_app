part of 'state.dart';

@freezed
abstract class TodosListState with _$TodosListState {
  const TodosListState._();

  const factory TodosListState({
    @Default([]) List<TodoModel> todos,
    @Default(ProcessState.initial()) ProcessState deleteTodoState,
    @Default(ProcessState.initial()) ProcessState updateTodoState,
  }) = _TodosListState;
}
