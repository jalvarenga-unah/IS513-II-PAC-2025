import 'package:flutter/material.dart';
import 'package:gmail_clone/src/widgets/item_menu_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gmail')),
      drawer: Drawer(
        child: ListView(
          children: [
            ItemMenuBar(
              icon: Icons.message_sharp,
              title: 'Todos los recibidos',
              subtitle: 'bandeja de entrada',
              iconTrailing: Icons.arrow_right_rounded,
            ),

            Divider(),
            ItemMenuBar(title: 'Pricipal', icon: Icons.email_outlined),

            ListTile(
              leading: Icon(Icons.people_outline),
              title: Text('Social'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.notifications_outlined),
              title: Text('Notificaciones'),
              onTap: () {},
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
            ListTile(
              leading: Icon(Icons.star_border_outlined),
              title: Text('Destacados'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Center(child: Text('Los correos de entrada')),
    );
  }
}
