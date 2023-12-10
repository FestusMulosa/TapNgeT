import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tapnget/models/dummydata/dummyProducts.dart';

final productProvider = Provider((ref) {
  return dummyProducts;
});
