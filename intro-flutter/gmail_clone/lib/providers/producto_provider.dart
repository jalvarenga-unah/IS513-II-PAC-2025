import 'dart:convert' show json;

import 'package:http/http.dart' as http;

class ProductoProvider {
  Future<List<Map<String, dynamic>>> getProductos() async {
    // get: es el verbo (método) http, para consumir un recurso

    // 'https://fakestoreapi.com/products'
    // final url = Uri(
    //   scheme: 'https',
    //   host: 'fakestoreapi.com',
    //   path: 'products', // endpoint
    // );

    // final url = Uri.https('fakestoreapi.com', 'products');

    // TODO: manejar errores
    final url = Uri.parse('https://fakestoreapi.com/products');

    final response = await http.get(url);

    //TODO: crear un modelo de productos
    // transforma el objeto a una lista de un tipo de dato en especifico
    final productos = List<Map<String, dynamic>>.from(
      json.decode(response.body), // transforma el string a un objeto
    );

    return productos;
  }
}
