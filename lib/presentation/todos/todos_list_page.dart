import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/app/di/app_container.dart';
import 'package:todo_app/app/navigation/route/todos_list_route.dart';
import 'package:todo_app/presentation/todos/view/todos_list_view.dart';

class TodosListPage extends StatelessWidget {
  final TodosListRoute route;

  const TodosListPage({required this.route, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppContainer.of(context).createTodosListCubit(),
      child: TodosListView(route: route),
    );
  }
}
