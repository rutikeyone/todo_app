import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/app/di/app_container.dart';

import 'firebase_options.dart';
import 'app/my_app.dart';

final _appContainer = AppContainer();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp(appContainer: _appContainer));
}
