// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../constants/dimentions.dart';
import '../../../constants/filters.dart';

class SortBy extends StatelessWidget {
  const SortBy({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimentions.containerHeight(context, 352),
      width: Dimentions.containerWidth(context, 375),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15))),
      child: Column(
        children: [
          Text(
            'Sort by',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: Fonts.fontSize(context, 18),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: shoppingSort.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(shoppingSort[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
