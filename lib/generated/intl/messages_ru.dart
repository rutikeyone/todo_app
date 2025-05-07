// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ru';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "add_todo": MessageLookupByLibrary.simpleMessage("Добавить заметку"),
    "authorization": MessageLookupByLibrary.simpleMessage("Авторизация"),
    "back": MessageLookupByLibrary.simpleMessage("Назад"),
    "cannot_be_empty": MessageLookupByLibrary.simpleMessage(
      "Значение не может быть пустым",
    ),
    "description": MessageLookupByLibrary.simpleMessage("Описание"),
    "email": MessageLookupByLibrary.simpleMessage("Почта"),
    "email_incorrect_message": MessageLookupByLibrary.simpleMessage(
      "Значение для почты некорретное",
    ),
    "email_invalid_message": MessageLookupByLibrary.simpleMessage("Значение "),
    "enter_your_description": MessageLookupByLibrary.simpleMessage(
      "Введите ваше описание",
    ),
    "enter_your_header": MessageLookupByLibrary.simpleMessage(
      "Введите ваш заголовок",
    ),
    "header": MessageLookupByLibrary.simpleMessage("Заголовок"),
    "login": MessageLookupByLibrary.simpleMessage("Войти"),
    "password": MessageLookupByLibrary.simpleMessage("Пароль"),
    "password_must_be_more_that_eight_length":
        MessageLookupByLibrary.simpleMessage(
          "Пароль должен быть больше 8 символов",
        ),
    "register": MessageLookupByLibrary.simpleMessage("Зарегистрироваться"),
    "to_save": MessageLookupByLibrary.simpleMessage("Сохранить"),
  };
}
