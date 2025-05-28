void main() {
  final numeros = [1, 2, 3, 4, 5];

  // for (int a = 0; a < numeros.length; a++) {
  //   print(numeros[a]);
  // }

  for (final valor in numeros) {
    print(valor);
  }

  final postres = ['flan', 'tarta', 'helado'];

  //callback
  postres.forEach((postre) {
    print(postre);
  });
}
