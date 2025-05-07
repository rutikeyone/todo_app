part of 'state.dart';

@freezed
abstract class LoginState with _$LoginState {
  const LoginState._();

  bool get canLogin {
    final isValidEmailState = emailState.isValid;
    final isValidPasswordState = passwordState.isValid;

    return isValidEmailState && isValidPasswordState && !signInState.inProgress;
  }

  const factory LoginState({
    @Default(EmailInput.pure()) EmailInput emailState,
    @Default(PasswordInput.pure()) PasswordInput passwordState,
    @Default(ProcessState.initial()) ProcessState signInState,
  }) = _LoginState;
}

