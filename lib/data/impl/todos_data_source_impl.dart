import 'package:todo_app/data/model/model.dart';
import 'package:todo_app/data/todos_data_source.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';

class TodosDataSourceImpl implements TodosDataSource {
  final FirebaseFirestore _firebaseFirestore;
  final Uuid _uuid;

  const TodosDataSourceImpl({required FirebaseFirestore firebaseFirestore, required Uuid uuid})
    : _firebaseFirestore = firebaseFirestore,
      _uuid = uuid;

  static String todoPath(String userId, String todoId) => "users/todos/$userId/$todoId";

  @override
  Future<void> addTodo({required String userId, required String header, required String note}) async {
    final todoModel = TodoModel(id: null, title: header, note: note, isCompleted: false);

    final colRef = _firebaseFirestore.collection("users/todos/$userId");
    final doc = await colRef.add(todoModel.toJson());
    final docSnapshot = await doc.get();
    final data = docSnapshot.data() ?? {};

    final newTodo = TodoModel.fromJson(data).copyWith(id: docSnapshot.id);
    await doc.set(newTodo.toJson());
  }

  @override
  Stream<List<TodoModel>> watchTodos(String userId) {
    return _queryTracks(userId).snapshots().map((e) {
      final docs = e.docs;
      final result = docs.map((e) => e.data()).toList();
      return result.nonNulls.toList();
    });
  }

  Query<TodoModel?> _queryTracks(String userId) {
    return _firebaseFirestore
        .collection("users/todos/$userId")
        .withConverter(
          fromFirestore: (snapshot, _) {
            final data = snapshot.data();
            if (data == null) return null;
            return TodoModel.fromJson(data);
          },
          toFirestore: (todo, _) => todo?.toJson() ?? {},
        );
  }

  @override
  Future<void> deleteTodo(String userId, String todoId) async {
    final docRef = _firebaseFirestore.doc(todoPath(userId, todoId));
    return await docRef.delete();
  }

  @override
  Future<void> updateTodo(String userId, TodoModel todo) async {
    final todoId = todo.id;
    if (todoId == null) {
      throw Exception("Todo id can't be null");
    }
    final docRef = _firebaseFirestore.doc(todoPath(userId, todoId));
    await docRef.update(todo.toJson());
  }

  @override
  Future<TodoModel> fetchTodoById(String userId, String todoId) async {
    final docRef = _firebaseFirestore.doc(todoPath(userId, todoId));
    final snapshot = await docRef.get();
    final data = snapshot.data() ?? {};
    return TodoModel.fromJson(data);
  }
}
