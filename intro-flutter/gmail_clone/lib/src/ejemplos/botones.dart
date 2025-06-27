import 'package:flutter/material.dart';
import 'package:gmail_clone/data/emails_income.dart';

import 'package:gmail_clone/src/widgets/item_email.dart';
import 'package:gmail_clone/src/widgets/side_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pageController = PageController();

  int currenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gmail')),
      // endDrawer: Drawer(),
      drawer: SideMenu(),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[700],
              ),
              child: Text(
                'Configuración',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[700],
              ),
              child: Text(
                'Ir al perfil',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currenIndex,
        onTap: (index) {
          setState(() {});
          currenIndex = index;
          // pageController.jumpToPage(index);
          pageController.animateToPage(
            index,
            duration: Duration(milliseconds: 300),
            curve: Curves.easeIn,
          );
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.email), label: 'Mensajes'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
          BottomNavigationBarItem(
            icon: Icon(Icons.videocam_rounded),
            label: 'Reunirse',
          ),
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(backgroundColor: Colors.green[700]),
      child: Text('Ir al perfil', style: TextStyle(color: Colors.white)),
    );
  }
}
