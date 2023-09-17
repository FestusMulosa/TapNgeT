import 'dart:convert';

class ProductModel {
  final String previewImage;
  final String productName;
  final String productPrice;
  final String productDescription;
  final String productCategory;
  final String productStore;
  final int productRating;
  final String productLocation;

  ProductModel({
    required this.previewImage,
    required this.productName,
    required this.productPrice,
    required this.productDescription,
    required this.productCategory,
    required this.productStore,
    required this.productRating,
    required this.productLocation,
  });
}
