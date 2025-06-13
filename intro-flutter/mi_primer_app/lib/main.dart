import 'package:flutter/material.dart';
import 'package:mi_primer_app/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //retornar el Widget "Padre"
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      // la pantalla princial
      home: HomePage(),
    );
  }
}
