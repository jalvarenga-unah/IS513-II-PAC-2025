import 'package:flutter/material.dart';
import 'package:gmail_clone/data/emails_income.dart';

import 'package:gmail_clone/src/widgets/item_email.dart';
import 'package:gmail_clone/src/widgets/side_menu.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

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
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        // scrollDirection: Axis.vertical,
        controller: pageController,
        onPageChanged: (index) {
          setState(() {
            currenIndex = index;
          });
          print('pageView: $index');
        },
        children: [
          ListView.builder(
            itemCount: emailIncome.length,
            itemBuilder: (BuildContext contex, int index) {
              return ItemEmail(
                user: emailIncome[index]['user'],
                subject: emailIncome[index]['subject'],
                body: emailIncome[index]['body'],
                time: emailIncome[index]['time'],
              );
            },
          ),

          Container(color: Colors.red),
          Container(color: Colors.blue),
        ],
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
