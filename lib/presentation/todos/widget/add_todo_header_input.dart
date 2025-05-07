part of '../view/add_todo_view.dart';

class _AddTodoHeaderInput extends StatelessWidget {
  const _AddTodoHeaderInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(S.of(context).header, style: TextTheme.of(context).titleMedium),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: TextField(
            decoration: InputDecoration(
              labelText: S.of(context).enter_your_header,
              border: OutlineInputBorder(),
            ),
            onChanged: context.read<AddTodoCubit>().updateHeader,
          ),
        ),
      ],
    );
  }
}