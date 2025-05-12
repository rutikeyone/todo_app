import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/app/navigation/route/todos_list_route.dart';
import 'package:todo_app/generated/l10n.dart';
import 'package:todo_app/presentation/todos/controller/state/state.dart';
import 'package:todo_app/presentation/todos/controller/todos_list_cubit.dart';

part '../widget/todos_list_content.dart';

class TodosListView extends StatelessWidget {
  final TodosListRoute route;

  const TodosListView({required this.route, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).todos_list),
        actions: [
          IconButton(onPressed: context.read<TodosListCubit>().signOut, icon: Icon(Icons.logout)),
        ],
      ),
      body: SafeArea(child: _TodosListContent(route: route)),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => context.pushNamed(route.addTodo.routeName),
      ),
    );
  }
}
