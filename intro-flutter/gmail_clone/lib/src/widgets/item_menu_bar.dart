import 'package:flutter/material.dart';

class ItemMenuBar extends StatelessWidget {
  const ItemMenuBar({
    super.key,
    required this.title,
    required this.icon,
    this.subtitle,
    this.iconTrailing,
    required this.click,
  });

  // la propiedad de mi Widget
  final String title;
  final IconData icon;
  final String? subtitle;
  final IconData? iconTrailing;
  final VoidCallback? click;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      trailing: Icon(iconTrailing),
      subtitle: subtitle != null ? Text(subtitle!) : null,
      title: Text(title, style: TextStyle(fontWeight: FontWeight.w400)),
      onTap: click,
    );
  }
}
