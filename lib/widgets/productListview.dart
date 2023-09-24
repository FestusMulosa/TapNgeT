import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:tapnget/constants/dimentions.dart';

import '../constants/colors.dart';

class ProductListview extends StatelessWidget {
  String previewImage;
  String productName;
  String productPrice;
  String productLocation;
  int productRating;

  ProductListview({
    Key? key,
    required this.previewImage,
    required this.productName,
    required this.productPrice,
    required this.productLocation,
    required this.productRating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
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
                previewImage,
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
                    productName,
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    productLocation,
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
                          rating: productRating.toDouble(),
                          itemBuilder: (context, index) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          itemCount: 5,
                          itemSize: 15,
                          direction: Axis.horizontal,
                        ),
                        Text('($productRating)',
                            style: GoogleFonts.inter(
                              fontSize: 10,
                              color: AppColors.productDisplaySceondaryColor,
                            )),
                      ],
                    ),
                  ),
                  SizedBox(height: Dimentions.containerHeight(context, 5)),
                  Text(
                    'K $productPrice',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}