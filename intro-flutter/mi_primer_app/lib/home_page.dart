import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  // un constructor no puede ser const,
  // si la clase tiene propiedades y no se
  // están inicializando desde el propio consturctor
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int contador = 1;

  int contador2 = 0;

  @override
  Widget build(BuildContext context) {
    sumar; // no está ejecutando, solo está llamdo a la referencia de la función

    return Scaffold(
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
            Image(
              image: AssetImage('./assets/logo-unah.png'),
              fit: BoxFit.fitWidth,
            ),

            // Image.asset('./assets/logo-unah.png'),
            Image.network(
              'https://enter504.com/wp-content/uploads/2024/09/Unah-cortes-enter504.jpg',
            ),

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
              // notifica al Widget que el estado cambió y se debe
              // reconstruir la interfaz de usuario
              setState(() {});

              restar();
            },
            child: Icon(Icons.repeat_one_outlined, color: Colors.white),
          ),

          const SizedBox(width: 16),
          FloatingActionButton(
            backgroundColor: Colors.indigo,
            onPressed: () {
              sumar();
              // notificar al estado que se debe reconstruir
              setState(() {});
            },
            child: Icon(Icons.plus_one, color: Colors.white),
          ),
        ],
      ),
    );
  }

  void sumar() {
    contador++;

    if (contador % 2 == 0) {
      contador2++;
    }
  }

  void restar() {
    if (contador == 0) return;

    contador = contador - 1;
  }
}
