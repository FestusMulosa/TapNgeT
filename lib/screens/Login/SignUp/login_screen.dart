// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../constants/dimentions.dart';
import '../../../widgets/login/large_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                'Login',
                style: TextStyle(
                  fontSize: Fonts.fontSize(context, 34),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: Dimentions.containerHeight(context, 35),
              ),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      Dimentions.containerWidth(context, 10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Dimentions.containerHeight(context, 35),
              ),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      Dimentions.containerWidth(context, 10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Dimentions.containerHeight(context, 35),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/forgotPassword');
                    },
                    child: Text(
                      'Forgot your password?',
                      style: TextStyle(
                        fontSize: Fonts.fontSize(context, 14),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: Dimentions.containerWidth(context, 10),
                  ),
                  Icon(
                    Icons.arrow_forward_outlined,
                    size: Dimentions.iconSize(context, 15),
                  ),
                ],
              ),
              SizedBox(
                height: Dimentions.containerHeight(context, 20),
              ),
              LargButton(
                fontSize: Fonts.fontSize(context, 14),
                width: Dimentions.containerWidth(context, 343),
                height: Dimentions.containerHeight(context, 48),
                onPressed: () {},
                text: 'Login',
              ),
              SizedBox(
                height: Dimentions.containerHeight(context, 200),
              ),
              const Text('Or login with'),
              SizedBox(
                height: Dimentions.containerHeight(context, 20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/google.png',
                    width: Dimentions.containerWidth(context, 30),
                    height: Dimentions.containerHeight(context, 30),
                  ),
                  SizedBox(
                    width: Dimentions.containerWidth(context, 20),
                  ),
                  Image.asset(
                    'assets/images/apple.png',
                    width: Dimentions.containerWidth(context, 48),
                    height: Dimentions.containerHeight(context, 48),
                  ),
                  SizedBox(
                    width: Dimentions.containerWidth(context, 20),
                  ),
                  Image.asset(
                    'assets/images/facebook.png',
                    width: Dimentions.containerWidth(context, 40),
                    height: Dimentions.containerHeight(context, 40),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
