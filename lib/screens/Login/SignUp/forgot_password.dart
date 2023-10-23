// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';

import '../../../constants/dimentions.dart';
import '../../../widgets/login/large_button.dart';

class forgotPassword extends StatelessWidget {
  const forgotPassword({super.key});

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
                'Forgot Password',
                style: TextStyle(
                  fontSize: Fonts.fontSize(context, 34),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: Dimentions.containerHeight(context, 35),
              ),
              Text(
                'Enter your email address and we will send you a link to reset your password',
                style: TextStyle(
                  fontSize: Fonts.fontSize(context, 14),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: Dimentions.containerHeight(context, 20),
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
              LargButton(
                fontSize: Fonts.fontSize(context, 14),
                width: Dimentions.containerWidth(context, 343),
                height: Dimentions.containerHeight(context, 48),
                onPressed: () {},
                text: 'SEND',
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
