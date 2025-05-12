import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/core/presentation/state/state.dart';
import 'package:todo_app/generated/l10n.dart';
import 'package:todo_app/presentation/todos/controller/state/state.dart';
import 'package:todo_app/presentation/todos/controller/update_todo_cubit.dart';

part '../widget/update_todo_header_input.dart';

part '../widget/update_completed_widget.dart';

part '../widget/update_todo_note_input.dart';

part '../widget/update_todo_button.dart';

class UpdateTodoView extends StatelessWidget {
  const UpdateTodoView({super.key});

  void _listener(BuildContext context, UpdateTodoState state) {
    if (state.updateTodoState is ProcessSuccessState) {
      if (!context.mounted) return;
      final snackBar = SnackBar(content: Text(S.of(context).data_has_been_updated_successfully));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      context.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).update_todo)),
      body: BlocListener<UpdateTodoCubit, UpdateTodoState>(
        listener: _listener,
        listenWhen: (prev, curr) => prev.updateTodoState != curr.updateTodoState,
        child: SafeArea(
          child: ListView(
            padding: EdgeInsets.all(16),
            children: const [
              _UpdateTodoHeaderInput(),
              SizedBox(height: 16),
              _UpdateToDoNoteInput(),
              SizedBox(height: 16),
              _UpdateCompletedWidget(),
              _UpdateTodoButton(),
            ],
          ),
        ),
      ),
    );
  }
}
