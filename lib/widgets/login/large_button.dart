import 'package:flutter/material.dart';
import 'package:tapnget/constants/colors.dart';

class LargButton extends StatelessWidget {
  const LargButton({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.width,
    required this.height,
    required this.fontSize,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String text;
  final double width;
  final double height;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        elevation: MaterialStateProperty.all<double>(0),
        backgroundColor:
            MaterialStateProperty.all<Color>(AppColors.buttonColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        fixedSize: MaterialStateProperty.all<Size>(
          Size(
            width,
            height,
          ),
        ),
      ),
      child: Text(text, style: TextStyle(fontSize: fontSize)),
    );
  }
}
