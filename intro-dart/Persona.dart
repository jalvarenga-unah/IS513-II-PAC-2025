class Persona {
  final String nombre;
  final int edad;
  double? altura;
  String? _dni; // Atributo privado

  // Persona(this.nombre, this.edad, this._dni, {this.altura});
  // Persona(this.nombre, this.edad);

  Persona({required this.nombre, required this.edad, this.altura});

  //constructor con nombre
  Persona.dniObligatorio(this.nombre, this.edad, String dni) {
    this.dni = dni; // usa el setter para validar y establecer el DNI
  }

  // constructo factory
  // permite crear una instancia a partir de un mapa
  // requiere de un constructor convencional para retornarlo
  factory Persona.fromJsonMap(Map<String, dynamic> paramteros) {
    return Persona(
      nombre: paramteros['nombre'],
      edad: paramteros['edad'],
      altura: paramteros['altura'],
    );
  }

  //getter y setters

  set dni(String? dni) {
    if (dni == null) {
      throw Exception("El DNI no puede ser nulo");
    }

    if (dni.length != 13) {
      throw Exception("El DNI debe tener 13 caracteres");
    }

    if (dni.contains('-')) {
      throw Exception("El DNI no debe contener guiones");
    }

    this._dni = dni;
  }

  String? get dni {
    if (this._dni!.isEmpty || this._dni == null) return '';

    String dniformateado =
        '${this._dni?.substring(0, 4)}-${this._dni?.substring(5, 9)}-${this._dni?.substring(10, 13)}';
    return dniformateado;
  }

  // void setDni(String dni) {
  //   if (dni.length != 13) {
  //     throw Exception("El DNI debe tener 13 caracteres");
  //   }

  //   if (dni.contains('-')) {
  //     throw Exception("debe ser sin guiones");
  //   }

  //   this._dni = dni;
  // }

  // String getDni() {
  //   return this._dni;
  // }
}
