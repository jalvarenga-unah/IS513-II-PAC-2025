import 'dart:nativewrappers/_internal/vm/lib/math_patch.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int contador = 1;
  int contador2 = 0;

  @override
  Widget build(BuildContext context) {
    //retornar el Widget "Padre"
    return MaterialApp(
      // la pantalla princial
      home: Scaffold(
        appBar: AppBar(
          // centerTitle: false,
          title: Text(
            'Mi primer App',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 30.0,
              color: Colors.indigo[100],
              // color: Color.fromARGB(0, 7, 7, 17),
            ),
          ),
          backgroundColor: Colors.indigo[900],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'Cantidad de veces que hizo clic',
                style: TextStyle(fontSize: (contador * 1.0)),
                textAlign: TextAlign.center,
              ),

              Text('$contador', style: TextStyle(fontSize: 30)),
              Text('$contador2', style: TextStyle(fontSize: 30)),
            ],
          ),
        ),

        //? floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
        floatingActionButton: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.red,
              onPressed: () {
                //hago algo mas
                restar();
              },
              child: Icon(Icons.repeat_one_outlined, color: Colors.white),
            ),
            SizedBox(width: 16),
            FloatingActionButton(
              backgroundColor: Colors.indigo,
              onPressed: sumar,
              child: Icon(Icons.plus_one, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  void sumar() {
    // notifica al Widget que el estado cambió y se debe
    // reconstruir la interfaz de usuario
    setState(() {});
    contador++;

    if (contador % 2 == 0) {
      contador2++;
    }
  }

  void restar() {
    // notifica al Widget que el estado cambió y se debe
    // reconstruir la interfaz de usuario
    setState(() {});
    contador--;
  }
}
