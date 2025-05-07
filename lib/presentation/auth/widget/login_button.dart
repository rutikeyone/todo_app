part of '../view/login_view.dart';

class _LoginButton extends StatelessWidget {
  const _LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 196,
      child: BlocBuilder<LoginCubit, LoginState>(
        buildWhen: (previous, current) => previous.canLogin != current.canLogin,
        builder: (context, state) {
          final canLogin = state.canLogin;

          return ElevatedButton(
            onPressed:
                state.canLogin
                    ? context.read<LoginCubit>().signInWithEmailAndPassword
                    : null,
            child: Text(S.of(context).login),
          );
        },
      ),
    );
  }
}
