part of '../view/update_todo_view.dart';

class _UpdateToDoNoteInput extends StatefulWidget {
  const _UpdateToDoNoteInput({super.key});

  @override
  State<_UpdateToDoNoteInput> createState() => _UpdateToDoNoteInputState();
}

class _UpdateToDoNoteInputState extends State<_UpdateToDoNoteInput> {
  final _controller = TextEditingController();

  void listener(BuildContext context, UpdateTodoState state) {
    if (_controller.text != state.note) {
      _controller.text = state.note;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UpdateTodoCubit, UpdateTodoState>(
      listener: listener,
      listenWhen: (prev, curr) => prev.note != curr.note,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(S.of(context).description, style: TextTheme.of(context).titleMedium),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: S.of(context).enter_your_description,
                border: OutlineInputBorder(),
              ),
              onChanged: context.read<UpdateTodoCubit>().updateNote,
            ),
          ),
        ],
      ),
    );
  }
}
