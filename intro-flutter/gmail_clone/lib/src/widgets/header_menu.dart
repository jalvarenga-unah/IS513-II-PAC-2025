import 'package:flutter/material.dart';

class HeaderMenu extends StatelessWidget {
  const HeaderMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Colors.red[50],
            radius: 30,
            child: Text(
              'J',
              style: TextStyle(fontSize: 28, color: Colors.red[700]),
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Gmail',
            style: TextStyle(
              color: Colors.red[700],
              fontSize: 24,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
