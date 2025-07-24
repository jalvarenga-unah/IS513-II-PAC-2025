import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gmail_clone/controllers/chat_controller.dart';

class ChatPage extends StatelessWidget {
  ChatPage({super.key});

  // final productoProvider = ProductoProvider();
  final chatController = Get.put(ChatController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (chatController.loadingProducts.value) {
        return Center(child: CircularProgressIndicator());
      }

      if (chatController.hasError.value) {
        return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.cloud_off_outlined, size: 80, color: Colors.black38),
              Text('Algo salio mal :(', style: TextStyle(fontSize: 24)),
              SizedBox(height: 12),
              ElevatedButton(
                onPressed: () {
                  chatController.fetchData();
                },
                child: Text('refrescar'),
              ),
            ],
          ),
        );
      }

      return ListView.builder(
        itemCount: chatController.listaProductos.length,
        itemBuilder: (context, index) {
          final producto = chatController.listaProductos[index];

          return ListTile(
            leading:
                producto.image == null
                    ? CircleAvatar(child: Text(producto.title[0]))
                    : Image.network(producto.image!),
            title: Text(producto.title),
            subtitle: Text(producto.description),
            onTap: () {
              // Aquí puedes manejar la acción al tocar el elemento
              // producto.rating.count;
            },
          );
        },
      );
    });

    // FutureBuilder(
    //   future: productoProvider.getProductosByCategory("men's clothing"),
    //   builder: (BuildContext context, AsyncSnapshot<List<Producto>> snapshot) {
    //     // preguntar el estado del Future
    //     //dibujar un icono de carga
    //     //dibujar un icono de error (si hace falta)

    //     if (snapshot.connectionState == ConnectionState.waiting) {
    //       return Center(child: CircularProgressIndicator());
    //     }

    //     if (snapshot.hasError) {
    //       //Widget personalizado de error
    //       return Center(child: Text('Error: ${snapshot.error}'));
    //     }

    //     if (!snapshot.hasData || snapshot.data!.isEmpty) {
    //       return Center(child: Text('No hay datos disponibles'));
    //     }

    //     final listaProductos = snapshot.data!;

    //     // dibujar la lista con los productos
    // return ListView.builder(
    //   itemCount: listaProductos.length,
    //   itemBuilder: (context, index) {
    //     final producto = listaProductos[index];

    //     return ListTile(
    //       leading:
    //           producto.image == null
    //               ? CircleAvatar(child: Text(producto.title[0]))
    //               : Image.network(producto.image!),
    //       title: Text(producto.title),
    //       subtitle: Text(producto.description),
    //       onTap: () {
    //         // Aquí puedes manejar la acción al tocar el elemento
    //         // producto.rating.count;
    //       },
    //     );
    //       },
    //     );
    //   },
    // );
  }
}
