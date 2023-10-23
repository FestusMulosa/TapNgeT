// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:tapnget/constants/colors.dart';

import 'Bag_Screen/bag_screen.dart';
import 'Favourites_Screen/favourites_screen.dart';
import 'Home_Screen/home_screen.dart';
import 'Profile_Screen/profile_screen.dart';
import 'Shop_Screen/shop_screen.dart';

class ControlScreen extends StatefulWidget {
  const ControlScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ControlScreen> createState() => _ControlScreenState();
}

class _ControlScreenState extends State<ControlScreen> {
  int currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const ShopScreen(),
    const BagScreen(),
    const FavouriteScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
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
        body: _screens[currentIndex],
      ),
    );
  }
}
