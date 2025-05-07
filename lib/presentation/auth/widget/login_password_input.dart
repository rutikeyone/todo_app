part of '../view/login_view.dart';

class _LoginPasswordInput extends StatelessWidget {
  const _LoginPasswordInput();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: BlocBuilder<LoginCubit, LoginState>(
        buildWhen: (previous, current) => previous.passwordState != current.passwordState,
        builder: (context, state) {
          final passwordState = state.passwordState;

          return TextField(
            decoration: InputDecoration(
              labelText: S.of(context).password,
              border: OutlineInputBorder(),
              errorText: ValidateToolkit.validatePassword(passwordState, context)
            ),
            onChanged: context.read<LoginCubit>().updatePassword,
          );
        },
      ),
    );
  }
}