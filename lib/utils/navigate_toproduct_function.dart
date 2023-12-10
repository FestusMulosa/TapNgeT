import 'package:flutter/material.dart';

import '../screens/Product_Details_Screen/product_Info_Screen.dart';

void navigateToProductPage(BuildContext context, products) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => ProductInfoScreen(
        products: products,
      ),
    ),
  );
}
