import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/app/di/app_container.dart';
import 'package:todo_app/app/navigation/argument/arguments.dart';
import 'package:todo_app/presentation/todos/view/update_todo_view.dart';

class UpdateTodoPage extends StatelessWidget {
  final UpdateTodoArguments arguments;

  const UpdateTodoPage({required this.arguments, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppContainer.of(context).createUpdateTodoCubit(arguments.todoId),
      child: UpdateTodoView(),
    );
  }
}
