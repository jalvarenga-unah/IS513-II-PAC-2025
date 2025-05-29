void main() {
  final numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

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

  final filtrados =
      numeros.where((num) {
        // if (num % 2 == 0) return true;

        // return false;
        return num % 2 == 0;
      }).toList();

  print(filtrados);

  final condicionEvery = numeros.every((num) {
    // if (num % 2 == 0) return true;

    // return false;
    return num % 2 == 0;
  });

  final condicionAny = numeros.any((num) {
    // if (num % 2 == 0) return true;

    // return false;
    return num % 2 == 0;
  });

  print(condicionEvery);
  print(condicionAny);

  final evaluacionContains = numeros.contains(5);

  print(evaluacionContains);
}
