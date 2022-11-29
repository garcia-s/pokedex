import 'package:flutter/material.dart';
import 'package:pokedex/miboton.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Esta es una barra'),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            color: const Color.fromARGB(255, 170, 51, 43),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: const [
                      MiBoton(color: Colors.red, icono: Icons.add_reaction_outlined,),
                      MiBoton(color: Colors.green, icono: Icons.abc),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: const [
                      MiBoton(color: Colors.blue, icono: Icons.abc_outlined),
                      MiBoton(color: Colors.pink, icono: Icons.abc_rounded),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

