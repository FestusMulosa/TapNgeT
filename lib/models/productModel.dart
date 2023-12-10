// ignore_for_file: file_names

class ProductModel {
  final int id;
  final String previewImage;
  final String productName;
  final String productPrice;
  final String productDescription;
  final String productCategory;
  final String productStore;
  final int productRating;
  final String productLocation;
  final List<String> availableColors;
  final bool isStore;
  final List<String> availableSizes;
  final int quantity;

  ProductModel({
    required this.id,
    required this.previewImage,
    required this.productName,
    required this.productPrice,
    required this.productDescription,
    required this.productCategory,
    required this.productStore,
    required this.productRating,
    required this.productLocation,
    required this.availableColors,
    required this.isStore,
    required this.availableSizes,
    required this.quantity,
  });
}
