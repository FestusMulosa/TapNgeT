// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tapnget/constants/dimentions.dart';

class CategoryList extends StatelessWidget {
  final String categoryName;
  final String categoryImage;
  const CategoryList({
    Key? key,
    required this.categoryName,
    required this.categoryImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: (8.0)),
      child: Container(
        height: 100,
        width: 343,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 10,
              offset: const Offset(0, 3),
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: SizedBox(
                width: 100,
                child: Text(categoryName,
                    maxLines: 2,
                    overflow: TextOverflow.fade,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: Fonts.fontSize(context, 18))),
              ),
            ),
            SizedBox(
              width: Dimentions.containerWidth(context, 5),
            ),
            Image.asset(
              categoryImage,
              height: 100,
              width: 171,
            ),
          ],
        ),
      ),
    );
  }
}
