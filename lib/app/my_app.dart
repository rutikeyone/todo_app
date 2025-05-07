import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/app/di/app_container.dart';
import 'package:todo_app/generated/l10n.dart';

class MyApp extends StatefulWidget {
  final AppContainer appContainer;

  const MyApp({required this.appContainer, super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AppContainer get appContainer => widget.appContainer;

  late final router = appContainer.createRouter();

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: appContainer,
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        routerConfig: router,
      ),
    );
  }
}
