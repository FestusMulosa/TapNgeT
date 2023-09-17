// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tapnget/constants/dimentions.dart';
import 'package:tapnget/models/dummydata/dummydata.dart';
import 'package:tapnget/screens/controlScreen.dart';
import 'package:tapnget/widgets/categoryHomeIcon.dart';

import '../models/dummydata/dummyProducts.dart';
import '../widgets/productPreviewHome.dart';
import '../widgets/storeHomeIcone.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Categories'),
          ),
          SizedBox(
            height: Dimentions.containerHeight(context, 170),
            child: GridView(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1.5,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              children: dummyCategoryData
                  .map((categories) => CategoryHomeIcon(
                      icon: categories.imageUrl, name: categories.categoryName))
                  .toList(),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    'See all',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Popular Stores'),
          ),
          SizedBox(
            height: Dimentions.containerHeight(context, 180),
            child: GridView(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1.5,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              children: dummyStores
                  .map((stores) =>
                      StoreHomeIcon(image: stores.imageUrl, name: stores.name))
                  .toList(),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'See all',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Just for You!',
                  style: TextStyle(
                    fontSize: Fonts.fontSize(context, 20),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: Dimentions.containerHeight(context, 500),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.8,
                crossAxisCount: 2,
              ),
              itemCount: dummyProducts.length,
              itemBuilder: (BuildContext context, int index) {
                return dummyProducts
                    .map((products) => ProductPreviewHome(
                          previewImage: products.previewImage,
                          productName: products.productName,
                          productPrice: products.productPrice,
                          productDescription: products.productDescription,
                          productCategory: products.productCategory,
                          productStore: products.productStore,
                          productRating: products.productRating,
                          productLocation: products.productLocation,
                        ))
                    .toList()[index];
              },
            ),
          ),
        ],
      ),
    );
  }
}
