import 'package:todo_app/app/navigation/route/app_route.dart';

class AddTodoRoute extends AppRoute {
  static final _routeName = "add_todo";
  static final _routePath = "/add_todo";

  AddTodoRoute({required String routePath, required String routeName})
    : super(
        routePath: routePath + _routePath,
        routeName: routeName + _routeName,
      );
}
