import 'package:flutter/material.dart';
import 'package:gmail_clone/models/producto.dart';
import 'package:gmail_clone/providers/producto_provider.dart';

class ChatPage extends StatelessWidget {
  ChatPage({super.key});

  final productoProvider = ProductoProvider();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: productoProvider.getProductos(),
      builder: (BuildContext context, AsyncSnapshot<List<Producto>> snapshot) {
        // preguntar el estado del Future
        //dibujar un icono de carga
        //dibujar un icono de error (si hace falta)

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasError) {
          //Widget personalizado de error
          return Center(child: Text('Error: ${snapshot.error}'));
        }

        if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Center(child: Text('No hay datos disponibles'));
        }

        final listaProductos = snapshot.data!;

        // dibujar la lista con los productos
        return ListView.builder(
          itemCount: listaProductos.length,
          itemBuilder: (context, index) {
            final producto = listaProductos[index];

            return ListTile(
              title: Text(producto.title),
              subtitle: Text(producto.description),
              onTap: () {
                // Aquí puedes manejar la acción al tocar el elemento
                // producto.rating.count;
              },
            );
          },
        );
      },
    );
  }
}
