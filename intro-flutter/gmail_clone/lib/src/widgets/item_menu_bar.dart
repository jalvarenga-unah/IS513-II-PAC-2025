import 'package:flutter/material.dart';

class ItemMenuBar extends StatelessWidget {
  const ItemMenuBar({
    super.key,
    required this.title,
    required this.icon,
    this.subtitle,
    this.iconTrailing,
  });

  // la propiedad de mi Widget
  final String title;
  final IconData icon;
  final String? subtitle;
  final IconData? iconTrailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      trailing: Icon(iconTrailing),
      subtitle: Text(subtitle ?? ''),
      title: Text(title),

      onTap: () {},
    );
  }
}
