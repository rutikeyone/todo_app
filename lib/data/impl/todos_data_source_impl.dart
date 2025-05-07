import 'package:todo_app/data/model/model.dart';
import 'package:todo_app/data/todos_data_source.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';

class TodosDataSourceImpl implements TodosDataSource {
  final FirebaseFirestore _firebaseFirestore;
  final Uuid _uuid;

  const TodosDataSourceImpl({
    required FirebaseFirestore firebaseFirestore,
    required Uuid uuid,
  }) : _firebaseFirestore = firebaseFirestore,
       _uuid = uuid;

  @override
  Future<void> addTodo({
    required String userId,
    required String header,
    required String note,
  }) async {
    final todoModel = TodoModel(id: null, title: header, note: note);

    final colRef = _firebaseFirestore.collection("users/todos/$userId");
    final doc = await colRef.add(todoModel.toJson());
    final docSnapshot = await doc.get();
    final data = docSnapshot.data() ?? {};

    final newTodo = TodoModel.fromJson(data).copyWith(id: docSnapshot.id);
    await doc.set(newTodo.toJson());
  }
}
