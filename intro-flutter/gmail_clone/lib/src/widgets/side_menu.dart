import 'package:flutter/material.dart';
import 'package:gmail_clone/src/widgets/header_menu.dart';
import 'package:gmail_clone/src/widgets/item_menu_bar.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // width: double.infinity,
      child: ListView(
        children: [
          HeaderMenu(),
          Divider(),
          ItemMenuBar(
            icon: Icons.message_sharp,
            title: 'Todos los recibidos',
            subtitle: 'bandeja de entrada',
            iconTrailing: Icons.arrow_right_rounded,
            click: () {
              // cerrar o cancelar la última navegación
              Navigator.of(context).pop();
              // Navigator.pop(context);
              print('todos los recibidos');
            },
          ),

          Divider(),
          ItemMenuBar(
            title: 'Pricipal',
            icon: Icons.email_outlined,
            click: () {
              print('principal');
            },
          ),
          ItemMenuBar(
            title: 'Social',
            icon: Icons.people_outline,
            click: () {
              //TODO: navegar a otra pantalla
              print('social');
            },
          ),
          ItemMenuBar(
            title: 'Notificaciones',
            icon: Icons.notifications_outlined,
            click: () {
              print('Notificaciones');
            },
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Todas las etiquetas',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.grey[700],
                fontSize: 12,
              ),
            ),
          ),
          ItemMenuBar(
            title: 'Destacados',
            icon: Icons.star_border_outlined,
            click: () {
              print('Destacados');
            },
          ),
        ],
      ),
    );
  }
}
