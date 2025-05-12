part of '../view/update_todo_view.dart';

class _UpdateCompletedWidget extends StatelessWidget {
  const _UpdateCompletedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BlocBuilder<UpdateTodoCubit, UpdateTodoState>(
          buildWhen: (prev, curr) => prev.isCompleted != curr.isCompleted,
          builder: (context, state) {
            return Checkbox(value: state.isCompleted, onChanged: context.read<UpdateTodoCubit>().updateCompleted);
          },
        ),
        Text(S.of(context).completed),
      ],
    );
  }
}