import 'package:formz/formz.dart';

enum PasswordInputError { empty, lessThatEight }

class PasswordInput extends FormzInput<String, PasswordInputError> {
  const PasswordInput.pure() : super.pure('');

  const PasswordInput.dirty({String value = ''}) : super.dirty(value);

  @override
  PasswordInputError? validator(String value) {
    if (value.isEmpty) {
      return PasswordInputError.empty;
    } else if (value.length < 8) {
      return PasswordInputError.lessThatEight;
    }

    return null;
  }
}
