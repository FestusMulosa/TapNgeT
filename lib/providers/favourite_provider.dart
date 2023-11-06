import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tapnget/models/productModel.dart';

class FavouriteProductNotifier extends StateNotifier<List<ProductModel>> {
  FavouriteProductNotifier() : super([]);

  bool addFavouriteProduct(ProductModel product) {
    final productIsFavourite = state.contains(product);

    if (productIsFavourite) {
      state = state.where((p) => p.id != product.id).toList();
      return false;
    } else {
      state = [...state, product];
      return true;
    }
  }
}

final favouriteProductsProvider =
    StateNotifierProvider<FavouriteProductNotifier, List<ProductModel>>(
  (ref) {
    return FavouriteProductNotifier();
  },
);
