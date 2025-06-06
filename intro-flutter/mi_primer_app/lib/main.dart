import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //retornar el Widget "Padre"
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Menu',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 30.0,
              color: Colors.indigo[100],
              // color: Color.fromARGB(0, 7, 7, 17),
            ),
          ),
          backgroundColor: Colors.indigo[900],
        ),
        body: Text('Hola mundo'),
      ),
    );
  }
}
