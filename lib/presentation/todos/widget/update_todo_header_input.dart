part of '../view/update_todo_view.dart';

class _UpdateTodoHeaderInput extends StatefulWidget {
  const _UpdateTodoHeaderInput({super.key});

  @override
  State<_UpdateTodoHeaderInput> createState() => _UpdateTodoHeaderInputState();
}

class _UpdateTodoHeaderInputState extends State<_UpdateTodoHeaderInput> {
  final _controller = TextEditingController();

  void listener(BuildContext context, UpdateTodoState state) {
    if (_controller.text != state.title) {
      _controller.text = state.title;
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
      listenWhen: (prev, curr) => prev.title != curr.title,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(S.of(context).header, style: TextTheme.of(context).titleMedium),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: S.of(context).enter_your_header, border: OutlineInputBorder()),
              onChanged: context.read<UpdateTodoCubit>().updateHeader,
            ),
          ),
        ],
      ),
    );
  }
}
