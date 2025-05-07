import "package:firebase_auth/firebase_auth.dart";
import "package:go_router/go_router.dart";
import "package:todo_app/app/navigation/app_screens.dart";
import "package:todo_app/app/navigation/refresh_stream_adapter.dart";
import "package:todo_app/domain/auth_repository.dart";
import "package:todo_app/presentation/auth/login_page.dart";
import "package:todo_app/presentation/auth/register_page.dart";
import "package:todo_app/presentation/todos/add_todo_page.dart";
import "package:todo_app/presentation/todos/todos_list_page.dart";

GoRouter router(AuthRepository authRepository) {
  return GoRouter(
    refreshListenable: RefreshStreamAdapter(authRepository.userStream()),
    initialLocation: AppScreens.login.routePath,
    redirect: (context, state) {
      final fullPath = state.uri.path;
      final isAuthenticated = authRepository.isAuthenticated();
      final isAuthPath =
          fullPath.startsWith(AppScreens.login.routePath) == true;

      if (!isAuthenticated && !isAuthPath) {
        return AppScreens.login.routePath;
      } else if (isAuthenticated && isAuthPath) {
        return AppScreens.todosList.routePath;
      }

      return null;
    },
    routes: [
      GoRoute(
        path: AppScreens.login.routePath,
        name: AppScreens.login.routeName,
        builder: (context, state) {
          return LoginPage(route: AppScreens.login);
        },
        routes: [
          GoRoute(
            path: AppScreens.login.register.routePath,
            name: AppScreens.login.register.routeName,
            builder: (context, state) {
              return RegisterPage();
            },
          ),
        ],
      ),
      GoRoute(
        path: AppScreens.todosList.routePath,
        name: AppScreens.todosList.routeName,
        builder: (context, state) {
          return TodosListPage(route: AppScreens.todosList);
        },
        routes: [
          GoRoute(
            path: AppScreens.todosList.addTodo.routePath,
            name: AppScreens.todosList.addTodo.routeName,
            builder: (context, state) {
              return AddTodoPage();
            },
          ),
        ],
      ),
    ],
  );
}
