import 'package:todo_app/data/model/model.dart';

abstract class TodosDataSource {
  Future<void> addTodo({required String userId, required String header, required String note});

  Stream<List<TodoModel>> watchTodos(String userId);

  Future<void> deleteTodo(String userId, String todoId);

  Future<void> updateTodo(String userId, TodoModel todo);

  Future<TodoModel> fetchTodoById(String userId, String todoId);
}
