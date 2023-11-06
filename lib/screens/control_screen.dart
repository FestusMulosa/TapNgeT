// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:tapnget/constants/colors.dart';

import '../providers/products_provider.dart';
import 'Bag_Screen/bag_screen.dart';
import 'Favourites_Screen/favourites_screen.dart';
import 'Home_Screen/home_screen.dart';
import 'Profile_Screen/profile_screen.dart';
import 'Shop_Screen/shop_screen.dart';

class ControlScreen extends ConsumerStatefulWidget {
  const ControlScreen({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<ControlScreen> createState() => _ControlScreenState();
}

class _ControlScreenState extends ConsumerState<ControlScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    //meal provider
    final products = ref.watch(productProvider);

    //list of screens
    final List<Widget> screens = [
      const HomeScreen(),
      ShopScreen(product: products),
      const BagScreen(),
      FavouriteScreen(),
      const ProfileScreen(),
    ];

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),

        // bottom Navigation Bar
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined), label: 'Shop'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined), label: 'Bag'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline), label: 'Favourites'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: 'Profile'),
          ],
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          selectedItemColor: AppColors.buttonColor,
        ),

        // Body
        body: screens[currentIndex],
      ),
    );
  }
}
