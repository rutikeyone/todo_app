import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:todo_app/core/presentation/extension/cubit_extension.dart';
import 'package:todo_app/core/presentation/state/state.dart';
import 'package:todo_app/data/model/model.dart';
import 'package:todo_app/domain/auth_repository.dart';
import 'package:todo_app/domain/todos_repository.dart';
import 'package:todo_app/presentation/todos/controller/state/state.dart';

class TodosListCubit extends Cubit<TodosListState> {
  final TodosRepository _todosRepository;
  final AuthRepository _authRepository;

  late final StreamSubscription<List<TodoModel>> _todosStreamSubscription;

  TodosListCubit({required TodosRepository todosRepository, required AuthRepository authRepository})
    : _todosRepository = todosRepository, _authRepository = authRepository,
      super(TodosListState()) {
    _todosStreamSubscription = _todosRepository.watchTodos().listen(_handleNewTodos);
  }

  void _handleNewTodos(List<TodoModel> event) {
    safeEmit(state.copyWith(todos: event));
  }

  Future<void> deleteTodo(TodoModel todo) async {
    final id = todo.id;
    final deleteTodoState = state.deleteTodoState;
    if (deleteTodoState.inProgress || id == null) return;

    try {
      _updateDeleteToDoState(const ProcessState.inProgress());
      await _todosRepository.deleteTodo(id);
      _updateDeleteToDoState(const ProcessState.success());
    } catch (e) {
      _updateDeleteToDoState(ProcessState.error(e: e));
    }
  }

  Future<void> updateCompleted(TodoModel todo, bool? newValue) async {
    final updateTodoState = state.updateTodoState;
    if (updateTodoState.inProgress || newValue == null) return;

    try {
      _updateToDoState(const ProcessState.inProgress());
      final newTodo = todo.copyWith(isCompleted: !newValue);
      await _todosRepository.updateTodo(newTodo);
      _updateToDoState(const ProcessState.success());
    } catch (e) {
      _updateToDoState(ProcessState.error(e: e));
    }
  }

  void _updateDeleteToDoState(ProcessState newState) {
    safeEmit(state.copyWith(deleteTodoState: newState));
  }

  void _updateToDoState(ProcessState newState) {
    safeEmit(state.copyWith(updateTodoState: newState));
  }

  Future<void> signOut() async {
    try {
      _authRepository.signOut();
    } catch(e) {}
  }

  @override
  Future<void> close() {
    _todosStreamSubscription.cancel();
    return super.close();
  }
}
