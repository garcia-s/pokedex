import 'package:flutter/material.dart';
import 'package:pokedex/dashboard_screen.dart';
import 'package:pokedex/estado.dart';
import 'package:pokedex/login_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<EstadoRegistrado>(
      create: (_) => EstadoRegistrado(),
      child: MaterialApp(
        routes: {"/": (_) => const RouterMainScreen()},
      ),
    );
  }
}

class RouterMainScreen extends StatelessWidget {
  const RouterMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    EstadoRegistrado estado = Provider.of<EstadoRegistrado>(context);
    if (estado.estaIngresado) {
      return const DashboardScreen();
    } else {
      return const LoginScreen();
    }
  }
}
