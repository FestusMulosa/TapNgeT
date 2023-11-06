// ignore_for_file: file_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:tapnget/constants/colors.dart';
import 'package:tapnget/constants/dimentions.dart';
import 'package:tapnget/models/dummydata/dummydata.dart';
import 'package:tapnget/models/productModel.dart';
import 'package:tapnget/screens/Shop_Screen/widgets/product_grid_view.dart';
import 'package:tapnget/utils/navigate_toproduct_function.dart';

import '../../constants/filters.dart';
import '../../models/dummydata/dummyProducts.dart';
import '../../providers/products_provider.dart';
import 'widgets/Sort_bottom_sheet.dart';
import 'widgets/filter_bottom_sheet..dart';
import 'widgets/product_list_view.dart';

class ShopScreen extends ConsumerStatefulWidget {
  const ShopScreen({
    required this.product,
  });
  final List<ProductModel> product;

  @override
  ConsumerState<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends ConsumerState<ShopScreen> {
  bool isGrid = true;

  @override
  Widget build(BuildContext context) {
    final products = ref.watch(productProvider);
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: dummyCategoryData
                .map(
                  (filters) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FilterChip(
                      label: Text(filters.categoryName,
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.bold,
                            fontSize: Fonts.fontSize(context, 14),
                            color: Colors.white,
                          )),
                      onSelected: (selected) {},
                      backgroundColor: AppColors.filterColor,
                    ),
                  ),
                )
                .toList(),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return shoppingFilters();
                    });
              },
              child: Row(
                children: [
                  const Icon(
                    Icons.filter_list,
                    color: AppColors.filterColor,
                  ),
                  Text('Filters',
                      style: GoogleFonts.inter(
                        fontSize: Fonts.fontSize(context, 11),
                        color: AppColors.filterColor,
                      )),
                ],
              ),
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return const SortBy();
                        });
                  },
                  child: Row(
                    children: [
                      const Icon(
                        Icons.sort,
                        color: AppColors.filterColor,
                      ),
                      Text('Sort by',
                          style: GoogleFonts.inter(
                            fontSize: Fonts.fontSize(context, 11),
                            color: AppColors.filterColor,
                          )),
                    ],
                  ),
                ),
              ],
            ),
            isGrid
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        isGrid = false;
                      });
                    },
                    icon: const Icon(Icons.list_sharp,
                        color: AppColors.filterColor))
                : IconButton(
                    onPressed: () {
                      setState(() {
                        isGrid = true;
                      });
                    },
                    icon: const Icon(Icons.grid_view_outlined,
                        color: AppColors.filterColor))
          ],
        ),
        isGrid
            ? SizedBox(
                height: Dimentions.containerHeight(context, 500),
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.73,
                    ),
                    itemCount: products.length,
                    itemBuilder: (BuildContext context, int index) {
                      return products
                          .map((products) => ProductGridview(
                                product: products,
                                onTap: () {
                                  navigateToProductPage(context, products);
                                },
                              ))
                          .toList()[index];
                    }),
              )
            : SizedBox(
                height: Dimentions.containerHeight(context, 500),
                child: ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (BuildContext context, int index) {
                      return products
                          .map((products) => ProductListview(
                                product: products,
                                onTap: () {
                                  navigateToProductPage(context, products);
                                },
                              ))
                          .toList()[index];
                    }),
              )
      ],
    );
  }
}
