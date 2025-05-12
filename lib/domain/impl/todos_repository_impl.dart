import 'package:todo_app/data/auth_data_source.dart';
import 'package:todo_app/data/model/model.dart';
import 'package:todo_app/data/todos_data_source.dart';
import 'package:todo_app/domain/todos_repository.dart';

class TodosRepositoryImpl implements TodosRepository {
  final AuthDataSource _authDataSource;
  final TodosDataSource _todosDataSource;

  const TodosRepositoryImpl({required AuthDataSource authDataSource, required TodosDataSource todosDataSource})
    : _authDataSource = authDataSource,
      _todosDataSource = todosDataSource;

  @override
  Future<void> addTodo(String header, String note) async {
    String? userId = _fetchUserId();

    return _todosDataSource.addTodo(userId: userId, header: header, note: note);
  }

  @override
  Stream<List<TodoModel>> watchTodos() {
    final userId = _fetchUserId();
    return _todosDataSource.watchTodos(userId);
  }

  @override
  Future<void> deleteTodo(String todoId) {
    final userId = _fetchUserId();
    return _todosDataSource.deleteTodo(userId, todoId);
  }

  String _fetchUserId() {
    final currentUser = _authDataSource.currentUser();
    final userId = currentUser?.uid;
    if (userId == null) {
      throw Exception("User not found");
    }
    return userId;
  }

  @override
  Future<void> updateTodo(TodoModel todo) {
    final userId = _fetchUserId();
    return _todosDataSource.updateTodo(userId, todo);
  }

  @override
  Future<TodoModel> fetchTodoById(String todoId) {
    final userId = _fetchUserId();
    return _todosDataSource.fetchTodoById(userId, todoId);
  }
}
