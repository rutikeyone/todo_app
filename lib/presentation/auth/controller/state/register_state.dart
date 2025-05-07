part of 'state.dart';

@freezed
abstract class RegisterState with _$RegisterState {
  bool get canRegister {
    final isValidEmailState = emailState.isValid;
    final isValidPasswordState = passwordState.isValid;

    return isValidEmailState && isValidPasswordState && !registerState.inProgress;
  }

  const RegisterState._();

  const factory RegisterState({
    @Default(EmailInput.pure()) EmailInput emailState,
    @Default(PasswordInput.pure()) PasswordInput passwordState,
    @Default(ProcessState.initial()) ProcessState registerState,
  }) = _RegisterState;
}
