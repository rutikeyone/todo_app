import 'package:todo_app/app/navigation/route/app_route.dart';

class RegisterRoute extends AppRoute {
  static final _routeName = "register";
  static final _routePath = "/register";

  RegisterRoute({required String routeName, required String routePath})
    : super(routePath: routePath + _routePath, routeName: routeName + _routeName);
}
