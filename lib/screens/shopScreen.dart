// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tapnget/constants/colors.dart';
import 'package:tapnget/constants/dimentions.dart';
import 'package:tapnget/models/dummydata/dummydata.dart';
import 'package:tapnget/widgets/productGridView.dart';

import '../models/dummydata/dummyProducts.dart';
import '../widgets/productListview.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  bool isGrid = true;

  @override
  Widget build(BuildContext context) {
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
            Row(
              children: [
                const Icon(Icons.filter_list, color: AppColors.filterColor),
                Text('Filters',
                    style: GoogleFonts.inter(
                      fontSize: Fonts.fontSize(context, 11),
                      color: AppColors.filterColor,
                    )),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.sort_outlined, color: AppColors.filterColor),
                Text('Sort',
                    style: GoogleFonts.inter(
                      fontSize: Fonts.fontSize(context, 11),
                      color: AppColors.filterColor,
                    )),
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
                    itemCount: dummyProducts.length,
                    itemBuilder: (BuildContext context, int index) {
                      return dummyProducts
                          .map((products) => ProductGridview(
                                previewImage: products.previewImage,
                                productName: products.productName,
                                productPrice: products.productPrice,
                                productRating: products.productRating,
                                productLocation: products.productLocation,
                              ))
                          .toList()[index];
                    }),
              )
            : SizedBox(
                height: Dimentions.containerHeight(context, 500),
                child: ListView.builder(
                    itemCount: dummyProducts.length,
                    itemBuilder: (BuildContext context, int index) {
                      return dummyProducts
                          .map((products) => ProductListview(
                                previewImage: products.previewImage,
                                productName: products.productName,
                                productPrice: products.productPrice,
                                productRating: products.productRating,
                                productLocation: products.productLocation,
                              ))
                          .toList()[index];
                    }),
              )
      ],
    );
  }
}
