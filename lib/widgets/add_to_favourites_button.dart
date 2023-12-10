import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:tapnget/models/productModel.dart';
import 'package:tapnget/providers/favourite_provider.dart';

import '../constants/colors.dart';
import '../constants/dimentions.dart';

class AddToFavouritesButton extends ConsumerWidget {
  const AddToFavouritesButton({
    super.key,
    required this.product,
  });
  final ProductModel product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favouriteProduct = ref.watch(favouriteProductsProvider);

    final bool isFavourite = favouriteProduct.contains(product);

    return Container(
      height: Dimentions.containerHeight(context, 35),
      width: Dimentions.containerWidth(context, 35),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 37, 36, 36).withOpacity(0.25),
              spreadRadius: 0,
              blurRadius: 4,
              offset: const Offset(0, 4),
            ),
          ]),
      child: IconButton(
        onPressed: () {
          final wasAdded = ref
              .read(favouriteProductsProvider.notifier)
              .addFavouriteProduct(product);

          ScaffoldMessenger.of(context).clearSnackBars();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                wasAdded ? 'Added to favourites' : 'Removed from favourites',
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
              backgroundColor: const Color.fromARGB(255, 133, 104, 104),
              duration: const Duration(seconds: 1),
            ),
          );
        },
        icon: Icon(
          isFavourite ? Icons.favorite : Icons.favorite_border_rounded,
          color:
              isFavourite ? Colors.red : AppColors.productDisplaySceondaryColor,
        ),
      ),
    );
  }
}
