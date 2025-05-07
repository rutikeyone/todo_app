part of '../view/add_todo_view.dart';

class _AddTodoNoteInput extends StatelessWidget {
  const _AddTodoNoteInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).description,
          style: TextTheme.of(context).titleMedium,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: TextField(
            decoration: InputDecoration(
              labelText: S.of(context).enter_your_description,
              border: OutlineInputBorder(),
            ),
            onChanged: context.read<AddTodoCubit>().updateNote,
          ),
        ),
      ],
    );
  }
}