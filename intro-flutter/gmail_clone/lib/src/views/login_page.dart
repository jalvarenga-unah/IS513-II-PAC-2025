import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Bienvenido a mi App',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
              ),
              Text(
                'Clone de Gmail',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
              Text(
                'Lenguajes de Programación',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),

              SizedBox(height: 50),

              TextField(
                // maxLength: 3,
                // maxLines: 4,
                // obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  contentPadding: EdgeInsets.all(22),
                  // labelText: 'Holaaa',
                  label: Text('Ingrese su correo'),
                  hintText: 'Ingrese su correo',
                  prefixIcon: Icon(Icons.email_outlined),
                  // error: Text('El correo es obligatorio'),
                  // prefix: Icon(Icons.email_outlined),
                  // suffixIcon: Icon(Icons.email_outlined),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  contentPadding: EdgeInsets.all(22),
                  // labelText: 'Holaaa',
                  label: Text('Ingrese su contraseña'),
                  hintText: 'Ingrese su contraseña',
                  prefixIcon: Icon(Icons.password_rounded),
                  // error: Text('El correo es obligatorio'),
                  // prefix: Icon(Icons.email_outlined),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.remove_red_eye),
                    onPressed: () {},
                  ),
                ),
              ),
              Spacer(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.grey[200],
                    padding: EdgeInsets.all(16),
                  ),
                  onPressed: () {
                    //? Navega a la ruta indicada, apliando
                    //? en un stack de navegación
                    // context.go('/home');

                    // context.push('/home');

                    context.goNamed('home');
                    // context.replaceNamed('home');

                    //? Reemplaza la ruta actual por la indicada
                    // context.replace('/home');
                  },
                  child: const Text('Iniciar Sesión'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
