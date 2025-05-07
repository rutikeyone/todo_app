import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/app/di/app_container.dart';
import 'package:todo_app/presentation/todos/view/add_todo_view.dart';

class AddTodoPage extends StatelessWidget {
  const AddTodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppContainer.of(context).createAddTodoCubit(),
      child: AddTodoView(),
    );
  }
}
