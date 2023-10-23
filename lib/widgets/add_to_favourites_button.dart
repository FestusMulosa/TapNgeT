import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/dimentions.dart';

class AddToFavouritesButton extends StatelessWidget {
  const AddToFavouritesButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimentions.containerHeight(context, 35),
      width: Dimentions.containerWidth(context, 35),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 37, 36, 36).withOpacity(0.25),
              spreadRadius: 0,
              blurRadius: 4,
              offset: const Offset(0, 4),
            ),
          ]),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.favorite_border_rounded,
          color: AppColors.productDisplaySceondaryColor,
        ),
      ),
    );
  }
}
