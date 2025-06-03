void main() async {
  //? Future: es una tarea asincrona, que se resolverá en el "Futuro"
  //? Estados de un Future: Pendiente, Completados/Finalizados, Rechazados/Error
  //? Formas para resolverlo: de forma asincrona y de forma sincrona

  // print(perdirBaleada()); // se ejecutó la función

  print('Inicio del Future');
  //* resolver de forma asincrona
  // perdirBaleada()
  //     .then((resultado) {
  //       print('Future, compeltado');
  //       print(resultado);
  //     })
  //     .catchError((error) {
  //       print(error);
  //     });

  //* de forma sincrona

  // se ejecuta en el hilo principal
  // pausa la ejecución del programa
  try {
    final resultado = await perdirBaleada();
    print(resultado);
  } catch (e) {}

  print('Fin del Future');
}

//async: convierte mi función, en un Future
Future<String?> perdirBaleada() async {
  // Future.error("No hay baleadas");
  print('Ya pedí la baleada');
  print('iniciando preparación');

  // es para fines de testing, no tiene uso practico
  await Future.delayed(Duration(seconds: 3));

  Future.error('no hay!!');

  print('Baleada lista');
  return 'Mi Baleada';
}
