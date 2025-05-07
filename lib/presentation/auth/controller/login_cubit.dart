import 'package:bloc/bloc.dart';
import 'package:todo_app/core/presentation/input/email_input.dart';
import 'package:todo_app/core/presentation/extension/cubit_extension.dart';
import 'package:todo_app/core/presentation/input/password_input.dart';
import 'package:todo_app/core/presentation/state/state.dart';
import 'package:todo_app/domain/auth_repository.dart';
import 'package:todo_app/presentation/auth/controller/state/state.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthRepository _authRepository;

  LoginCubit({required AuthRepository authRepository})
    : _authRepository = authRepository,
      super(LoginState());

  void updateEmail(String value) {
    final newState = state.copyWith(emailState: EmailInput.dirty(value: value));

    safeEmit(newState);
  }

  void updatePassword(String value) {
    final newState = state.copyWith(
      passwordState: PasswordInput.dirty(value: value),
    );

    safeEmit(newState);
  }

  Future<void> signInWithEmailAndPassword() async {
    final emailState = state.emailState;
    final passwordState = state.passwordState;
    final email = emailState.value;
    final password = passwordState.value;

    final canLogin = state.canLogin;
    if (!canLogin) return;

    try {
      _updateLoginState(const ProcessState.inProgress());
      await _authRepository.signInWithEmailAndPassword(email, password);
      _updateLoginState(const ProcessState.success());
    } catch (e) {
      _updateLoginState(ProcessState.error(e: e));
    }
  }

  void _updateLoginState(ProcessState newState) {
    safeEmit(state.copyWith(signInState: newState));
  }
}
