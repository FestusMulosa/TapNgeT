import 'package:flutter/material.dart';

class ProfileListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const ProfileListTile({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.arrow_forward_ios),
    );
  }
}
