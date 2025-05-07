import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/core/presentation/state/state.dart';
import 'package:todo_app/core/presentation/validate_toolkit.dart';
import 'package:todo_app/generated/l10n.dart';
import 'package:todo_app/presentation/auth/controller/login_cubit.dart';
import 'package:todo_app/presentation/auth/controller/register_cubit.dart';
import 'package:todo_app/presentation/auth/controller/state/state.dart';

part '../widget/password_email_input.dart';
part '../widget/register_password_input.dart';
part '../widget/register_button.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  void _listener(BuildContext context, RegisterState state) {
    final registerState = state.registerState;

    if (registerState is ProcessErrorState) {
      final message = registerState.e.toString();

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(message)));
    }
  }

  bool _listenWhen(RegisterState previous, RegisterState current) {
    return current.registerState is ProcessErrorState;
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterState>(
      listener: _listener,
      listenWhen: _listenWhen,
      child: Scaffold(
        appBar: AppBar(title: Text(S.of(context).register)),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const _RegisterEmailInput(),
              const _RegisterPasswordInput(),
              const SizedBox(height: 20),
              const _RegisterButton(),
              TextButton(
                onPressed: context.pop,
                child: Text(S.of(context).back),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
