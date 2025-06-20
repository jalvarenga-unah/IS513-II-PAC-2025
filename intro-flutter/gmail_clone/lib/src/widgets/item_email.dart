import 'package:flutter/material.dart';

class ItemEmail extends StatelessWidget {
  const ItemEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.red[50],
            radius: 30,
            child: Text(
              'J',
              style: TextStyle(fontSize: 28, color: Colors.red[700]),
            ),
          ),

          Column(
            children: [
              Text('Juan Alvarenga'),
              Text('Ganaste un super premio!!'),
              Text('Envia tus datos de tarjeta pareclamarlo....'),
            ],
          ),

          Column(
            children: [
              Text('17:00'),
              Icon(Icons.star_border_outlined, color: Colors.grey[600]),
            ],
          ),
        ],
      ),
    );
  }
}
