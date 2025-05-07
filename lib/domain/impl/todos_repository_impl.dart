import 'package:todo_app/data/auth_data_source.dart';
import 'package:todo_app/data/todos_data_source.dart';
import 'package:todo_app/domain/todos_repository.dart';

class TodosRepositoryImpl implements TodosRepository {
  final AuthDataSource _authDataSource;
  final TodosDataSource _todosDataSource;

  const TodosRepositoryImpl({
    required AuthDataSource authDataSource,
    required TodosDataSource todosDataSource,
  }) : _authDataSource = authDataSource,
       _todosDataSource = todosDataSource;

  @override
  Future<void> addTodo(String header, String note) async {
    final currentUser = _authDataSource.currentUser();
    final userId = currentUser?.uid;
    if (userId == null) {
      throw Exception("User not found");
    }

    return _todosDataSource.addTodo(userId: userId, header: header, note: note);
  }
}
