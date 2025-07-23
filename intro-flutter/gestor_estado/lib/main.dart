import 'package:flutter/material.dart';
import 'package:gestor_estado/contador_controller.dart';
import 'package:gestor_estado/segunda_pantalla.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador App',
      // home: HomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        'segunda_pantalla': (context) => SegundaPantalla(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // final contadorController = ContadorController();

  // Inyectar la instancia con un patron Singleton
  final contadorController = Get.put<ContadorController>(ContadorController());

  //contadorController2 apunta a -> contadorController
  // final contadorController2 = Get.put<ContadorController>(ContadorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Material App Bar')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Numero de veces que hizo clic',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30),
            ),
            Obx(
              () => Text(
                '${contadorController.contador.value}',
                style: TextStyle(fontSize: 25),
              ),
            ),

            Obx(
              () => Text(
                '${contadorController.contador2.value}',
                style: TextStyle(fontSize: 25),
              ),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('segunda_pantalla');
              },
              child: Text('Ir a la segunda pantalla'),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Acción del botón flotante
          contadorController.contador.value++;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
