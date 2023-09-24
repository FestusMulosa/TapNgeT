// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:tapnget/constants/dimentions.dart';

class StoreHomeIcon extends StatelessWidget {
  const StoreHomeIcon({
    Key? key,
    required this.image,
    required this.name,
  }) : super(key: key);

  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: Dimentions.containerHeight(context, 92),
        width: Dimentions.containerWidth(context, 77),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              height: Dimentions.containerHeight(context, 55),
              width: Dimentions.containerWidth(context, 55),
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
            Text(
              name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ));
  }
}
