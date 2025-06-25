import 'package:flutter/material.dart';

class ItemEmail extends StatelessWidget {
  const ItemEmail({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final oritenation = MediaQuery.of(context).orientation;

    return Container(
      constraints: BoxConstraints(
        maxHeight:
            size.height * (oritenation == Orientation.portrait ? 0.1 : 0.2),
      ),
      // color: Colors.green,
      margin: EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          CircleAvatar(
            backgroundColor: Colors.red[50],
            radius: 30,
            child: Text(
              'J',
              style: TextStyle(fontSize: 28, color: Colors.red[700]),
            ),
          ),
          SizedBox(width: 12),
          Column(
            // mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Juan Alvarenga',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                'Ganaste un super premio!!',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              Text(
                'Envia tus datos de tarjeta pareclamarlo....',
                style: TextStyle(color: Colors.grey[700]),
              ),
            ],
          ),
          SizedBox(width: 12),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
