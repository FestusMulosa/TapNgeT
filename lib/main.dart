import 'package:flutter/material.dart';

import 'package:tapnget/screens/forgotPassword.dart';
import 'package:tapnget/screens/controlScreen.dart';
import 'package:tapnget/screens/loginScreen.dart';
import 'package:tapnget/screens/signupScreen.dart';

import 'constants/theme.dart';
import 'screens/homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TapNgeT',
      theme: appTheme,
      home: const ControlScreen(),
      routes: {
        '/control': (context) => const ControlScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignupScreen(),
        '/forgotPassword': (context) => const forgotPassword(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
