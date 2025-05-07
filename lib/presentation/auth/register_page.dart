import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/app/di/app_container.dart';
import 'package:todo_app/presentation/auth/controller/register_cubit.dart';
import 'package:todo_app/presentation/auth/view/register_view.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppContainer.of(context).createRegisterCubit(),
      child: RegisterView(),
    );
  }
}
