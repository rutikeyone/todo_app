import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/core/presentation/state/state.dart';
import 'package:todo_app/generated/l10n.dart';
import 'package:todo_app/presentation/todos/controller/add_todo_cubit.dart';
import 'package:todo_app/presentation/todos/controller/state/state.dart';

part '../widget/add_todo_note_input.dart';
part '../widget/add_todo_header_input.dart';
part '../widget/add_todo_button.dart';

class AddTodoView extends StatelessWidget {
  const AddTodoView({super.key});

  void _listener(BuildContext context, AddTodoState state) {
    final addState = state.addState;

    if (addState is ProcessErrorState) {
      final message = addState.e.toString();

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(message)));
    } else if (addState is ProcessSuccessState) {
      if (!context.mounted) return;
      context.pop();
    }
  }

  bool _listenWhen(AddTodoState previous, AddTodoState current) {
    return current.addState is ProcessErrorState ||
        current.addState is ProcessSuccessState;
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddTodoCubit, AddTodoState>(
      listener: _listener,
      listenWhen: _listenWhen,
      child: Scaffold(
        appBar: AppBar(title: Text(S.of(context).add_todo)),
        body: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            const _AddTodoHeaderInput(),
            const SizedBox(height: 16),
            const _AddTodoNoteInput(),
            const _AddTodoButton(),
          ],
        ),
      ),
    );
  }
}
