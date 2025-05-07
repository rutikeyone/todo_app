part of '../view/register_view.dart';

class _RegisterPasswordInput extends StatelessWidget {
  const _RegisterPasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: BlocBuilder<RegisterCubit, RegisterState>(
        buildWhen: (previous, current) => previous.passwordState != current.passwordState,
        builder: (context, state) {
          final passwordState = state.passwordState;

          return TextField(
            onChanged: context.read<RegisterCubit>().updatePassword,
            decoration: InputDecoration(
              labelText: S.of(context).password,
              border: OutlineInputBorder(),
              errorText: ValidateToolkit.validatePassword(passwordState, context),
            ),
            obscureText: true,
          );
        },
      ),
    );
  }
}
