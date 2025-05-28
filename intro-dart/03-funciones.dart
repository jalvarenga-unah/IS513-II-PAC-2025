void main() {
  saludo("Juan", "Alvarenga");
  saludo("Alvarenga", "Juan");
  saludo2(apellido: "Alvarenga");
  saludo3("Pedro");
  saludo3("Pablo", apellido: "Gomez");
  saludo4("Enrique", "Alvarenga");
  saludo4();
}

//argumentos posicionales
void saludo(String nombre, String apellido) {
  // print("Hola " + nombre + " " + apellido);
  print("Hola ${nombre} $apellido");
}

// argumentos nombrados (con nombre)
void saludo2({String? nombre, required String apellido}) {
  // print("Hola " + nombre + " " + apellido);
  print("Hola ${nombre ?? ''} $apellido");
}

void saludo3(String nombre, {String? apellido}) {
  print("Hola $nombre ${apellido ?? ''}");
}

void saludo4([String nombre = 'sin nombre', String? apellido]) {
  print("Hola ${nombre} ${apellido ?? ''}");
}
