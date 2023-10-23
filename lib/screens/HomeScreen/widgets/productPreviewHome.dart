// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tapnget/constants/colors.dart';

import 'package:tapnget/constants/dimentions.dart';

class ProductPreviewHome extends StatelessWidget {
  const ProductPreviewHome({
    Key? key,
    required this.previewImage,
    required this.productName,
    required this.productPrice,
    required this.productDescription,
    required this.productCategory,
    required this.productStore,
    required this.productRating,
    required this.productLocation,
  }) : super(key: key);

  final String previewImage;
  final String productName;
  final String productPrice;
  final String productDescription;
  final String productCategory;
  final String productStore;
  final String productLocation;
  final int productRating;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                color: AppColors.boxShadow,
                spreadRadius: 1,
                blurRadius: 5,
              ),
            ],
          ),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                height: Dimentions.containerHeight(context, 150),
                width: Dimentions.containerWidth(context, 162),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    previewImage,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(productName,
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          fontSize: Fonts.fontSize(context, 12),
                          color: AppColors.productTextColor,
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('  K $productPrice',
                        style: GoogleFonts.inter(
                          fontSize: Fonts.fontSize(context, 12),
                          color: AppColors.priceTextColor,
                        )),
                    Text(productLocation)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    RatingBarIndicator(
                      rating: productRating.toDouble(),
                      itemBuilder: (context, index) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 15,
                      direction: Axis.horizontal,
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
