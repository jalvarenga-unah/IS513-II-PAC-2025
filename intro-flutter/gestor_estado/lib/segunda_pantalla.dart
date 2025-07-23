import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'contador_controller.dart';

class SegundaPantalla extends StatelessWidget {
  SegundaPantalla({super.key});

  // se crea una nueva referencia en memoria
  // final contadorController = ContadorController();

  final contadorController = Get.find<ContadorController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Segunda pantalla')),
      body: Center(
        child: Obx(
          () => Text(
            '${contadorController.contador2.value}',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Acción del botón flotante
          contadorController.contador2.value++;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
