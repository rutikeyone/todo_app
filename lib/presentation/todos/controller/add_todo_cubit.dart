import 'package:bloc/bloc.dart';
import 'package:todo_app/core/presentation/extension/cubit_extension.dart';
import 'package:todo_app/core/presentation/state/state.dart';
import 'package:todo_app/domain/todos_repository.dart';
import 'package:todo_app/presentation/todos/controller/state/state.dart';

class AddTodoCubit extends Cubit<AddTodoState> {
  final TodosRepository _todosRepository;

  AddTodoCubit({required TodosRepository todosRepository})
    : _todosRepository = todosRepository,
      super(AddTodoState());

  void updateHeader(String value) {
    safeEmit(state.copyWith(headerState: value));
  }

  void updateNote(String value) {
    safeEmit(state.copyWith(noteState: value));
  }

  Future<void> addTodo() async {
    final header = state.headerState;
    final note = state.noteState;
    final canAddTodo = state.canAddTodo;

    if (!canAddTodo) return;

    try {
      updateAddTodoState(const ProcessState.inProgress());
      await _todosRepository.addTodo(header, note);
      updateAddTodoState(ProcessState.success());
    } catch (e) {
      updateAddTodoState(ProcessState.error(e: e));
    }
  }

  void updateAddTodoState(ProcessState newState) {
    safeEmit(state.copyWith(addState: newState));
  }
}
