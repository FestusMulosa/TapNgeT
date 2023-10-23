// theme.dart

import 'package:flutter/material.dart';
import 'package:tapnget/constants/colors.dart';

final ThemeData appTheme = ThemeData(
  // Define your custom scaffold background color here
  scaffoldBackgroundColor: AppColors.scaffoldBackroundColor,

  //AppBar Theme
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(
      color: Colors.black, // Change this to the desired color
    ),
    toolbarTextStyle: TextStyle(
      color: Colors.black,
    ),
    titleTextStyle: TextStyle(
      color: Colors.black,
    ),
  ),
);
