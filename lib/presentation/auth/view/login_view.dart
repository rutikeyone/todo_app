import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/app/navigation/route/login_route.dart';
import 'package:todo_app/core/presentation/state/state.dart';
import 'package:todo_app/core/presentation/validate_toolkit.dart';
import 'package:todo_app/generated/l10n.dart';
import 'package:todo_app/presentation/auth/controller/login_cubit.dart';
import 'package:todo_app/presentation/auth/controller/state/state.dart';

part '../widget/login_password_input.dart';
part '../widget/login_button.dart';
part '../widget/login_email_input.dart';

class LoginView extends StatelessWidget {
  final LoginRoute route;

  const LoginView({required this.route, super.key});

  void _listener(BuildContext context, LoginState state) {
    final signInState = state.signInState;

    if (signInState is ProcessErrorState) {
      final message = signInState.e.toString();

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(message)));
    }
  }

  bool _listenWhen(LoginState previous, LoginState current) {
    return current.signInState is ProcessErrorState;
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: _listener,
      listenWhen: _listenWhen,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                S.of(context).authorization,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              _LoginEmailInput(),
              const _LoginPasswordInput(),
              const SizedBox(height: 24),
              const _LoginButton(),
              TextButton(
                onPressed: () => context.pushNamed(route.register.routeName),
                child: Text(S.of(context).register),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
