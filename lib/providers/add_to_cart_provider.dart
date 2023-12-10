import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tapnget/models/productModel.dart';

class AddToCartNotifier extends StateNotifier<List<ProductModel>> {
  AddToCartNotifier() : super([]);

  bool addToCart(ProductModel product) {
    final productIsInCart = state.contains(product);

    if (productIsInCart) {
      state = state.where((p) => p.id != product.id).toList();
      return false;
    } else {
      state = [...state, product];
      return true;
    }
  }
}

final addToCartProvider =
    StateNotifierProvider<AddToCartNotifier, List<ProductModel>>(
  (ref) {
    return AddToCartNotifier();
  },
);
