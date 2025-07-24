import 'package:get/get.dart';
import 'package:gmail_clone/models/producto.dart';
import 'package:gmail_clone/providers/producto_provider.dart';

class ChatController extends GetxController {
  final loadingProducts = false.obs;
  final hasError = false.obs;
  final _listaProductos = <Producto>[].obs;
  final productoProvider = ProductoProvider();
  // ciclo de vida del estado

  @override
  void onInit() async {
    super.onInit();
    await fetchData();
  }

  Future<void> fetchData() async {
    loadingProducts.value = true;
    hasError.value = false;
    // se ejecuta una vez, al crearse la instancia de el controlador
    try {
      listaProductos = await productoProvider.getProductos();
    } catch (e) {
      hasError.value = true;
    }
    loadingProducts.value = false;
  }

  //getters y setters
  set listaProductos(List<Producto> lista) {
    _listaProductos.value = lista;
  }

  List<Producto> get listaProductos => _listaProductos;
}
