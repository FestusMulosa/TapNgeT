// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/colors.dart';
import '../../constants/dimentions.dart';
import '../../providers/favourite_provider.dart';
import '../../utils/navigate_toproduct_function.dart';
import '../Shop_Screen/widgets/Sort_bottom_sheet.dart';
import '../Shop_Screen/widgets/filter_bottom_sheet..dart';
import '../Shop_Screen/widgets/product_grid_view.dart';
import '../Shop_Screen/widgets/product_list_view.dart';

class FavouriteScreen extends ConsumerStatefulWidget {
  const FavouriteScreen({
    super.key,
  });

  @override
  ConsumerState<FavouriteScreen> createState() => _FavouriteScreenState();
}

bool isGrid = true;

class _FavouriteScreenState extends ConsumerState<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    final favouriteProducts = ref.watch(favouriteProductsProvider);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return const shoppingFilters();
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
                    itemCount: favouriteProducts.length,
                    itemBuilder: (BuildContext context, int index) {
                      return favouriteProducts
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
                    itemCount: favouriteProducts.length,
                    itemBuilder: (BuildContext context, int index) {
                      return favouriteProducts
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
