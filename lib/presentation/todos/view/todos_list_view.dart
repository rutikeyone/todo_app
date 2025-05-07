import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/app/navigation/route/todos_list_route.dart';

class TodosListView extends StatelessWidget {
  final TodosListRoute route;

  const TodosListView({required this.route, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => context.pushNamed(route.addTodo.routeName),
      ),
    );
  }
}
