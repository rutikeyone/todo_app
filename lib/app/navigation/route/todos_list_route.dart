import 'package:todo_app/app/navigation/route/app_route.dart';
import 'package:todo_app/app/navigation/route/update_todo_route.dart';

import 'add_todo_route.dart';

class TodosListRoute extends AppRoute {
  static final _routeName = "todos_list";
  static final _routePath = "/todos_list";

  late final addTodo = AddTodoRoute(routePath: routePath, routeName: routeName);
  late final updateTodo = UpdateTodoRoute(routeName: routeName, routePath: routePath);

  TodosListRoute(): super(routePath: _routePath, routeName: _routeName);

}