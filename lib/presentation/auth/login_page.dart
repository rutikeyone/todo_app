import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/app/di/app_container.dart';
import 'package:todo_app/app/navigation/route/login_route.dart';
import 'package:todo_app/presentation/auth/view/login_view.dart';

class LoginPage extends StatelessWidget {
  final LoginRoute route;

  const LoginPage({required this.route, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppContainer.of(context).createLoginCubit(),
      child: LoginView(route: route),
    );
  }
}
