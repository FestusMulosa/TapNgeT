// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:tapnget/constants/dimentions.dart';

class CategoryHomeIcon extends StatelessWidget {
  const CategoryHomeIcon({
    Key? key,
    required this.icon,
    required this.name,
  }) : super(key: key);

  final String icon;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimentions.containerHeight(context, 95),
      width: Dimentions.containerWidth(context, 68),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              height: Dimentions.containerHeight(context, 55),
              width: Dimentions.containerWidth(context, 55),
              child: Image.asset(
                icon,
                fit: BoxFit.fill,
              )),
          Text(name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ))
        ],
      ),
    );
  }
}
