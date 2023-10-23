import 'package:flutter/material.dart';

import 'package:tapnget/screens/Login/SignUp/forgot_password.dart';
import 'package:tapnget/screens/Product_Details_Screen/product_info_screen.dart';
import 'package:tapnget/screens/control_screen.dart';
import 'package:tapnget/screens/Login/SignUp/login_screen.dart';
import 'package:tapnget/screens/Login/SignUp/signup_screen.dart';

import 'constants/theme.dart';
import 'screens/Home_Screen/home_screen.dart';

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
        '/productDetails': (context) => ProductInfoScreen(),
      },
    );
  }
}
