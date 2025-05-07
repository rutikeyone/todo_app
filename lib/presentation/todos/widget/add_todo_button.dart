part of '../view/add_todo_view.dart';

class _AddTodoButton extends StatelessWidget {
  const _AddTodoButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddTodoCubit, AddTodoState>(
      buildWhen:
          (previous, current) => previous.canAddTodo != current.canAddTodo,
      builder: (context, state) {
        final canAddTodo = state.canAddTodo;

        return Padding(
          padding: const EdgeInsets.only(top: 16),
          child: ElevatedButton(
            onPressed:
                state.canAddTodo ? context.read<AddTodoCubit>().addTodo : null,
            child: Text(S.of(context).to_save),
          ),
        );
      },
    );
  }
}
