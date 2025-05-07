import 'package:formz/formz.dart';
import 'package:todo_app/core/presentation/regext_pattern.dart';

enum EmailInputError { empty, invalid }

class EmailInput extends FormzInput<String, EmailInputError> {
  const EmailInput.pure() : super.pure('');

  const EmailInput.dirty({String value = ''}) : super.dirty(value);

  @override
  EmailInputError? validator(String value) {
    if (value.isEmpty) {
      return EmailInputError.empty;
    } else if (!RegExtPattern.emailRegExp.hasMatch(value)) {
      return EmailInputError.invalid;
    }

    return null;
  }
}
