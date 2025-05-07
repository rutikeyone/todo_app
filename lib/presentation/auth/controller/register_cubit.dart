import 'package:bloc/bloc.dart';
import 'package:todo_app/core/presentation/extension/cubit_extension.dart';
import 'package:todo_app/core/presentation/input/email_input.dart';
import 'package:todo_app/core/presentation/input/password_input.dart';
import 'package:todo_app/core/presentation/state/state.dart';
import 'package:todo_app/domain/auth_repository.dart';
import 'package:todo_app/presentation/auth/controller/state/state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final AuthRepository _authRepository;

  RegisterCubit({required AuthRepository authRepository})
    : _authRepository = authRepository,
      super(RegisterState());

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

  Future<void> register() async {
    final emailState = state.emailState;
    final passwordState = state.passwordState;

    final email = emailState.value;
    final password = passwordState.value;

    final canRegister = state.canRegister;
    if (!canRegister) return;

    try {
      _updateRegisterState(const ProcessState.inProgress());
      await _authRepository.registerWithEmailAndPassword(email, password);
      _updateRegisterState(const ProcessState.success());
    } catch (e) {
      _updateRegisterState(ProcessState.error(e: e));
    }
  }

  void _updateRegisterState(ProcessState newState) {
    safeEmit(state.copyWith(registerState: newState));
  }
}
