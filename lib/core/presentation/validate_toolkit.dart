import 'package:flutter/cupertino.dart';
import 'package:todo_app/core/presentation/input/email_input.dart';
import 'package:todo_app/core/presentation/input/password_input.dart';
import 'package:todo_app/generated/l10n.dart';

class ValidateToolkit {
  static String? validateEmail(EmailInput emailInput, BuildContext context) {
    final displayError = emailInput.displayError;

    return switch (displayError) {
      null => null,
      EmailInputError.empty => S.of(context).cannot_be_empty,
      EmailInputError.invalid => S.of(context).email_incorrect_message,
    };
  }

  static String? validatePassword(
    PasswordInput passwordInput,
    BuildContext context,
  ) {
    final displayError = passwordInput.displayError;

    return switch (displayError) {
      null => null,
      PasswordInputError.empty => S.of(context).cannot_be_empty,
      PasswordInputError.lessThatEight =>
        S.of(context).password_must_be_more_that_eight_length,
    };
  }
}
