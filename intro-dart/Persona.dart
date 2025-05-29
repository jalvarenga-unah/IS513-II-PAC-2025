class Persona {
  final String nombre;
  final int edad;
  double? altura;
  final String _dni; // Atributo privado

  // Persona(this.nombre, this.edad, this._dni, {this.altura});
  // Persona(this.nombre, this.edad);

  Persona({required this.nombre, required this.edad, this.altura});

  //getter y setters
}
