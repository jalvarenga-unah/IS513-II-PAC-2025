import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';
import 'package:gmail_clone/src/views/home_page.dart';
import 'package:gmail_clone/src/views/login_page.dart';
import 'package:gmail_clone/src/views/perfil_page.dart';
import 'package:go_router/go_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //bloquear la orientación del dispositivo
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await GetStorage.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GoRouter(
        redirect: (BuildContext context, GoRouterState state) {
          final isLoggedIn = GetStorage().read('isLoggedIn') ?? false;

          if (!isLoggedIn) {
            GetStorage().erase(); // borra todos los datos del alamcenamiento
            GetStorage().remove(
              'user',
            ); // borra los datos de la clave proporcionada

            // GetStorage().listenKey('isLoggedIn', (newValue) {
            //   // redirect al login
            // });
            // Si no está logueado, redirigir a la página de login
            return '/login';
          }

          return null;
        },
        initialLocation: '/home/juan',
        routes: [
          GoRoute(
            name: 'home',
            path: '/home/:user',
            builder: (context, state) {
              print(state.pathParameters);

              String user = state.pathParameters['user']!;
              // bool esMayor = state.extra! as bool;

              // final extra = state.extra as Map;

              return HomePage(user: user);
            },
            //rutas hijas de "/home"
          ),
          GoRoute(
            name: 'perfil',
            path: '/perfil', // /home/perfil
            builder: (context, state) {
              return const PerfilPage();
            },
          ),
          GoRoute(
            name: 'login',
            path: '/login',
            builder: (context, state) => LoginPage(),
          ),
        ],
      ),
      title: 'Gmail Clone',

      // home: HomePage()
    );
  }
}
