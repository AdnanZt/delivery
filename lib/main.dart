import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app/injection_container.dart' as ic;

import 'app/presentation/views/login/login_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ic.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          shadowColor: Colors.transparent,
          color: Color(0xFF404040),
          centerTitle: true,
          toolbarHeight: 90,
        ),
        primaryColor: Colors.grey,
        backgroundColor: Colors.grey,
        scaffoldBackgroundColor: Colors.grey,
      ),
      home: const LoginView(),
    );
  }
}
