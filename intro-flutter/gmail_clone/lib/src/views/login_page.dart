import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Page')),
      body: Center(
        child: ElevatedButton(
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
    );
  }
}
