// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:tapnget/constants/dimentions.dart';
import 'package:tapnget/models/productModel.dart';

import '../../../constants/colors.dart';
import '../../../widgets/add_to_favourites_button.dart';

class ProductListview extends StatelessWidget {
  ProductModel product;

  Function() onTap;

  ProductListview({
    Key? key,
    required this.product,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            onTap();
          },
          child: Container(
            height: Dimentions.containerHeight(context, 95),
            width: Dimentions.containerWidth(context, 343),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 0,
                  blurRadius: 4,
                  offset: Offset(0, 4), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  child: Image.asset(
                    product.previewImage,
                    height: Dimentions.containerHeight(context, 104),
                    width: Dimentions.containerWidth(context, 104),
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.productName,
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        product.productLocation,
                        style: GoogleFonts.inter(
                          fontSize: 11,
                          color: AppColors.productDisplaySceondaryColor,
                        ),
                      ),
                      SizedBox(height: Dimentions.containerHeight(context, 5)),
                      Padding(
                        padding: const EdgeInsets.all(2.5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            RatingBarIndicator(
                              rating: product.productRating.toDouble(),
                              itemBuilder: (context, index) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              itemCount: 5,
                              itemSize: 15,
                              direction: Axis.horizontal,
                            ),
                            Text('(${product.productRating})',
                                style: GoogleFonts.inter(
                                  fontSize: 10,
                                  color: AppColors.productDisplaySceondaryColor,
                                )),
                          ],
                        ),
                      ),
                      SizedBox(height: Dimentions.containerHeight(context, 5)),
                      Text(
                        'K ${product.productPrice}',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: AppColors.priceTextColor,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      Positioned(
          top: 80,
          right: 11,
          child: Container(
              height: Dimentions.containerHeight(context, 35),
              width: Dimentions.containerWidth(context, 35),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.25),
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: const Offset(0, 4),
                    ),
                  ]),
              child: AddToFavouritesButton(
                product: product,
              )))
    ]);
  }
}
