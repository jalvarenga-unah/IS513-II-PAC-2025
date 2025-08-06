import 'package:flutter/material.dart';
import 'package:gmail_clone/src/views/fragments/chat_page.dart';
import 'package:gmail_clone/src/views/fragments/email_list_page.dart';
import 'package:gmail_clone/src/views/fragments/meet_page.dart';
import 'package:gmail_clone/src/widgets/side_menu.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.user});

  final String user;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // es el PageView contenido en una variable
  final pageController = PageController(initialPage: 0);

  int opcion = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gmail: ${widget.user}')),
      // endDrawer: Drawer(),
      drawer: SideMenu(),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        // scrollDirection: Axis.vertical,
        controller: pageController,
        onPageChanged: (index) {
          setState(() {
            opcion = index;
          });
          print('pageView: $index');
        },
        children: [EmailListPage(), ChatPage(), MeetPage()],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // redirigir a la página de nuevo mensaje
          context.pushNamed('new-message');
        },
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: opcion,
        onTap: (index) {
          // indica al estado, que se cambió la opción del menú
          setState(() {});
          opcion = index;

          //? Se le indica al PageView que se cambió la página
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
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Productos'),
          BottomNavigationBarItem(
            icon: Icon(Icons.videocam_rounded),
            label: 'Reunirse',
          ),
        ],
      ),
    );
  }
}
