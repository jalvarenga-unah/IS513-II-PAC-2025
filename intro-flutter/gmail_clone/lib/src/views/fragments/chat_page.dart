import 'package:flutter/material.dart';
import 'package:gmail_clone/providers/producto_provider.dart';

class ChatPage extends StatelessWidget {
  ChatPage({super.key});

  final productoProvider = ProductoProvider();

  @override
  Widget build(BuildContext context) {
    productoProvider.getProductos();
    return Container(color: Colors.red);
  }
}
