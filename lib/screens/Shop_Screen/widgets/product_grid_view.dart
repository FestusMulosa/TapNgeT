// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:tapnget/constants/colors.dart';
import 'package:tapnget/constants/dimentions.dart';

import '../../../widgets/add_to_favourites_button.dart';
import '../../../widgets/product_rating.dart';

class ProductGridview extends StatelessWidget {
  String previewImage;
  String productName;
  String productPrice;
  String productLocation;
  int productRating;
  Function onTap;

  ProductGridview({
    Key? key,
    required this.previewImage,
    required this.productName,
    required this.productPrice,
    required this.productLocation,
    required this.productRating,
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
            height: Dimentions.containerHeight(context, 260),
            width: Dimentions.containerWidth(context, 164),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.25),
                  spreadRadius: 0,
                  blurRadius: 4,
                  offset: const Offset(0, 4), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    previewImage,
                    height: Dimentions.containerHeight(context, 164),
                    width: Dimentions.containerWidth(context, 184),
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ProductRating(productRating: productRating),
                          ],
                        ),
                      ),
                      Text(
                        productLocation,
                        style: GoogleFonts.inter(
                          fontSize: 11,
                          color: AppColors.productDisplaySceondaryColor,
                        ),
                      ),
                      Text(
                        productName,
                        style: GoogleFonts.inter(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'K $productPrice',
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: AppColors.priceTextColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      const Positioned(top: 165, right: 11, child: AddToFavouritesButton())
    ]);
  }
}
