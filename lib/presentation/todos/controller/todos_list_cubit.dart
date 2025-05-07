import 'package:bloc/bloc.dart';
import 'package:todo_app/presentation/todos/controller/state/state.dart';

class TodosListCubit extends Cubit<TodosListState> {
  TodosListCubit(): super(TodosListState());
}