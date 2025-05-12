import 'package:bloc/bloc.dart';
import 'package:todo_app/core/presentation/extension/cubit_extension.dart';
import 'package:todo_app/core/presentation/state/state.dart';
import 'package:todo_app/data/model/model.dart';
import 'package:todo_app/domain/todos_repository.dart';
import 'package:todo_app/presentation/todos/controller/state/state.dart';

class UpdateTodoCubit extends Cubit<UpdateTodoState> {
  final TodosRepository _todosRepository;

  UpdateTodoCubit({required String todoId, required TodosRepository todosRepository})
    : _todosRepository = todosRepository,
      super(UpdateTodoState(todoId: todoId));

  Future<void> loadData() async {
    try {
      _updateTodoState(const TodoState.inProcess());
      final todo = await _todosRepository.fetchTodoById(state.todoId);

      safeEmit(
        state.copyWith(
          todoState: TodoState.success(todo: todo),
          title: todo.title ?? '',
          note: todo.note ?? '',
          isCompleted: todo.isCompleted ?? false,
        ),
      );
    } catch (e) {
      _updateTodoState(TodoState.error(e: e));
    }
  }

  Future<void> updateToDo() async {
    final todo = _currentTodo();
    if (todo == null || state.updateTodoState.inProgress) return;

    try {
      _updateToDoState(ProcessState.inProgress());

      final newTodo = todo.copyWith(title: state.title, note: state.note, isCompleted: state.isCompleted);

      await _todosRepository.updateTodo(newTodo);

      _updateToDoState(ProcessState.success());
    } catch (e) {
      _updateToDoState(ProcessState.error(e: e));
    }
  }

  void _updateTodoState(TodoState newToDoState) {
    safeEmit(state.copyWith(todoState: newToDoState));
  }

  void updateHeader(String value) {
    if (!state.todoState.hasData) return;
    safeEmit(state.copyWith(title: value));
  }

  void updateNote(String value) {
    if (!state.todoState.hasData) return;
    safeEmit(state.copyWith(note: value));
  }

  void updateCompleted(bool? value) {
    if (value == null || !state.todoState.hasData) return;
    safeEmit(state.copyWith(isCompleted: value));
  }

  void _updateToDoState(ProcessState newUpdateTodoState) {
    safeEmit(state.copyWith(updateTodoState: newUpdateTodoState));
  }

  TodoModel? _currentTodo() {
    final todoState = state.todoState;

    if (todoState is TodoSucccessState) {
      return todoState.todo;
    }

    return null;
  }
}
