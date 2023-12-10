// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:tapnget/constants/dimentions.dart';
import 'package:tapnget/controllers/cart_controller.dart';
import 'package:tapnget/models/productModel.dart';

import 'package:tapnget/screens/Product_Details_Screen/widgets/image_slider.dart';
import 'package:tapnget/widgets/login/large_button.dart';
import 'package:tapnget/widgets/product_rating.dart';

import '../../providers/add_to_cart_provider.dart';
import 'widgets/drop_down_button.dart';
import 'widgets/quantity_selector.dart';

class ProductInfoScreen extends ConsumerStatefulWidget {
  const ProductInfoScreen({
    Key? key,
    required this.products,
  }) : super(key: key);

  final ProductModel products;

  @override
  ConsumerState<ProductInfoScreen> createState() => _ProductInfoScreenState();
}

class _ProductInfoScreenState extends ConsumerState<ProductInfoScreen> {
  @override
  Widget build(BuildContext context) {
    final product = widget.products;
    int initialQuantity = 1;

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(product.productName),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const ImageSlider(),
                SizedBox(
                  height: Dimentions.containerHeight(context, 5),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DropdownMenuButton(
                      list: product.availableColors,
                    ),
                    DropdownMenuButton(
                      list: product.availableSizes,
                    ),
                  ],
                ),
                SizedBox(
                  height: Dimentions.containerHeight(context, 10),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    product.isStore
                        ? Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text(
                                  product.productStore,
                                  style: TextStyle(
                                      fontSize: Fonts.fontSize(context, 24),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text(
                                  product.productName,
                                  style: TextStyle(
                                    fontSize: Fonts.fontSize(context, 24),
                                  ),
                                ),
                              ),
                            ],
                          )
                        : Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              product.productName,
                              style: TextStyle(
                                  fontSize: Fonts.fontSize(context, 24),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'K ${product.productPrice.toString()}',
                        style: TextStyle(
                            fontSize: Fonts.fontSize(context, 24),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: Dimentions.containerHeight(context, 5),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ProductRating(productRating: product.productRating),
                ),
                SizedBox(
                  height: Dimentions.containerHeight(context, 5),
                ),
                SizedBox(
                  height: Dimentions.containerHeight(context, 80),
                  width: Dimentions.containerWidth(context, 345),
                  child: Text(
                    product.productDescription,
                    style: TextStyle(
                      fontSize: Fonts.fontSize(context, 15),
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 4,
                  ),
                ),
                SizedBox(
                  height: Dimentions.containerHeight(context, 5),
                ),
                LargButton(
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(40)),
                        ),
                        builder: (BuildContext context) {
                          return Container(
                            height: Dimentions.containerHeight(context, 400),
                            width: Dimentions.containerWidth(context, 375),
                            child: Column(children: [
                              Text('Add to cart'),
                              Row(
                                children: [
                                  Text('unit price'),
                                  Text('K ${product.productPrice.toString()}'),
                                ],
                              ),
                              Text('Quantity'),
                              QuantitySelector(
                                quantity: initialQuantity,
                                maxQuantity: product.quantity,
                                minQuantity: 1,
                              ),
                              Row(
                                children: [
                                  Text('Total'),
                                  Text(
                                      'K ${(product.productPrice * initialQuantity).toString()}'),
                                ],
                              ),
                            ]),
                          );
                        });
                  },
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
