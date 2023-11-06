import 'package:riverpod/riverpod.dart';
import 'package:tapnget/models/dummydata/dummyProducts.dart';

final productProvider = Provider((ref) {
  return dummyProducts;
});
