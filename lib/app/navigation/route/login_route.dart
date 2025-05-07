import 'package:todo_app/app/navigation/route/app_route.dart';
import 'package:todo_app/app/navigation/route/register_route.dart';

class LoginRoute extends AppRoute {
  static final _routeName = "login";
  static final _routePath = "/login";

  late final register = RegisterRoute(routeName: routeName, routePath: routePath);

  LoginRoute() : super(routePath: _routePath, routeName: _routeName);
}
