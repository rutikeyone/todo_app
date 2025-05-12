import 'package:todo_app/data/model/model.dart';

abstract class TodosRepository {
  Future<void> addTodo(String header, String note);

  Stream<List<TodoModel>> watchTodos();

  Future<void> deleteTodo(String todoId);

  Future<void> updateTodo(TodoModel todo);

  Future<TodoModel> fetchTodoById(String todoId);
}
