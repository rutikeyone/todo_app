part of '../view/register_view.dart';

class _RegisterButton extends StatelessWidget {
  const _RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      buildWhen:
          (previous, current) => previous.canRegister != current.canRegister,
      builder: (context, state) {
        final canRegister = state.canRegister;

        return ElevatedButton(
          onPressed:
          canRegister ? context.read<RegisterCubit>().register : null,
          child: Text(S.of(context).register),
        );
      },
    );
  }
}