// el punto de entrada de nuestra aplicación
void main() {
  // esto no tiene ningun efecto en la compialción

  // Variables
  String nombre = 'Juan';
  int edad = 31;

  nombre = 'Enrique';

  var apellido = 'Alvarenga';
  // apellido = 40; //❌ luego de la asignación, no se puede cambiar el tipo de dato

  // permite la asignación de un valor una sola vez
  final String? direccion;
  direccion = 'Calle 456';
  // direccion = null;

  // una variable inmutable
  const String ciudad = 'San Pedro Sula';
  // ciudad = 'Tegucigalpa'; //❌ no se puede cambiar el valor de una constante

  print(nombre);
  print(apellido);
  print(edad);

  // Nullable Operator
  String? apoodo = 'El Chino';
  apoodo = null;
  print(apoodo);
}
