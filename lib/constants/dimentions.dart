import 'package:flutter/material.dart';

class ScalingFactor {
  static double scalingFactor(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    const double referenceScreenWidth = 360; // use any reference width you like
    return screenWidth / referenceScreenWidth;
  }
}

class Dimentions {
  static double containerWidth(BuildContext context, double width) =>
      width * ScalingFactor.scalingFactor(context);

  static double containerHeight(BuildContext context, double height) =>
      height * ScalingFactor.scalingFactor(context);

  static double paddingSize(BuildContext context, double size) =>
      size * ScalingFactor.scalingFactor(context) / 2;

  static double marginSize(BuildContext context, double size) =>
      size * ScalingFactor.scalingFactor(context) / 2;

  static double iconSize(BuildContext context, double size) =>
      size * ScalingFactor.scalingFactor(context);
}

class Fonts {
  static double fontSize(BuildContext context, double size) =>
      size * ScalingFactor.scalingFactor(context);
}
