void main() {
  // tipos de datos, que son instancias

  // final List<int> numeros = [1,2,3,4,5, 'Hola', true, [1,2,3] ]; // ❌ No es válido
  final List<int> numeros = [1, 2, 3, 4, 5]; // Lista
  final List<String> postres = [
    'Tarta',
    'Helado',
    'Galleta',
  ]; // Lista de String

  postres.insert(postres.length - 2, 'cheesecake');
  print(postres);

  numeros.add(10); // agrega un valor al final de la lista
  numeros.insert(3, 100); // agrega un valor al final de la lista

  print(numeros.length);
  print(numeros);
  print(numeros[3]);
}
