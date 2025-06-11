import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //retornar el Widget "Padre"
    return MaterialApp(
      // la pantalla princial
      home: Scaffold(
        appBar: AppBar(
          // centerTitle: false,
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'Cantidad de veces que hizo clic',
                style: TextStyle(fontSize: 40),
                textAlign: TextAlign.center,
              ),

              Text('1', style: TextStyle(fontSize: 30)),
            ],
          ),
        ),

        //? floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.indigo,
          child: Icon(Icons.plus_one, color: Colors.white),
          onPressed: () {
            print('Hizo clic');
          },
        ),
      ),
    );
  }
}
