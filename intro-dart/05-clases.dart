import 'Persona.dart' show Persona;

void main() {
  final String nombre;

  final juan = Persona(nombre: "Juan", edad: 31, altura: 1.60);

  print(juan.nombre);
  print(juan.edad);
  print(juan.altura);
}
