import 'package:flutter/material.dart';

class Listas extends StatelessWidget {
  const Listas({super.key});

  @override
  Widget build(BuildContext context) {
    final postres = getPostres();
    return Scaffold(
      appBar: AppBar(title: const Text('Gmail')),
      drawer: Drawer(),
      body: ListView.builder(
        itemCount: postres.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.teal,
            elevation: 4,
            margin: EdgeInsets.all(12),
            child: Text('${postres[index]}', style: TextStyle(fontSize: 60)),
          );
        },
      ),
    );
  }

  List<Widget> _buildItems() {
    List<Widget> items = [];

    for (int i = 1; i <= 100000; i++) {
      items.add(Text('$i', style: TextStyle(fontSize: 60)));
    }
    return items;
  }

  List<String> getPostres() {
    return [
      'Apple Pie',
      'Brownie',
      'Cheesecake',
      'Chocolate Cake',
      'Cupcake',
      'Donut',
      'Ice Cream',
      'Macaron',
      'Panna Cotta',
      'Tiramisu',
    ];
  }
}
