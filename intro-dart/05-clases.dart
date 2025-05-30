import 'Persona.dart' show Persona;

void main() {
  final String nombre;

  final juan = Persona(nombre: "Juan", edad: 31, altura: 1.60);
  final pedro = Persona.dniObligatorio("Pedro", 23, "1234");

  final maria = Persona.fromJsonMap({
    "nombre": "Maria",
    "edad": 25,
    "altura": 1.70,
  });

  print(pedro.dni);
  //establecer un DNI
  try {
    juan.dni = "3123123123123"; // setter
  } catch (e) {
    print("Error al establecer el DNI: $e");
  }

  print(juan.nombre);
  print(juan.edad);
  print(juan.altura);
  print(juan.dni); // hace uso del getter
}
