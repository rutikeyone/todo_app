import 'package:todo_app/data/model/model.dart';

abstract class TodosDataSource {
  Future<void> addTodo({
    required String userId,
    required String header,
    required String note,
  });
}
