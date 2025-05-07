part of '../view/login_view.dart';

class _LoginEmailInput extends StatelessWidget {
  const _LoginEmailInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: BlocBuilder<LoginCubit, LoginState>(
        buildWhen: (previous, current) => previous.emailState != current.emailState,
        builder: (context, state) {
          final emailState = state.emailState;

          return TextField(
            decoration: InputDecoration(
              labelText: S.of(context).email,
              border: OutlineInputBorder(),
              errorText: ValidateToolkit.validateEmail(emailState, context),
            ),
            onChanged: context.read<LoginCubit>().updateEmail,
          );
        },
      ),
    );
  }
}
