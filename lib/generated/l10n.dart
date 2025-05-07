// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Авторизация`
  String get authorization {
    return Intl.message(
      'Авторизация',
      name: 'authorization',
      desc: '',
      args: [],
    );
  }

  /// `Почта`
  String get email {
    return Intl.message('Почта', name: 'email', desc: '', args: []);
  }

  /// `Зарегистрироваться`
  String get register {
    return Intl.message(
      'Зарегистрироваться',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Войти`
  String get login {
    return Intl.message('Войти', name: 'login', desc: '', args: []);
  }

  /// `Пароль`
  String get password {
    return Intl.message('Пароль', name: 'password', desc: '', args: []);
  }

  /// `Назад`
  String get back {
    return Intl.message('Назад', name: 'back', desc: '', args: []);
  }

  /// `Значение не может быть пустым`
  String get cannot_be_empty {
    return Intl.message(
      'Значение не может быть пустым',
      name: 'cannot_be_empty',
      desc: '',
      args: [],
    );
  }

  /// `Пароль должен быть больше 8 символов`
  String get password_must_be_more_that_eight_length {
    return Intl.message(
      'Пароль должен быть больше 8 символов',
      name: 'password_must_be_more_that_eight_length',
      desc: '',
      args: [],
    );
  }

  /// `Значение для почты некорретное`
  String get email_incorrect_message {
    return Intl.message(
      'Значение для почты некорретное',
      name: 'email_incorrect_message',
      desc: '',
      args: [],
    );
  }

  /// `Значение `
  String get email_invalid_message {
    return Intl.message(
      'Значение ',
      name: 'email_invalid_message',
      desc: '',
      args: [],
    );
  }

  /// `Добавить заметку`
  String get add_todo {
    return Intl.message(
      'Добавить заметку',
      name: 'add_todo',
      desc: '',
      args: [],
    );
  }

  /// `Заголовок`
  String get header {
    return Intl.message('Заголовок', name: 'header', desc: '', args: []);
  }

  /// `Введите ваш заголовок`
  String get enter_your_header {
    return Intl.message(
      'Введите ваш заголовок',
      name: 'enter_your_header',
      desc: '',
      args: [],
    );
  }

  /// `Описание`
  String get description {
    return Intl.message('Описание', name: 'description', desc: '', args: []);
  }

  /// `Введите ваше описание`
  String get enter_your_description {
    return Intl.message(
      'Введите ваше описание',
      name: 'enter_your_description',
      desc: '',
      args: [],
    );
  }

  /// `Сохранить`
  String get to_save {
    return Intl.message('Сохранить', name: 'to_save', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[Locale.fromSubtags(languageCode: 'ru')];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
