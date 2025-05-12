part of '../view/update_todo_view.dart';

class _UpdateTodoButton extends StatelessWidget {
  const _UpdateTodoButton();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateTodoCubit, UpdateTodoState>(
      buildWhen: (previous, current) => previous.canUpdate != current.canUpdate,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 32),
          child: ElevatedButton(
            onPressed: state.canUpdate ? context.read<UpdateTodoCubit>().updateToDo : null,
            child: Text(S.of(context).to_save),
          ),
        );
      },
    );
  }
}
