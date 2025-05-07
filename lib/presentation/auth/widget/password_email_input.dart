part of '../view/register_view.dart';

class _RegisterEmailInput extends StatelessWidget {
  const _RegisterEmailInput({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      buildWhen: (previous, current) => previous.emailState != current.emailState,
      builder: (context, state) {
        final emailState = state.emailState;
        final displayError = emailState.displayError;

        return TextField(
          onChanged: context.read<RegisterCubit>().updateEmail,
          decoration: InputDecoration(
            labelText: S.of(context).email,
            border: OutlineInputBorder(),
            errorText: ValidateToolkit.validateEmail(emailState, context),
          ),
        );
      },
    );
  }
}
