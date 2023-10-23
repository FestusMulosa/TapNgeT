import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class ProductRating extends StatelessWidget {
  const ProductRating({
    super.key,
    required this.productRating,
  });

  final int productRating;

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
