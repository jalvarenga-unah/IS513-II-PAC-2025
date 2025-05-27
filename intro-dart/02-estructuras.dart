void main() {
  // tipos de datos, que son instancias

  // final List<int> numeros = [1,2,3,4,5, 'Hola', true, [1,2,3] ]; // ❌ No es válido
  final List<int> numeros = [1, 2, 3, 4, 5]; // Lista
  final List<String> postres = [
    'Tarta',
    'Helado',
    'Galleta',
  ]; // Lista de String

  // * IMPORTANTE: Para que sea el penultimo elemento,
  // * se debe agregar el valor al final de la lista y
  // * restar solo un elemento, ya que insert desplaza los elementos
  postres.insert(postres.length - 1, 'cheesecake');
  print(postres);

  numeros.add(10); // agrega un valor al final de la lista
  numeros.insert(3, 100); // agrega un valor al final de la lista

  print(numeros.length);
  print(numeros);
  print(numeros[3]);

  // Los Objetos / Mapas

  // clave => valor
  final Map<String, dynamic> mascota = {'nombre': 'Apolo', 'edad': 3};

  print(mascota['nombre']);
  print(mascota['edad']);
  mascota['Edad'] = 'Tres';
  print(mascota['Edad']);
  mascota.remove('Edad'); // elimina la clave y el valor asociado

  // print(mascota[5]);
  print(mascota);

  final Map<String, dynamic> producto = {
    "id": 1,
    "title": "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
    "price": 109.95,
    "description":
        "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
    "category": "men's clothing",
    "image": "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
    "rating": {
      "rate": 3.9,
      "count": 120,
      "comments": [
        {"id": 1, "comment": "Great backpack for everyday use!"},
      ],
    },
  };

  final Map<String, dynamic> rating = producto["rating"];
  print(rating["count"]);
  print(rating["comments"][0]["comment"]);

  final Map<String, dynamic> user = {
    "id": 2,
    "name": "Ervin Howell",
    "username": "Antonette",
    "email": "Shanna@melissa.tv",
    "address": {
      "street": "Victor Plains",
      "suite": "Suite 879",
      "city": "Wisokyburgh",
      "zipcode": "90566-7771",
      "geo": {"lat": "-43.9509", "lng": "-34.4618"},
    },
    "phone": "010-692-6593 x09125",
    "website": "anastasia.net",
    "company": {
      "name": "Deckow-Crist",
      "catchPhrase": "Proactive didactic contingency",
      "bs": "synergize scalable supply-chains",
    },
  };

  print(user['address']['geo']['lat']);
}
