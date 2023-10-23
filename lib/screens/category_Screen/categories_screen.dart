// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../models/dummydata/dummydata.dart';
import 'widgets/category_list.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text('Categories'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
                children: dummyCategoryData
                    .map((category) => CategoryList(
                          categoryName: category.categoryName,
                          categoryImage: category.imageUrl,
                        ))
                    .toList()),
          ),
        ),
      ),
    );
  }
}
