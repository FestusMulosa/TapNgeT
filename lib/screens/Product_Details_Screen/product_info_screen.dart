import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:tapnget/constants/dimentions.dart';
import 'package:tapnget/models/productModel.dart';
import 'package:tapnget/screens/Product_Details_Screen/widgets/image_slider.dart';
import 'package:tapnget/widgets/add_to_favourites_button.dart';
import 'package:tapnget/widgets/login/large_button.dart';
import 'package:tapnget/widgets/product_rating.dart';

import '../../providers/favourite_provider.dart';
import 'widgets/drop_down_button.dart';

class ProductInfoScreen extends ConsumerStatefulWidget {
  ProductInfoScreen({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<ProductInfoScreen> createState() => _ProductInfoScreenState();
}

class _ProductInfoScreenState extends ConsumerState<ProductInfoScreen> {
  @override
  Widget build(BuildContext context) {
    final product = ModalRoute.of(context)!.settings.arguments as Map;
    final productPrice = product['productPrice'];
    final productDescription = product['productDescription'];
    final productRating = product['productRating'];
    final productName = product['productName'];
    final storeName = product['productStore'];
    final productImage = product['productImage'];

    final isStore = product['isStore'];
    final availableColors = product['availableColors'];
    final availablesizes = product['availablesizes'];

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(productName),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                ImageSlider(),
                SizedBox(
                  height: Dimentions.containerHeight(context, 5),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DropDownMenu(
                      list: availableColors,
                    ),
                    DropDownMenu(
                      list: availablesizes,
                    ),
                  ],
                ),
                SizedBox(
                  height: Dimentions.containerHeight(context, 10),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    isStore
                        ? Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text(
                                  storeName,
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text(
                                  productName,
                                  style: TextStyle(
                                    fontSize: 11,
                                  ),
                                ),
                              ),
                            ],
                          )
                        : Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              productName,
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                          ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'K ${productPrice.toString()}',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: Dimentions.containerHeight(context, 5),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ProductRating(productRating: productRating),
                ),
                SizedBox(
                  height: Dimentions.containerHeight(context, 5),
                ),
                SizedBox(
                  height: Dimentions.containerHeight(context, 80),
                  width: Dimentions.containerWidth(context, 345),
                  child: Text(
                    productDescription,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 4,
                  ),
                ),
                SizedBox(
                  height: Dimentions.containerHeight(context, 5),
                ),
                LargButton(
                  onPressed: () {},
                  text: 'ADD TO CART',
                  width: Dimentions.containerWidth(context, 343),
                  height: Dimentions.containerHeight(context, 48),
                  fontSize: Fonts.fontSize(context, 14),
                ),
              ],
            ),
          )),
    );
  }
}
