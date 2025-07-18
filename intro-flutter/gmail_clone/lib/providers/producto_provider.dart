import 'dart:convert' show json;

import 'package:gmail_clone/models/producto.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' show Response;

class ProductoProvider {
  // Future<List<Map<String, dynamic>>> getProductos() async {
  //   // get: es el verbo (método) http, para consumir un recurso

  //   // 'https://fakestoreapi.com/products'
  //   // final url = Uri(
  //   //   scheme: 'https',
  //   //   host: 'fakestoreapi.com',
  //   //   path: 'products', // endpoint
  //   // );

  //   // final url = Uri.https('fakestoreapi.com', 'products');

  //   // await Future.delayed(const Duration(seconds: 2));
  //   // TODO: manejar errores
  //   final url = Uri.parse('https://fakestoreapi.com/products');

  //   final Response response = await http.get(url);

  //   //TODO: crear un modelo de productos
  //   // transforma el objeto a una lista de un tipo de dato en especifico
  //   final productos = List<Map<String, dynamic>>.from(
  //     json.decode(response.body), // transforma el string a un objeto
  //   );

  //   return productos;
  // }

  Future<List<Producto>> getProductos() async {
    // get: es el verbo (método) http, para consumir un recurso

    // 'https://fakestoreapi.com/products'
    // final url = Uri(
    //   scheme: 'https',
    //   host: 'fakestoreapi.com',
    //   path: 'products', // endpoint
    // );

    // final url = Uri.https('fakestoreapi.com', 'products');

    // await Future.delayed(const Duration(seconds: 2));
    // TODO: manejar errores
    final url = Uri.parse('https://fakestoreapi.com/products');

    final Response response = await http.get(url);

    // transforma el objeto a una lista de un tipo de dato en especifico
    final productos = List<Producto>.from(
      json.decode(response.body).map((producto) => Producto.fromJson(producto)),
    );

    return productos;
  }

  Future<List<Producto>> getProductosByCategory(String category) async {
    // get: es el verbo (método) http, para consumir un recurso

    // 'https://fakestoreapi.com/products'
    // final url = Uri(
    //   scheme: 'https',
    //   host: 'fakestoreapi.com',
    //   path: 'products', // endpoint
    // );

    // final url = Uri.https('fakestoreapi.com', 'products');

    // await Future.delayed(const Duration(seconds: 2));
    // TODO: manejar errores
    final url = Uri.parse('https://fakestoreapi.com/products');

    final Response response = await http.get(url);

    // transforma el objeto a una lista de un tipo de dato en especifico
    final productos = List<Producto>.from(
      json.decode(response.body).map((producto) => Producto.fromJson(producto)),
    );

    return productos
        .where((producto) => producto.category == category)
        .toList();
  }
}
