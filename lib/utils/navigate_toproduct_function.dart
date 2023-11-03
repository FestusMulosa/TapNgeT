import 'package:flutter/material.dart';

void navigateToProductPage(BuildContext context, products) {
  Navigator.of(context).pushNamed('/productDetails', arguments: {
    'previewImage': products.previewImage,
    'productName': products.productName,
    'productPrice': products.productPrice,
    'productRating': products.productRating,
    'productLocation': products.productLocation,
    'isStore': products.isStore,
    'productDescription': products.productDescription,
    'productCategory': products.productCategory,
    'availableColors': products.availableColors,
    'productStore': products.productStore,
    'availablesizes': products.availableSizes,
  });
}
