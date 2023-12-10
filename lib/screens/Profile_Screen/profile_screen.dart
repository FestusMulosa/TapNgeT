import 'package:flutter/material.dart';
import 'package:tapnget/constants/dimentions.dart';

import 'widgets/profile_list_tile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Profile',
              style: TextStyle(
                fontSize: Fonts.fontSize(context, 34),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: Dimentions.containerHeight(context, 20),
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: Image.network(
                          'https://cdn.pixabay.com/photo/2023/09/06/13/47/woman-8237167_640.jpg')
                      .image,
                ),
                SizedBox(
                  width: Dimentions.containerWidth(context, 20),
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    'User Name',
                    style: TextStyle(
                      fontSize: Fonts.fontSize(context, 20),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: Dimentions.containerHeight(context, 10),
                  ),
                  const Text('User Email'),
                ]),
              ],
            ),
            SizedBox(
              height: Dimentions.containerHeight(context, 20),
            ),
            const ProfileListTile(
              title: 'My Orders',
              subtitle: 'Already have 12 orders',
              icon: Icons.shopping_basket,
            ),
            const ProfileListTile(
              title: 'Shipping Addresses',
              subtitle: '3 addresses',
              icon: Icons.location_on,
            ),
            const ProfileListTile(
              title: 'Payment Methods',
              subtitle: 'Visa  **34',
              icon: Icons.payment,
            ),
            const ProfileListTile(
              title: 'Promocodes',
              subtitle: 'You have special promocodes',
              icon: Icons.card_giftcard,
            ),
            const ProfileListTile(
              title: 'My reviews',
              subtitle: 'Reviews for 4 items',
              icon: Icons.rate_review,
            ),
            const ProfileListTile(
              title: 'Settings',
              subtitle: 'Notification, password',
              icon: Icons.settings,
            ),
          ],
        ),
      ),
    );
  }
}
