part of '../view/todos_list_view.dart';

class _TodosListContent extends StatelessWidget {
  final TodosListRoute route;

  const _TodosListContent({required this.route});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodosListCubit, TodosListState>(
      buildWhen: (previous, current) => previous.todos != current.todos,
      builder: (context, state) {
        final todos = state.todos;

        if (todos.isEmpty) {
          return Center(child: Text(S.of(context).the_list_of_elements_is_empty));
        }

        return ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) {
            final item = todos[index];
            final isCompleted = item.isCompleted;

            return ListTile(
              onTap: () => route.updateTodo.push(GoRouter.of(context), todo: item),
              title: Text(item.title ?? ''),
              subtitle: Text(item.note ?? ''),
              leading:
                  isCompleted != null
                      ? Checkbox(
                        value: isCompleted,
                        onChanged: (value) => context.read<TodosListCubit>().updateCompleted(item, isCompleted),
                      )
                      : const SizedBox.shrink(),
              trailing: IconButton(
                onPressed: () => context.read<TodosListCubit>().deleteTodo(item),
                icon: Icon(Icons.delete),
              ),
            );
          },
        );
      },
    );
  }
}
