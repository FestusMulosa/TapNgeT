import 'package:flutter/material.dart';
import 'package:tapnget/widgets/categoryList.dart';

import '../constants/dimentions.dart';
import '../models/dummydata/dummydata.dart';

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
