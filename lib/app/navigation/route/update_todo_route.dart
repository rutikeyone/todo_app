import 'package:go_router/go_router.dart';
import 'package:todo_app/app/navigation/argument/arguments.dart';
import 'package:todo_app/app/navigation/route/app_route.dart';
import 'package:todo_app/data/model/model.dart';

class UpdateTodoRoute extends AppRoute {
  static final _routeName = "update_todo";
  static final _routePath = "/update_todo";

  UpdateTodoRoute({required String routeName, required String routePath})
    : super(routePath: routePath + _routePath, routeName: routeName + _routeName);

  Future<void> push(GoRouter router, {required TodoModel todo}) async {
    final todoId = todo.id;
    if(todoId == null) return;
    final arguments = UpdateTodoArguments(todoId: todoId);
    await router.pushNamed(routeName, queryParameters: arguments.toJson());
  }

  UpdateTodoArguments withUpdateTodoArguments(Map<String, dynamic> json) {
    return UpdateTodoArguments.fromJson(json);
  }
}
